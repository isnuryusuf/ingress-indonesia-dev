package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Keys;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ShaderProgram
  implements Disposable
{
  public static final String BINORMAL_ATTRIBUTE = "a_binormal";
  public static final String COLOR_ATTRIBUTE = "a_color";
  public static final String NORMAL_ATTRIBUTE = "a_normal";
  public static final String POSITION_ATTRIBUTE = "a_position";
  public static final String TANGENT_ATTRIBUTE = "a_tangent";
  public static final String TEXCOORD_ATTRIBUTE = "a_texCoord";
  public static boolean pedantic = true;
  private static final ObjectMap<Application, List<ShaderProgram>> shaders = new ObjectMap();
  private String[] attributeNames;
  private final ObjectIntMap<String> attributeTypes = new ObjectIntMap();
  private final ObjectIntMap<String> attributes = new ObjectIntMap();
  private ByteBuffer buffer = null;
  private FloatBuffer floatBuffer = null;
  private int fragmentShaderHandle;
  private final String fragmentShaderSource;
  private IntBuffer intBuffer = null;
  private boolean invalidated;
  private boolean isCompiled;
  private String log = "";
  protected final FloatBuffer matrix;
  IntBuffer params = BufferUtils.newIntBuffer(1);
  private int program;
  private int refCount = 0;
  IntBuffer type = BufferUtils.newIntBuffer(1);
  private final ObjectMap<String, ShaderProgram.Uniform> uniformHandles = new ObjectMap();
  private String[] uniformNames;
  private int vertexShaderHandle;
  private final String vertexShaderSource;

  public ShaderProgram(FileHandle paramFileHandle1, FileHandle paramFileHandle2)
  {
    this(paramFileHandle1.readString(), paramFileHandle2.readString());
  }

  public ShaderProgram(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("vertex shader must not be null");
    if (paramString2 == null)
      throw new IllegalArgumentException("fragment shader must not be null");
    this.vertexShaderSource = paramString1;
    this.fragmentShaderSource = paramString2;
    this.matrix = BufferUtils.newFloatBuffer(16);
    compileShaders(paramString1, paramString2);
    if (isCompiled())
    {
      fetchAttributes();
      fetchUniforms();
      addManagedShader(Gdx.app, this);
    }
  }

  private static void addManagedShader(Application paramApplication, ShaderProgram paramShaderProgram)
  {
    Object localObject = (List)shaders.get(paramApplication);
    if (localObject == null)
      localObject = new ArrayList();
    ((List)localObject).add(paramShaderProgram);
    shaders.put(paramApplication, localObject);
  }

  private void checkManaged()
  {
    if (this.invalidated)
    {
      compileShaders(this.vertexShaderSource, this.fragmentShaderSource);
      this.invalidated = false;
    }
  }

  public static void clearAllShaderPrograms(Application paramApplication)
  {
    shaders.remove(paramApplication);
  }

  private void compileShaders(String paramString1, String paramString2)
  {
    this.isCompiled = false;
    this.vertexShaderHandle = loadShader(35633, paramString1);
    this.fragmentShaderHandle = loadShader(35632, paramString2);
    if ((this.vertexShaderHandle == -1) || (this.fragmentShaderHandle == -1))
      return;
    this.program = linkProgram();
    if (this.program == -1)
    {
      this.log += Gdx.gl20.glGetProgramInfoLog(this.program);
      return;
    }
    this.isCompiled = true;
  }

  private void ensureBufferCapacity(int paramInt)
  {
    if ((this.buffer == null) || (this.buffer.capacity() != paramInt))
    {
      this.buffer = BufferUtils.newByteBuffer(paramInt);
      this.floatBuffer = this.buffer.asFloatBuffer();
      this.intBuffer = this.buffer.asIntBuffer();
    }
  }

  private void fetchAttributes()
  {
    this.params.clear();
    Gdx.gl20.glGetProgramiv(this.program, 35721, this.params);
    int i = this.params.get(0);
    this.attributeNames = new String[i];
    for (int j = 0; j < i; j++)
    {
      this.params.clear();
      this.params.put(0, 256);
      this.type.clear();
      String str = Gdx.gl20.glGetActiveAttrib(this.program, j, this.params, this.type);
      int k = Gdx.gl20.glGetAttribLocation(this.program, str);
      this.attributes.put(str, k);
      this.attributeTypes.put(str, this.type.get(0));
      this.attributeNames[j] = str;
    }
  }

  private void fetchUniforms()
  {
    this.params.clear();
    Gdx.gl20.glGetProgramiv(this.program, 35718, this.params);
    int i = this.params.get(0);
    this.uniformNames = new String[i];
    for (int j = 0; j < i; j++)
    {
      this.params.clear();
      this.params.put(0, 256);
      this.type.clear();
      String str = Gdx.gl20.glGetActiveUniform(this.program, j, this.params, this.type);
      this.uniformNames[j] = str;
      ShaderProgram.Uniform localUniform = (ShaderProgram.Uniform)this.uniformHandles.get(str);
      if (localUniform == null)
      {
        localUniform = new ShaderProgram.Uniform(this, str, this.type.get(0));
        this.uniformHandles.put(str, localUniform);
      }
      localUniform.fetchLocation(this.program);
    }
  }

  public static String getManagedStatus()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Managed shaders/app: { ");
    Iterator localIterator = shaders.keys().iterator();
    while (localIterator.hasNext())
    {
      Application localApplication = (Application)localIterator.next();
      localStringBuilder.append(((List)shaders.get(localApplication)).size());
      localStringBuilder.append(" ");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private int getUniformLocationOrThrow(String paramString)
  {
    ShaderProgram.Uniform localUniform = (ShaderProgram.Uniform)this.uniformHandles.get(paramString);
    if ((pedantic) && (localUniform == null))
      throw new IllegalArgumentException("Unknown uniform in shader program: " + paramString);
    if (localUniform != null)
      return localUniform.getLocation();
    return -1;
  }

  private void invalidate()
  {
    this.invalidated = true;
    checkManaged();
  }

  public static void invalidateAllShaderPrograms(Application paramApplication)
  {
    if (Gdx.graphics.getGL20() == null);
    while (true)
    {
      return;
      List localList = (List)shaders.get(paramApplication);
      if (localList != null)
        for (int i = 0; i < localList.size(); i++)
          ((ShaderProgram)localList.get(i)).invalidate();
    }
  }

  private int linkProgram()
  {
    GL20 localGL20 = Gdx.graphics.getGL20();
    int i = localGL20.glCreateProgram();
    if (i == 0)
      return -1;
    localGL20.glAttachShader(i, this.vertexShaderHandle);
    localGL20.glAttachShader(i, this.fragmentShaderHandle);
    localGL20.glLinkProgram(i);
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(4);
    localByteBuffer.order(ByteOrder.nativeOrder());
    IntBuffer localIntBuffer = localByteBuffer.asIntBuffer();
    localGL20.glGetProgramiv(i, 35714, localIntBuffer);
    if (localIntBuffer.get(0) == 0)
    {
      this.log = Gdx.gl20.glGetProgramInfoLog(i);
      return -1;
    }
    return i;
  }

  private int loadShader(int paramInt, String paramString)
  {
    GL20 localGL20 = Gdx.graphics.getGL20();
    IntBuffer localIntBuffer = BufferUtils.newIntBuffer(1);
    int i = localGL20.glCreateShader(paramInt);
    if (i == 0)
      return -1;
    localGL20.glShaderSource(i, paramString);
    localGL20.glCompileShader(i);
    localGL20.glGetShaderiv(i, 35713, localIntBuffer);
    if (localIntBuffer.get(0) == 0)
    {
      String str = localGL20.glGetShaderInfoLog(i);
      this.log += str;
      return -1;
    }
    return i;
  }

  public final void begin()
  {
    checkManaged();
    Gdx.gl20.glUseProgram(this.program);
  }

  public final void disableVertexAttribute(String paramString)
  {
    checkManaged();
    int i = getAttributeLocation(paramString);
    if (i == -1)
      return;
    Gdx.gl20.glDisableVertexAttribArray(i);
  }

  public final void dispose()
  {
    GL20 localGL20 = Gdx.graphics.getGL20();
    localGL20.glUseProgram(0);
    localGL20.glDeleteShader(this.vertexShaderHandle);
    localGL20.glDeleteShader(this.fragmentShaderHandle);
    localGL20.glDeleteProgram(this.program);
    if (shaders.get(Gdx.app) != null)
      ((List)shaders.get(Gdx.app)).remove(this);
  }

  public final void enableVertexAttribute(String paramString)
  {
    checkManaged();
    int i = getAttributeLocation(paramString);
    if (i == -1)
      return;
    Gdx.gl20.glEnableVertexAttribArray(i);
  }

  public final void end()
  {
    Gdx.gl20.glUseProgram(0);
  }

  public final int getAttributeLocation(String paramString)
  {
    int i = this.attributes.get(paramString, -1);
    if (i == -1)
      return -1;
    return i;
  }

  public final int getAttributeType(String paramString)
  {
    int i = this.attributeTypes.get(paramString, -1);
    if (i == -1)
      i = 0;
    return i;
  }

  public final String[] getAttributes()
  {
    return this.attributeNames;
  }

  public final String getLog()
  {
    return this.log;
  }

  public final ShaderProgram.Uniform getUniformHandle(String paramString)
  {
    ShaderProgram.Uniform localUniform = (ShaderProgram.Uniform)this.uniformHandles.get(paramString);
    if ((pedantic) && (localUniform == null))
      throw new IllegalArgumentException("Unknown uniform in shader program: " + paramString);
    return localUniform;
  }

  public final int getUniformLocation(String paramString)
  {
    ShaderProgram.Uniform localUniform = (ShaderProgram.Uniform)this.uniformHandles.get(paramString);
    if (localUniform != null)
      return localUniform.getLocation();
    return -1;
  }

  public final int getUniformType(String paramString)
  {
    ShaderProgram.Uniform localUniform = (ShaderProgram.Uniform)this.uniformHandles.get(paramString);
    if (localUniform != null)
      return localUniform.getType();
    return -1;
  }

  public final String[] getUniforms()
  {
    return this.uniformNames;
  }

  public final boolean hasAttribute(String paramString)
  {
    return this.attributes.containsKey(paramString);
  }

  public final boolean hasUniform(String paramString)
  {
    return this.uniformHandles.containsKey(paramString);
  }

  public final boolean isCompiled()
  {
    return this.isCompiled;
  }

  public final void setAttributef(String paramString, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = getAttributeLocation(paramString);
    Gdx.gl20.glVertexAttrib4f(i, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final boolean setOptUniform1fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform1fv(i, paramInt2, this.floatBuffer);
    return true;
  }

  public final boolean setOptUniform2fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform2fv(i, paramInt2 / 2, this.floatBuffer);
    return true;
  }

  public final boolean setOptUniform3fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform3fv(i, paramInt2 / 3, this.floatBuffer);
    return true;
  }

  public final boolean setOptUniform4fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform4fv(i, paramInt2 / 4, this.floatBuffer);
    return true;
  }

  public final boolean setOptUniformMatrix(String paramString, Matrix3 paramMatrix3)
  {
    return setOptUniformMatrix(paramString, paramMatrix3, false);
  }

  public final boolean setOptUniformMatrix(String paramString, Matrix3 paramMatrix3, boolean paramBoolean)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    float[] arrayOfFloat = paramMatrix3.getValues();
    this.matrix.clear();
    BufferUtils.copy(arrayOfFloat, this.matrix, arrayOfFloat.length, 0);
    Gdx.gl20.glUniformMatrix3fv(i, 1, paramBoolean, this.matrix);
    return true;
  }

  public final boolean setOptUniformMatrix(String paramString, Matrix4 paramMatrix4)
  {
    return setOptUniformMatrix(paramString, paramMatrix4, false);
  }

  public final boolean setOptUniformMatrix(String paramString, Matrix4 paramMatrix4, boolean paramBoolean)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    this.matrix.clear();
    BufferUtils.copy(paramMatrix4.val, this.matrix, paramMatrix4.val.length, 0);
    Gdx.gl20.glUniformMatrix4fv(i, 1, paramBoolean, this.matrix);
    return true;
  }

  public final boolean setOptUniformf(String paramString, float paramFloat)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform1f(i, paramFloat);
    return true;
  }

  public final boolean setOptUniformf(String paramString, float paramFloat1, float paramFloat2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform2f(i, paramFloat1, paramFloat2);
    return true;
  }

  public final boolean setOptUniformf(String paramString, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform3f(i, paramFloat1, paramFloat2, paramFloat3);
    return true;
  }

  public final boolean setOptUniformf(String paramString, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform4f(i, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    return true;
  }

  public final boolean setOptUniformf(String paramString, Color paramColor)
  {
    return setOptUniformf(paramString, paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }

  public final boolean setOptUniformf(String paramString, Vector2 paramVector2)
  {
    return setOptUniformf(paramString, paramVector2.x, paramVector2.y);
  }

  public final boolean setOptUniformf(String paramString, Vector3 paramVector3)
  {
    return setOptUniformf(paramString, paramVector3.x, paramVector3.y, paramVector3.z);
  }

  public final boolean setOptUniformi(String paramString, int paramInt)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform1i(i, paramInt);
    return true;
  }

  public final boolean setOptUniformi(String paramString, int paramInt1, int paramInt2)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform2i(i, paramInt1, paramInt2);
    return true;
  }

  public final boolean setOptUniformi(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform3i(i, paramInt1, paramInt2, paramInt3);
    return true;
  }

  public final boolean setOptUniformi(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getUniformLocation(paramString);
    if (i == -1)
      return false;
    Gdx.gl20.glUniform4i(i, paramInt1, paramInt2, paramInt3, paramInt4);
    return true;
  }

  public final void setUniform1fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocationOrThrow(paramString);
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform1fv(i, paramInt2, this.floatBuffer);
  }

  public final void setUniform2fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocationOrThrow(paramString);
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform2fv(i, paramInt2 / 2, this.floatBuffer);
  }

  public final void setUniform3fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocationOrThrow(paramString);
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform3fv(i, paramInt2 / 3, this.floatBuffer);
  }

  public final void setUniform4fv(String paramString, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    int i = getUniformLocationOrThrow(paramString);
    ensureBufferCapacity(paramInt2 << 2);
    this.floatBuffer.clear();
    BufferUtils.copy(paramArrayOfFloat, this.floatBuffer, paramInt2, paramInt1);
    Gdx.gl20.glUniform4fv(i, paramInt2 / 4, this.floatBuffer);
  }

  public final void setUniformMatrix(String paramString, Matrix3 paramMatrix3)
  {
    setUniformMatrix(paramString, paramMatrix3, false);
  }

  public final void setUniformMatrix(String paramString, Matrix3 paramMatrix3, boolean paramBoolean)
  {
    int i = getUniformLocationOrThrow(paramString);
    float[] arrayOfFloat = paramMatrix3.getValues();
    this.matrix.clear();
    BufferUtils.copy(arrayOfFloat, this.matrix, arrayOfFloat.length, 0);
    Gdx.gl20.glUniformMatrix3fv(i, 1, paramBoolean, this.matrix);
  }

  public final void setUniformMatrix(String paramString, Matrix4 paramMatrix4)
  {
    setUniformMatrix(paramString, paramMatrix4, false);
  }

  public final void setUniformMatrix(String paramString, Matrix4 paramMatrix4, boolean paramBoolean)
  {
    int i = getUniformLocationOrThrow(paramString);
    this.matrix.clear();
    BufferUtils.copy(paramMatrix4.val, this.matrix, paramMatrix4.val.length, 0);
    Gdx.gl20.glUniformMatrix4fv(i, 1, paramBoolean, this.matrix);
  }

  public final void setUniformf(String paramString, float paramFloat)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform1f(i, paramFloat);
  }

  public final void setUniformf(String paramString, float paramFloat1, float paramFloat2)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform2f(i, paramFloat1, paramFloat2);
  }

  public final void setUniformf(String paramString, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform3f(i, paramFloat1, paramFloat2, paramFloat3);
  }

  public final void setUniformf(String paramString, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform4f(i, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void setUniformf(String paramString, Color paramColor)
  {
    setUniformf(paramString, paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }

  public final void setUniformf(String paramString, Vector2 paramVector2)
  {
    setUniformf(paramString, paramVector2.x, paramVector2.y);
  }

  public final void setUniformf(String paramString, Vector3 paramVector3)
  {
    setUniformf(paramString, paramVector3.x, paramVector3.y, paramVector3.z);
  }

  public final void setUniformi(String paramString, int paramInt)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform1i(i, paramInt);
  }

  public final void setUniformi(String paramString, int paramInt1, int paramInt2)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform2i(i, paramInt1, paramInt2);
  }

  public final void setUniformi(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform3i(i, paramInt1, paramInt2, paramInt3);
  }

  public final void setUniformi(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getUniformLocationOrThrow(paramString);
    Gdx.gl20.glUniform4i(i, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final void setVertexAttribute(String paramString, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    checkManaged();
    int i = getAttributeLocation(paramString);
    if (i == -1)
      return;
    Gdx.gl20.glVertexAttribPointer(i, paramInt1, paramInt2, paramBoolean, paramInt3, paramInt4);
  }

  public final void setVertexAttribute(String paramString, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, Buffer paramBuffer)
  {
    checkManaged();
    int i = getAttributeLocation(paramString);
    if (i == -1)
      return;
    Gdx.gl20.glVertexAttribPointer(i, paramInt1, paramInt2, paramBoolean, paramInt3, paramBuffer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ShaderProgram
 * JD-Core Version:    0.6.2
 */
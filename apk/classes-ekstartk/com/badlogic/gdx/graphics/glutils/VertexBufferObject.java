package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL11;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class VertexBufferObject
  implements VertexData
{
  static final IntBuffer tmpHandle = BufferUtils.newIntBuffer(1);
  private final int[] attributeIndexCache;
  final VertexAttributes attributes;
  final FloatBuffer buffer;
  int bufferHandle;
  final ByteBuffer byteBuffer;
  boolean isBound = false;
  boolean isDirty = false;
  final boolean isStatic;
  int maxBufferSize;
  private ShaderProgram shaderCache;
  final int usage;

  public VertexBufferObject(boolean paramBoolean, int paramInt, VertexAttributes paramVertexAttributes)
  {
    this.isStatic = paramBoolean;
    this.attributes = paramVertexAttributes;
    this.attributeIndexCache = new int[paramVertexAttributes.size()];
    this.byteBuffer = BufferUtils.newUnsafeByteBuffer(paramInt * this.attributes.vertexSize);
    this.buffer = this.byteBuffer.asFloatBuffer();
    this.buffer.flip();
    this.byteBuffer.flip();
    if (paramBoolean);
    for (int i = 35044; ; i = 35048)
    {
      this.usage = i;
      this.bufferHandle = createBufferObject();
      return;
    }
  }

  public VertexBufferObject(boolean paramBoolean, int paramInt, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    this(paramBoolean, paramInt, new VertexAttributes(paramArrayOfVertexAttribute));
  }

  private void bufferData()
  {
    this.byteBuffer.position(0);
    this.byteBuffer.limit(4 * this.buffer.limit());
    int i = this.byteBuffer.limit();
    if ((this.isStatic) || (this.maxBufferSize <= i))
      if (Gdx.gl20 != null)
        Gdx.gl20.glBufferData(34962, i, this.byteBuffer, this.usage);
    while (true)
    {
      this.maxBufferSize = Math.max(this.maxBufferSize, i);
      this.isDirty = false;
      return;
      Gdx.gl11.glBufferData(34962, i, this.byteBuffer, this.usage);
      continue;
      if (Gdx.gl20 != null)
        Gdx.gl20.glBufferSubData(34962, 0, i, this.byteBuffer);
      else
        Gdx.gl11.glBufferSubData(34962, 0, i, this.byteBuffer);
    }
  }

  private int createBufferObject()
  {
    if (Gdx.gl20 != null)
      Gdx.gl20.glGenBuffers(1, tmpHandle);
    int i;
    while (true)
    {
      i = tmpHandle.get(0);
      if (this.isStatic)
        break label147;
      this.maxBufferSize = this.byteBuffer.capacity();
      if (Gdx.gl20 == null)
        break;
      GL20 localGL20 = Gdx.gl20;
      localGL20.glBindBuffer(34962, i);
      localGL20.glBufferData(34962, this.maxBufferSize, null, this.usage);
      localGL20.glBindBuffer(34962, 0);
      return i;
      Gdx.gl11.glGenBuffers(1, tmpHandle);
    }
    GL11 localGL11 = Gdx.gl11;
    localGL11.glBindBuffer(34962, i);
    localGL11.glBufferData(34962, this.maxBufferSize, null, this.usage);
    localGL11.glBindBuffer(34962, 0);
    return i;
    label147: this.maxBufferSize = 0;
    return i;
  }

  public void bind()
  {
    bindBuffer();
    GL11 localGL11 = Gdx.gl11;
    int i = this.attributes.size();
    int j = 0;
    int k = 0;
    VertexAttribute localVertexAttribute;
    int m;
    if (j < i)
    {
      localVertexAttribute = this.attributes.get(j);
      switch (localVertexAttribute.usage)
      {
      case 4:
      default:
      case 0:
        for (m = k; ; m = k)
        {
          j++;
          k = m;
          break;
          localGL11.glEnableClientState(32884);
          localGL11.glVertexPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, localVertexAttribute.offset);
        }
      case 1:
      case 5:
        if (localVertexAttribute.usage != 5)
          break;
      case 2:
      case 3:
      }
    }
    for (int n = 5121; ; n = 5126)
    {
      localGL11.glEnableClientState(32886);
      localGL11.glColorPointer(localVertexAttribute.numComponents, n, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k;
      break;
      localGL11.glEnableClientState(32885);
      localGL11.glNormalPointer(5126, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k;
      break;
      localGL11.glClientActiveTexture(33984 + k);
      localGL11.glEnableClientState(32888);
      localGL11.glTexCoordPointer(localVertexAttribute.numComponents, 5126, this.attributes.vertexSize, localVertexAttribute.offset);
      m = k + 1;
      break;
      this.isBound = true;
      return;
    }
  }

  public void bind(ShaderProgram paramShaderProgram)
  {
    bindBuffer();
    int i = this.attributes.size();
    if (this.shaderCache != paramShaderProgram)
    {
      for (int n = 0; n < i; n++)
        this.attributeIndexCache[n] = paramShaderProgram.getAttributeLocation(this.attributes.get(n).alias);
      this.shaderCache = paramShaderProgram;
    }
    GL20 localGL20 = Gdx.gl20;
    int j = 0;
    int k;
    VertexAttribute localVertexAttribute;
    int m;
    if (j < i)
    {
      k = this.attributeIndexCache[j];
      if (k != -1)
      {
        localVertexAttribute = this.attributes.get(j);
        m = 5126;
        if (localVertexAttribute.usage != 5)
          break label173;
        m = 5121;
      }
    }
    label173: for (boolean bool = true; ; bool = false)
    {
      localGL20.glEnableVertexAttribArray(k);
      localGL20.glVertexAttribPointer(k, localVertexAttribute.numComponents, m, bool, this.attributes.vertexSize, localVertexAttribute.offset);
      j++;
      break;
      this.isBound = true;
      return;
    }
  }

  public void bindBuffer()
  {
    if (Gdx.gl20 != null)
      Gdx.gl20.glBindBuffer(34962, this.bufferHandle);
    while (true)
    {
      if (this.isDirty)
        bufferData();
      return;
      Gdx.gl11.glBindBuffer(34962, this.bufferHandle);
    }
  }

  public void dispose()
  {
    if (Gdx.gl20 != null)
    {
      tmpHandle.clear();
      tmpHandle.put(this.bufferHandle);
      tmpHandle.flip();
      GL20 localGL20 = Gdx.gl20;
      localGL20.glBindBuffer(34962, 0);
      localGL20.glDeleteBuffers(1, tmpHandle);
    }
    for (this.bufferHandle = 0; ; this.bufferHandle = 0)
    {
      BufferUtils.disposeUnsafeByteBuffer(this.byteBuffer);
      return;
      tmpHandle.clear();
      tmpHandle.put(this.bufferHandle);
      tmpHandle.flip();
      GL11 localGL11 = Gdx.gl11;
      localGL11.glBindBuffer(34962, 0);
      localGL11.glDeleteBuffers(1, tmpHandle);
    }
  }

  public VertexAttributes getAttributes()
  {
    return this.attributes;
  }

  public FloatBuffer getBuffer()
  {
    this.isDirty = true;
    return this.buffer;
  }

  public int getNumMaxVertices()
  {
    return this.byteBuffer.capacity() / this.attributes.vertexSize;
  }

  public int getNumVertices()
  {
    return 4 * this.buffer.limit() / this.attributes.vertexSize;
  }

  public void invalidate()
  {
    this.shaderCache = null;
    this.bufferHandle = createBufferObject();
    this.isDirty = true;
  }

  public void setVertices(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    this.isDirty = true;
    BufferUtils.copy(paramArrayOfFloat, this.byteBuffer, paramInt2, paramInt1);
    this.buffer.position(0);
    this.buffer.limit(paramInt2);
    if (this.isBound)
      bufferData();
  }

  public void unbind()
  {
    GL11 localGL11 = Gdx.gl11;
    int i = this.attributes.size();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      switch (this.attributes.get(j).usage)
      {
      case 0:
      case 4:
      default:
      case 1:
      case 5:
      case 2:
      case 3:
      }
      while (true)
      {
        j++;
        break;
        localGL11.glDisableClientState(32886);
        continue;
        localGL11.glDisableClientState(32885);
        continue;
        localGL11.glClientActiveTexture(33984 + k);
        localGL11.glDisableClientState(32888);
        k++;
      }
    }
    localGL11.glBindBuffer(34962, 0);
    this.isBound = false;
  }

  public void unbind(ShaderProgram paramShaderProgram)
  {
    if (this.shaderCache != paramShaderProgram)
      throw new IllegalArgumentException("unbind() called with different shader than bind()");
    GL20 localGL20 = Gdx.gl20;
    int i = this.attributes.size();
    for (int j = 0; j < i; j++)
    {
      int k = this.attributeIndexCache[j];
      if (k != -1)
        localGL20.glDisableVertexAttribArray(k);
    }
    localGL20.glBindBuffer(34962, 0);
    this.isBound = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.VertexBufferObject
 * JD-Core Version:    0.6.2
 */
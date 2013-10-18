package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.GL11;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.GLU;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.NumberUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SpriteBatch
  implements Disposable
{
  public static final int C1 = 2;
  public static final int C2 = 7;
  public static final int C3 = 12;
  public static final int C4 = 17;
  public static final int U1 = 3;
  public static final int U2 = 8;
  public static final int U3 = 13;
  public static final int U4 = 18;
  public static final int V1 = 4;
  public static final int V2 = 9;
  public static final int V3 = 14;
  public static final int V4 = 19;
  public static final int X1 = 0;
  public static final int X2 = 5;
  public static final int X3 = 10;
  public static final int X4 = 15;
  public static final int Y1 = 1;
  public static final int Y2 = 6;
  public static final int Y3 = 11;
  public static final int Y4 = 16;
  private static final Map<Application, List<SpriteBatch>> spriteBatches = new HashMap();
  private int blendDstFunc = 771;
  private int blendSrcFunc = 770;
  private boolean blendingDisabled = false;
  float color = Color.WHITE.toFloatBits();
  private final Matrix4 combinedMatrix = new Matrix4();
  private int currBufferIdx = 0;
  private ShaderProgram customShader = null;
  private boolean drawing = false;
  private int idx = 0;
  private final IndexBufferObject indexBuffer;
  private float invTexHeight = 0.0F;
  private float invTexWidth = 0.0F;
  private Texture lastTexture = null;
  public int maxSpritesInBatch = 0;
  private boolean ownsShader;
  private final Matrix4 projectionMatrix = new Matrix4();
  public int renderCalls = 0;
  private final ShaderProgram shader;
  private Color tempColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  public int totalRenderCalls = 0;
  private final Matrix4 transformMatrix = new Matrix4();
  private final VertexBufferObject[] vertexBuffers;
  private final float[] vertices;

  public SpriteBatch()
  {
    this(1000);
  }

  public SpriteBatch(int paramInt)
  {
    this(paramInt, null);
  }

  public SpriteBatch(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, null);
  }

  public SpriteBatch(int paramInt1, int paramInt2, ShaderProgram paramShaderProgram)
  {
    this.indexBuffer = createIndexBuffer(paramInt1 * 6);
    this.vertexBuffers = createVertexBuffers(paramInt1 * 4, paramInt2);
    this.vertices = new float[paramInt1 * 20];
    if ((Gdx.graphics.isGL20Available()) && (paramShaderProgram == null))
    {
      this.shader = createDefaultShader();
      this.ownsShader = true;
    }
    while (true)
    {
      this.projectionMatrix.setToOrtho2D(0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
      addManagedSpriteBatch(Gdx.app, this);
      return;
      this.shader = paramShaderProgram;
    }
  }

  public SpriteBatch(int paramInt, ShaderProgram paramShaderProgram)
  {
    this(paramInt, 1, paramShaderProgram);
  }

  private static void addManagedSpriteBatch(Application paramApplication, SpriteBatch paramSpriteBatch)
  {
    Object localObject = (List)spriteBatches.get(paramApplication);
    if (localObject == null)
      localObject = new ArrayList();
    ((List)localObject).add(paramSpriteBatch);
    spriteBatches.put(paramApplication, localObject);
  }

  public static void clearAllSpriteBatches(Application paramApplication)
  {
    spriteBatches.remove(paramApplication);
  }

  public static ShaderProgram createDefaultShader()
  {
    ShaderProgram localShaderProgram = new ShaderProgram("attribute vec2 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * vec4(a_position, 0.0, 1.0);\n}\n", "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
    if (!localShaderProgram.isCompiled())
    {
      int i = Gdx.gl.glGetError();
      String str = "";
      if (i != 0)
        str = Gdx.glu.gluErrorString(i);
      throw new IllegalArgumentException("couldn't compile shader, gl error = " + i + ", gl string = " + str + ", log = " + localShaderProgram.getLog());
    }
    return localShaderProgram;
  }

  private static IndexBufferObject createIndexBuffer(int paramInt)
  {
    short[] arrayOfShort = new short[paramInt];
    int i = 0;
    for (int j = 0; i < paramInt; j = (short)(j + 4))
    {
      arrayOfShort[(i + 0)] = ((short)(j + 0));
      arrayOfShort[(i + 1)] = ((short)(j + 1));
      arrayOfShort[(i + 2)] = ((short)(j + 2));
      arrayOfShort[(i + 3)] = ((short)(j + 2));
      arrayOfShort[(i + 4)] = ((short)(j + 3));
      arrayOfShort[(i + 5)] = ((short)(j + 0));
      i += 6;
    }
    IndexBufferObject localIndexBufferObject = new IndexBufferObject(true, paramInt);
    localIndexBufferObject.setIndices(arrayOfShort, 0, paramInt);
    return localIndexBufferObject;
  }

  private static VertexBufferObject[] createVertexBuffers(int paramInt1, int paramInt2)
  {
    VertexBufferObject[] arrayOfVertexBufferObject = new VertexBufferObject[paramInt2];
    for (int i = 0; i < paramInt2; i++)
    {
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
      arrayOfVertexAttribute[2] = new VertexAttribute(3, 2, "a_texCoord0");
      arrayOfVertexBufferObject[i] = new VertexBufferObject(false, paramInt1, arrayOfVertexAttribute);
    }
    return arrayOfVertexBufferObject;
  }

  private void invalidate()
  {
    this.indexBuffer.invalidate();
    for (int i = 0; i < this.vertexBuffers.length; i++)
      this.vertexBuffers[i].invalidate();
  }

  public static void invalidateAllSpriteBatches(Application paramApplication)
  {
    List localList = (List)spriteBatches.get(paramApplication);
    if (localList == null);
    while (true)
    {
      return;
      for (int i = 0; i < localList.size(); i++)
        ((SpriteBatch)localList.get(i)).invalidate();
    }
  }

  private void setupMatrices()
  {
    if (!Gdx.graphics.isGL20Available())
    {
      GL10 localGL10 = Gdx.gl10;
      localGL10.glMatrixMode(5889);
      localGL10.glLoadMatrixf(this.projectionMatrix.val, 0);
      localGL10.glMatrixMode(5888);
      localGL10.glLoadMatrixf(this.transformMatrix.val, 0);
      return;
    }
    this.combinedMatrix.set(this.projectionMatrix).mul(this.transformMatrix);
    if (this.customShader != null)
    {
      this.customShader.setOptUniformMatrix("u_proj", this.projectionMatrix);
      this.customShader.setOptUniformMatrix("u_trans", this.transformMatrix);
      this.customShader.setOptUniformMatrix("u_projTrans", this.combinedMatrix);
      this.customShader.setUniformi("u_texture", 0);
      return;
    }
    this.shader.setUniformMatrix("u_projectionViewMatrix", this.combinedMatrix);
    this.shader.setUniformi("u_texture", 0);
  }

  private void switchTexture(Texture paramTexture)
  {
    Gdx.graphics.isGL20Available();
    renderMesh();
    this.lastTexture = paramTexture;
    this.invTexWidth = (1.0F / paramTexture.getWidth());
    this.invTexHeight = (1.0F / paramTexture.getHeight());
  }

  public void begin()
  {
    if (this.drawing)
      throw new IllegalStateException("you have to call SpriteBatch.end() first");
    this.renderCalls = 0;
    Gdx.gl.glDepthMask(false);
    if (Gdx.graphics.isGL20Available())
      if (this.customShader != null)
        this.customShader.begin();
    while (true)
    {
      this.indexBuffer.bind();
      setupMatrices();
      this.idx = 0;
      this.lastTexture = null;
      this.drawing = true;
      if (!this.blendingDisabled)
        break;
      disableBlending();
      return;
      this.shader.begin();
      continue;
      Gdx.gl.glEnable(3553);
    }
    enableBlending();
  }

  public void disableBlending()
  {
    renderMesh();
    this.blendingDisabled = true;
    if (this.drawing)
      Gdx.gl.glDisable(3042);
  }

  public void dispose()
  {
    this.indexBuffer.dispose();
    for (int i = 0; i < this.vertexBuffers.length; i++)
      this.vertexBuffers[i].dispose();
    if ((this.ownsShader) && (this.shader != null))
      this.shader.dispose();
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    if (paramTexture != this.lastTexture)
      switchTexture(paramTexture);
    while (true)
    {
      float f1 = paramFloat1 + paramTexture.getWidth();
      float f2 = paramFloat2 + paramTexture.getHeight();
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat1;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = paramFloat2;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = 0.0F;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = 1.0F;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = paramFloat1;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f2;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = 0.0F;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = 0.0F;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f1;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f2;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = 1.0F;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = 0.0F;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f1;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = paramFloat2;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = 1.0F;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = 1.0F;
      return;
      if (this.idx == this.vertices.length)
        renderMesh();
    }
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    if (paramTexture != this.lastTexture)
      switchTexture(paramTexture);
    while (true)
    {
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat1;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = paramFloat2;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = 0.0F;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = 1.0F;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = paramFloat1;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f2;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = 0.0F;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = 0.0F;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f1;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f2;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = 1.0F;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = 0.0F;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f1;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = paramFloat2;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = 1.0F;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = 1.0F;
      return;
      if (this.idx == this.vertices.length)
        renderMesh();
    }
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    if (paramTexture != this.lastTexture)
      switchTexture(paramTexture);
    while (true)
    {
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat1;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = paramFloat2;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = paramFloat5;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = paramFloat6;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = paramFloat1;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f2;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = paramFloat5;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = paramFloat8;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f1;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f2;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = paramFloat7;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = paramFloat8;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f1;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = paramFloat2;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = paramFloat7;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = paramFloat6;
      return;
      if (this.idx == this.vertices.length)
        renderMesh();
    }
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    float f3;
    float f4;
    float f5;
    float f6;
    float f10;
    float f9;
    float f8;
    float f7;
    float f11;
    label228: float f12;
    float f13;
    float f14;
    float f15;
    float f16;
    float f17;
    float f18;
    float f19;
    float f20;
    float f21;
    float f22;
    float f23;
    if (paramTexture != this.lastTexture)
    {
      switchTexture(paramTexture);
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      f3 = -paramFloat3;
      f4 = -paramFloat4;
      f5 = paramFloat5 - paramFloat3;
      f6 = paramFloat6 - paramFloat4;
      if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
      {
        f3 *= paramFloat7;
        f4 *= paramFloat8;
        f5 *= paramFloat7;
        f6 *= paramFloat8;
      }
      if (paramFloat9 == 0.0F)
        break label908;
      float f26 = MathUtils.cosDeg(paramFloat9);
      float f27 = MathUtils.sinDeg(paramFloat9);
      f10 = f26 * f3 - f27 * f4;
      f9 = f27 * f3 + f4 * f26;
      f8 = f26 * f3 - f27 * f6;
      f7 = f27 * f3 + f26 * f6;
      f11 = f26 * f5 - f27 * f6;
      f6 = f27 * f5 + f26 * f6;
      f5 = f10 + (f11 - f8);
      f4 = f6 - (f7 - f9);
      f12 = f10 + f1;
      f13 = f9 + f2;
      f14 = f8 + f1;
      f15 = f7 + f2;
      f16 = f11 + f1;
      f17 = f6 + f2;
      f18 = f1 + f5;
      f19 = f2 + f4;
      f20 = paramInt1 * this.invTexWidth;
      f21 = (paramInt2 + paramInt4) * this.invTexHeight;
      f22 = (paramInt1 + paramInt3) * this.invTexWidth;
      f23 = paramInt2 * this.invTexHeight;
      if (!paramBoolean1)
        break label946;
    }
    while (true)
    {
      if (paramBoolean2);
      while (true)
      {
        float[] arrayOfFloat1 = this.vertices;
        int i = this.idx;
        this.idx = (i + 1);
        arrayOfFloat1[i] = f12;
        float[] arrayOfFloat2 = this.vertices;
        int j = this.idx;
        this.idx = (j + 1);
        arrayOfFloat2[j] = f13;
        float[] arrayOfFloat3 = this.vertices;
        int k = this.idx;
        this.idx = (k + 1);
        arrayOfFloat3[k] = this.color;
        float[] arrayOfFloat4 = this.vertices;
        int m = this.idx;
        this.idx = (m + 1);
        arrayOfFloat4[m] = f22;
        float[] arrayOfFloat5 = this.vertices;
        int n = this.idx;
        this.idx = (n + 1);
        arrayOfFloat5[n] = f23;
        float[] arrayOfFloat6 = this.vertices;
        int i1 = this.idx;
        this.idx = (i1 + 1);
        arrayOfFloat6[i1] = f14;
        float[] arrayOfFloat7 = this.vertices;
        int i2 = this.idx;
        this.idx = (i2 + 1);
        arrayOfFloat7[i2] = f15;
        float[] arrayOfFloat8 = this.vertices;
        int i3 = this.idx;
        this.idx = (i3 + 1);
        arrayOfFloat8[i3] = this.color;
        float[] arrayOfFloat9 = this.vertices;
        int i4 = this.idx;
        this.idx = (i4 + 1);
        arrayOfFloat9[i4] = f22;
        float[] arrayOfFloat10 = this.vertices;
        int i5 = this.idx;
        this.idx = (i5 + 1);
        arrayOfFloat10[i5] = f21;
        float[] arrayOfFloat11 = this.vertices;
        int i6 = this.idx;
        this.idx = (i6 + 1);
        arrayOfFloat11[i6] = f16;
        float[] arrayOfFloat12 = this.vertices;
        int i7 = this.idx;
        this.idx = (i7 + 1);
        arrayOfFloat12[i7] = f17;
        float[] arrayOfFloat13 = this.vertices;
        int i8 = this.idx;
        this.idx = (i8 + 1);
        arrayOfFloat13[i8] = this.color;
        float[] arrayOfFloat14 = this.vertices;
        int i9 = this.idx;
        this.idx = (i9 + 1);
        arrayOfFloat14[i9] = f20;
        float[] arrayOfFloat15 = this.vertices;
        int i10 = this.idx;
        this.idx = (i10 + 1);
        arrayOfFloat15[i10] = f21;
        float[] arrayOfFloat16 = this.vertices;
        int i11 = this.idx;
        this.idx = (i11 + 1);
        arrayOfFloat16[i11] = f18;
        float[] arrayOfFloat17 = this.vertices;
        int i12 = this.idx;
        this.idx = (i12 + 1);
        arrayOfFloat17[i12] = f19;
        float[] arrayOfFloat18 = this.vertices;
        int i13 = this.idx;
        this.idx = (i13 + 1);
        arrayOfFloat18[i13] = this.color;
        float[] arrayOfFloat19 = this.vertices;
        int i14 = this.idx;
        this.idx = (i14 + 1);
        arrayOfFloat19[i14] = f20;
        float[] arrayOfFloat20 = this.vertices;
        int i15 = this.idx;
        this.idx = (i15 + 1);
        arrayOfFloat20[i15] = f23;
        return;
        if (this.idx != this.vertices.length)
          break;
        renderMesh();
        break;
        label908: f7 = f6;
        f8 = f3;
        f9 = f4;
        f10 = f3;
        f11 = f5;
        break label228;
        float f25 = f23;
        f23 = f21;
        f21 = f25;
      }
      label946: float f24 = f22;
      f22 = f20;
      f20 = f24;
    }
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    if (paramTexture != this.lastTexture)
    {
      switchTexture(paramTexture);
      f1 = paramInt1 * this.invTexWidth;
      f2 = (paramInt2 + paramInt4) * this.invTexHeight;
      f3 = (paramInt1 + paramInt3) * this.invTexWidth;
      f4 = paramInt2 * this.invTexHeight;
      f5 = paramFloat1 + paramFloat3;
      f6 = paramFloat2 + paramFloat4;
      if (!paramBoolean1)
        break label678;
    }
    while (true)
    {
      if (paramBoolean2);
      while (true)
      {
        float[] arrayOfFloat1 = this.vertices;
        int i = this.idx;
        this.idx = (i + 1);
        arrayOfFloat1[i] = paramFloat1;
        float[] arrayOfFloat2 = this.vertices;
        int j = this.idx;
        this.idx = (j + 1);
        arrayOfFloat2[j] = paramFloat2;
        float[] arrayOfFloat3 = this.vertices;
        int k = this.idx;
        this.idx = (k + 1);
        arrayOfFloat3[k] = this.color;
        float[] arrayOfFloat4 = this.vertices;
        int m = this.idx;
        this.idx = (m + 1);
        arrayOfFloat4[m] = f3;
        float[] arrayOfFloat5 = this.vertices;
        int n = this.idx;
        this.idx = (n + 1);
        arrayOfFloat5[n] = f4;
        float[] arrayOfFloat6 = this.vertices;
        int i1 = this.idx;
        this.idx = (i1 + 1);
        arrayOfFloat6[i1] = paramFloat1;
        float[] arrayOfFloat7 = this.vertices;
        int i2 = this.idx;
        this.idx = (i2 + 1);
        arrayOfFloat7[i2] = f6;
        float[] arrayOfFloat8 = this.vertices;
        int i3 = this.idx;
        this.idx = (i3 + 1);
        arrayOfFloat8[i3] = this.color;
        float[] arrayOfFloat9 = this.vertices;
        int i4 = this.idx;
        this.idx = (i4 + 1);
        arrayOfFloat9[i4] = f3;
        float[] arrayOfFloat10 = this.vertices;
        int i5 = this.idx;
        this.idx = (i5 + 1);
        arrayOfFloat10[i5] = f2;
        float[] arrayOfFloat11 = this.vertices;
        int i6 = this.idx;
        this.idx = (i6 + 1);
        arrayOfFloat11[i6] = f5;
        float[] arrayOfFloat12 = this.vertices;
        int i7 = this.idx;
        this.idx = (i7 + 1);
        arrayOfFloat12[i7] = f6;
        float[] arrayOfFloat13 = this.vertices;
        int i8 = this.idx;
        this.idx = (i8 + 1);
        arrayOfFloat13[i8] = this.color;
        float[] arrayOfFloat14 = this.vertices;
        int i9 = this.idx;
        this.idx = (i9 + 1);
        arrayOfFloat14[i9] = f1;
        float[] arrayOfFloat15 = this.vertices;
        int i10 = this.idx;
        this.idx = (i10 + 1);
        arrayOfFloat15[i10] = f2;
        float[] arrayOfFloat16 = this.vertices;
        int i11 = this.idx;
        this.idx = (i11 + 1);
        arrayOfFloat16[i11] = f5;
        float[] arrayOfFloat17 = this.vertices;
        int i12 = this.idx;
        this.idx = (i12 + 1);
        arrayOfFloat17[i12] = paramFloat2;
        float[] arrayOfFloat18 = this.vertices;
        int i13 = this.idx;
        this.idx = (i13 + 1);
        arrayOfFloat18[i13] = this.color;
        float[] arrayOfFloat19 = this.vertices;
        int i14 = this.idx;
        this.idx = (i14 + 1);
        arrayOfFloat19[i14] = f1;
        float[] arrayOfFloat20 = this.vertices;
        int i15 = this.idx;
        this.idx = (i15 + 1);
        arrayOfFloat20[i15] = f4;
        return;
        if (this.idx != this.vertices.length)
          break;
        renderMesh();
        break;
        float f8 = f4;
        f4 = f2;
        f2 = f8;
      }
      label678: float f7 = f3;
      f3 = f1;
      f1 = f7;
    }
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    if (paramTexture != this.lastTexture)
      switchTexture(paramTexture);
    while (true)
    {
      float f1 = paramInt1 * this.invTexWidth;
      float f2 = (paramInt2 + paramInt4) * this.invTexHeight;
      float f3 = (paramInt1 + paramInt3) * this.invTexWidth;
      float f4 = paramInt2 * this.invTexHeight;
      float f5 = paramFloat1 + paramInt3;
      float f6 = paramFloat2 + paramInt4;
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat1;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = paramFloat2;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = f1;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = f2;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = paramFloat1;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f6;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = f1;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = f4;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f5;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f6;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = f3;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = f4;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f5;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = paramFloat2;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = f3;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = f2;
      return;
      if (this.idx == this.vertices.length)
        renderMesh();
    }
  }

  public void draw(Texture paramTexture, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    if (paramTexture != this.lastTexture)
      switchTexture(paramTexture);
    int i = this.vertices.length - this.idx;
    if (i == 0)
    {
      renderMesh();
      i = this.vertices.length;
    }
    int j = Math.min(i, paramInt2 - paramInt1);
    System.arraycopy(paramArrayOfFloat, paramInt1, this.vertices, this.idx, j);
    int k = paramInt1 + j;
    int m;
    for (this.idx = (j + this.idx); k < paramInt2; this.idx = (m + this.idx))
    {
      renderMesh();
      m = Math.min(this.vertices.length, paramInt2 - k);
      System.arraycopy(paramArrayOfFloat, k, this.vertices, 0, m);
      k += m;
    }
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2)
  {
    draw(paramTextureRegion, paramFloat1, paramFloat2, paramTextureRegion.getRegionWidth(), paramTextureRegion.getRegionHeight());
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    Texture localTexture = paramTextureRegion.texture;
    if (localTexture != this.lastTexture)
      switchTexture(localTexture);
    while (true)
    {
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      float f3 = paramTextureRegion.u;
      float f4 = paramTextureRegion.v2;
      float f5 = paramTextureRegion.u2;
      float f6 = paramTextureRegion.v;
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat1;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = paramFloat2;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = f3;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = f4;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = paramFloat1;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f2;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = f3;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = f6;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f1;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f2;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = f5;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = f6;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f1;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = paramFloat2;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = f5;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = f4;
      return;
      if (this.idx == this.vertices.length)
        renderMesh();
    }
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    Texture localTexture = paramTextureRegion.texture;
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    float f10;
    float f9;
    float f8;
    float f7;
    float f11;
    if (localTexture != this.lastTexture)
    {
      switchTexture(localTexture);
      f1 = paramFloat1 + paramFloat3;
      f2 = paramFloat2 + paramFloat4;
      f3 = -paramFloat3;
      f4 = -paramFloat4;
      f5 = paramFloat5 - paramFloat3;
      f6 = paramFloat6 - paramFloat4;
      if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
      {
        f3 *= paramFloat7;
        f4 *= paramFloat8;
        f5 *= paramFloat7;
        f6 *= paramFloat8;
      }
      if (paramFloat9 == 0.0F)
        break label884;
      float f24 = MathUtils.cosDeg(paramFloat9);
      float f25 = MathUtils.sinDeg(paramFloat9);
      f10 = f24 * f3 - f25 * f4;
      f9 = f25 * f3 + f4 * f24;
      f8 = f24 * f3 - f25 * f6;
      f7 = f25 * f3 + f24 * f6;
      f11 = f24 * f5 - f25 * f6;
      f6 = f25 * f5 + f24 * f6;
      f5 = f10 + (f11 - f8);
      f4 = f6 - (f7 - f9);
    }
    while (true)
    {
      float f12 = f10 + f1;
      float f13 = f9 + f2;
      float f14 = f8 + f1;
      float f15 = f7 + f2;
      float f16 = f11 + f1;
      float f17 = f6 + f2;
      float f18 = f5 + f1;
      float f19 = f4 + f2;
      float f20 = paramTextureRegion.u;
      float f21 = paramTextureRegion.v2;
      float f22 = paramTextureRegion.u2;
      float f23 = paramTextureRegion.v;
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = f12;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = f13;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = f20;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = f21;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = f14;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f15;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = f20;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = f23;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f16;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f17;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = f22;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = f23;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f18;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = f19;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = f22;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = f21;
      return;
      if (this.idx != this.vertices.length)
        break;
      renderMesh();
      break;
      label884: f7 = f6;
      f8 = f3;
      f9 = f4;
      f10 = f3;
      f11 = f5;
    }
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, boolean paramBoolean)
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    Texture localTexture = paramTextureRegion.texture;
    float f3;
    float f4;
    float f5;
    float f6;
    float f10;
    float f9;
    float f8;
    float f7;
    float f11;
    label236: float f12;
    float f13;
    float f14;
    float f15;
    float f16;
    float f17;
    float f18;
    float f19;
    float f20;
    float f21;
    float f22;
    float f23;
    float f24;
    float f25;
    float f26;
    if (localTexture != this.lastTexture)
    {
      switchTexture(localTexture);
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      f3 = -paramFloat3;
      f4 = -paramFloat4;
      f5 = paramFloat5 - paramFloat3;
      f6 = paramFloat6 - paramFloat4;
      if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
      {
        f3 *= paramFloat7;
        f4 *= paramFloat8;
        f5 *= paramFloat7;
        f6 *= paramFloat8;
      }
      if (paramFloat9 == 0.0F)
        break label913;
      float f28 = MathUtils.cosDeg(paramFloat9);
      float f29 = MathUtils.sinDeg(paramFloat9);
      f10 = f28 * f3 - f29 * f4;
      f9 = f29 * f3 + f4 * f28;
      f8 = f28 * f3 - f29 * f6;
      f7 = f29 * f3 + f28 * f6;
      f11 = f28 * f5 - f29 * f6;
      f6 = f29 * f5 + f28 * f6;
      f5 = f10 + (f11 - f8);
      f4 = f6 - (f7 - f9);
      f12 = f10 + f1;
      f13 = f9 + f2;
      f14 = f8 + f1;
      f15 = f7 + f2;
      f16 = f11 + f1;
      f17 = f6 + f2;
      f18 = f1 + f5;
      f19 = f2 + f4;
      if (!paramBoolean)
        break label936;
      f20 = paramTextureRegion.u2;
      f21 = paramTextureRegion.v2;
      f22 = paramTextureRegion.u;
      f23 = paramTextureRegion.v2;
      f24 = paramTextureRegion.u;
      f25 = paramTextureRegion.v;
      f26 = paramTextureRegion.u2;
    }
    for (float f27 = paramTextureRegion.v; ; f27 = paramTextureRegion.v2)
    {
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = f12;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = f13;
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = this.color;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = f20;
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = f21;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = f14;
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = f15;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = this.color;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = f22;
      float[] arrayOfFloat10 = this.vertices;
      int i5 = this.idx;
      this.idx = (i5 + 1);
      arrayOfFloat10[i5] = f23;
      float[] arrayOfFloat11 = this.vertices;
      int i6 = this.idx;
      this.idx = (i6 + 1);
      arrayOfFloat11[i6] = f16;
      float[] arrayOfFloat12 = this.vertices;
      int i7 = this.idx;
      this.idx = (i7 + 1);
      arrayOfFloat12[i7] = f17;
      float[] arrayOfFloat13 = this.vertices;
      int i8 = this.idx;
      this.idx = (i8 + 1);
      arrayOfFloat13[i8] = this.color;
      float[] arrayOfFloat14 = this.vertices;
      int i9 = this.idx;
      this.idx = (i9 + 1);
      arrayOfFloat14[i9] = f24;
      float[] arrayOfFloat15 = this.vertices;
      int i10 = this.idx;
      this.idx = (i10 + 1);
      arrayOfFloat15[i10] = f25;
      float[] arrayOfFloat16 = this.vertices;
      int i11 = this.idx;
      this.idx = (i11 + 1);
      arrayOfFloat16[i11] = f18;
      float[] arrayOfFloat17 = this.vertices;
      int i12 = this.idx;
      this.idx = (i12 + 1);
      arrayOfFloat17[i12] = f19;
      float[] arrayOfFloat18 = this.vertices;
      int i13 = this.idx;
      this.idx = (i13 + 1);
      arrayOfFloat18[i13] = this.color;
      float[] arrayOfFloat19 = this.vertices;
      int i14 = this.idx;
      this.idx = (i14 + 1);
      arrayOfFloat19[i14] = f26;
      float[] arrayOfFloat20 = this.vertices;
      int i15 = this.idx;
      this.idx = (i15 + 1);
      arrayOfFloat20[i15] = f27;
      return;
      if (this.idx != this.vertices.length)
        break;
      renderMesh();
      break;
      label913: f7 = f6;
      f8 = f3;
      f9 = f4;
      f10 = f3;
      f11 = f5;
      break label236;
      label936: f20 = paramTextureRegion.u;
      f21 = paramTextureRegion.v;
      f22 = paramTextureRegion.u2;
      f23 = paramTextureRegion.v;
      f24 = paramTextureRegion.u2;
      f25 = paramTextureRegion.v2;
      f26 = paramTextureRegion.u;
    }
  }

  public void enableBlending()
  {
    renderMesh();
    this.blendingDisabled = false;
    if (this.drawing)
    {
      GLCommon localGLCommon = Gdx.gl;
      localGLCommon.glEnable(3042);
      localGLCommon.glBlendFunc(this.blendSrcFunc, this.blendDstFunc);
    }
  }

  public void end()
  {
    if (!this.drawing)
      throw new IllegalStateException("SpriteBatch.begin must be called before end.");
    if (this.idx > 0)
      renderMesh();
    this.lastTexture = null;
    this.idx = 0;
    this.drawing = false;
    this.indexBuffer.unbind();
    GLCommon localGLCommon = Gdx.gl;
    localGLCommon.glDepthMask(true);
    if (isBlendingEnabled())
      localGLCommon.glDisable(3042);
    if (Gdx.graphics.isGL20Available())
    {
      if (this.customShader != null)
      {
        this.customShader.end();
        return;
      }
      this.shader.end();
      return;
    }
    localGLCommon.glDisable(3553);
  }

  public void flush()
  {
    renderMesh();
  }

  public Color getColor()
  {
    int i = NumberUtils.floatToIntColor(this.color);
    Color localColor = this.tempColor;
    localColor.r = ((i & 0xFF) / 255.0F);
    localColor.g = ((0xFF & i >>> 8) / 255.0F);
    localColor.b = ((0xFF & i >>> 16) / 255.0F);
    localColor.a = ((0xFF & i >>> 24) / 255.0F);
    return localColor;
  }

  public Matrix4 getProjectionMatrix()
  {
    return this.projectionMatrix;
  }

  public Matrix4 getTransformMatrix()
  {
    return this.transformMatrix;
  }

  public boolean isBlendingEnabled()
  {
    return !this.blendingDisabled;
  }

  protected void renderMesh()
  {
    if (this.idx == 0)
      return;
    this.renderCalls = (1 + this.renderCalls);
    this.totalRenderCalls = (1 + this.totalRenderCalls);
    int i = this.idx / 20;
    this.maxSpritesInBatch = Math.max(this.maxSpritesInBatch, i);
    this.lastTexture.bind();
    VertexBufferObject localVertexBufferObject = uploadVertexData();
    if (Gdx.gl20 != null)
    {
      if (this.customShader != null);
      for (ShaderProgram localShaderProgram = this.customShader; ; localShaderProgram = this.shader)
      {
        localVertexBufferObject.bind(localShaderProgram);
        Gdx.gl20.glDrawElements(4, i * 6, 5123, 0);
        localVertexBufferObject.unbind(localShaderProgram);
        return;
      }
    }
    localVertexBufferObject.bind();
    Gdx.gl11.glDrawElements(4, i * 6, 5123, 0);
    localVertexBufferObject.unbind();
  }

  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    renderMesh();
    this.blendSrcFunc = paramInt1;
    this.blendDstFunc = paramInt2;
    if (isBlendingEnabled())
      enableBlending();
  }

  public void setColor(float paramFloat)
  {
    this.color = paramFloat;
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.color = NumberUtils.intToFloatColor((int)(255.0F * paramFloat4) << 24 | (int)(255.0F * paramFloat3) << 16 | (int)(255.0F * paramFloat2) << 8 | (int)(255.0F * paramFloat1));
  }

  public void setColor(Color paramColor)
  {
    this.color = paramColor.toFloatBits();
  }

  public void setProjectionMatrix(Matrix4 paramMatrix4)
  {
    if (this.drawing)
      flush();
    this.projectionMatrix.set(paramMatrix4);
    if (this.drawing)
      setupMatrices();
  }

  public void setShader(ShaderProgram paramShaderProgram)
  {
    if (this.drawing)
    {
      flush();
      if (this.customShader != null)
        this.customShader.end();
    }
    else
    {
      this.customShader = paramShaderProgram;
      if (this.drawing)
      {
        if (this.customShader == null)
          break label66;
        this.customShader.begin();
      }
    }
    while (true)
    {
      setupMatrices();
      return;
      this.shader.end();
      break;
      label66: this.shader.begin();
    }
  }

  public void setTransformMatrix(Matrix4 paramMatrix4)
  {
    if (this.drawing)
      flush();
    this.transformMatrix.set(paramMatrix4);
    if (this.drawing)
      setupMatrices();
  }

  protected VertexBufferObject uploadVertexData()
  {
    VertexBufferObject localVertexBufferObject = this.vertexBuffers[this.currBufferIdx];
    localVertexBufferObject.setVertices(this.vertices, 0, this.idx);
    this.idx = 0;
    this.currBufferIdx = (1 + this.currBufferIdx);
    if (this.currBufferIdx == this.vertexBuffers.length)
      this.currBufferIdx = 0;
    return localVertexBufferObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.SpriteBatch
 * JD-Core Version:    0.6.2
 */
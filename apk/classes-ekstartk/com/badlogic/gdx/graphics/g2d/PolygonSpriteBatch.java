package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Mesh.VertexDataType;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.NumberUtils;

public class PolygonSpriteBatch
{
  private int blendDstFunc = 771;
  private int blendSrcFunc = 770;
  private boolean blendingDisabled = false;
  private Mesh[] buffers;
  float color = Color.WHITE.toFloatBits();
  private final Matrix4 combinedMatrix = new Matrix4();
  private int currBufferIdx = 0;
  private ShaderProgram customShader = null;
  private boolean drawing = false;
  private int idx = 0;
  private Texture lastTexture = null;
  public int maxVerticesInBatch = 0;
  private Mesh mesh;
  private boolean ownsShader;
  private final Matrix4 projectionMatrix = new Matrix4();
  public int renderCalls = 0;
  private final ShaderProgram shader;
  private Color tempColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  public int totalRenderCalls = 0;
  private final Matrix4 transformMatrix = new Matrix4();
  private final float[] vertices;

  public PolygonSpriteBatch()
  {
    this(4000);
  }

  public PolygonSpriteBatch(int paramInt)
  {
    this(paramInt, null);
  }

  public PolygonSpriteBatch(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, null);
  }

  public PolygonSpriteBatch(int paramInt1, int paramInt2, ShaderProgram paramShaderProgram)
  {
    this.buffers = new Mesh[paramInt2];
    for (int i = 0; i < paramInt2; i++)
    {
      Mesh[] arrayOfMesh = this.buffers;
      Mesh.VertexDataType localVertexDataType = Mesh.VertexDataType.VertexArray;
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
      arrayOfVertexAttribute[2] = new VertexAttribute(3, 2, "a_texCoord0");
      arrayOfMesh[i] = new Mesh(localVertexDataType, false, paramInt1, 0, arrayOfVertexAttribute);
    }
    this.projectionMatrix.setToOrtho2D(0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    this.vertices = new float[paramInt1 * 5];
    this.mesh = this.buffers[0];
    if ((Gdx.graphics.isGL20Available()) && (paramShaderProgram == null))
    {
      this.shader = createDefaultShader();
      this.ownsShader = true;
      return;
    }
    this.shader = paramShaderProgram;
  }

  public PolygonSpriteBatch(int paramInt, ShaderProgram paramShaderProgram)
  {
    this(paramInt, 1, paramShaderProgram);
  }

  public static ShaderProgram createDefaultShader()
  {
    ShaderProgram localShaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n", "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
    if (!localShaderProgram.isCompiled())
      throw new IllegalArgumentException("couldn't compile shader: " + localShaderProgram.getLog());
    return localShaderProgram;
  }

  private void renderMesh()
  {
    if (this.idx == 0)
      return;
    this.renderCalls = (1 + this.renderCalls);
    this.totalRenderCalls = (1 + this.totalRenderCalls);
    int i = this.idx / 5;
    if (i > this.maxVerticesInBatch)
      this.maxVerticesInBatch = i;
    this.lastTexture.bind();
    this.mesh.setVertices(this.vertices, 0, this.idx);
    if (this.blendingDisabled)
    {
      Gdx.gl.glDisable(3042);
      if (!Gdx.graphics.isGL20Available())
        break label214;
      if (this.customShader == null)
        break label197;
      this.mesh.render(this.customShader, 4, 0, i);
    }
    while (true)
    {
      this.idx = 0;
      this.currBufferIdx = (1 + this.currBufferIdx);
      if (this.currBufferIdx == this.buffers.length)
        this.currBufferIdx = 0;
      this.mesh = this.buffers[this.currBufferIdx];
      return;
      Gdx.gl.glEnable(3042);
      Gdx.gl.glBlendFunc(this.blendSrcFunc, this.blendDstFunc);
      break;
      label197: this.mesh.render(this.shader, 4, 0, i);
      continue;
      label214: this.mesh.render(4, 0, i);
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
      this.customShader.setUniformMatrix("u_proj", this.projectionMatrix);
      this.customShader.setUniformMatrix("u_trans", this.transformMatrix);
      this.customShader.setUniformMatrix("u_projTrans", this.combinedMatrix);
      this.customShader.setUniformi("u_texture", 0);
      return;
    }
    this.shader.setUniformMatrix("u_projectionViewMatrix", this.combinedMatrix);
    this.shader.setUniformi("u_texture", 0);
  }

  private void switchTexture(Texture paramTexture)
  {
    renderMesh();
    this.lastTexture = paramTexture;
  }

  public void begin()
  {
    if (this.drawing)
      throw new IllegalStateException("you have to call PolygonSpriteBatch.end() first");
    this.renderCalls = 0;
    Gdx.gl.glDepthMask(false);
    if (Gdx.graphics.isGL20Available())
      if (this.customShader != null)
        this.customShader.begin();
    while (true)
    {
      setupMatrices();
      this.idx = 0;
      this.lastTexture = null;
      this.drawing = true;
      return;
      this.shader.begin();
      continue;
      Gdx.gl.glEnable(3553);
    }
  }

  public void disableBlending()
  {
    renderMesh();
    this.blendingDisabled = true;
  }

  public void dispose()
  {
    for (int i = 0; i < this.buffers.length; i++)
      this.buffers[i].dispose();
    if ((this.ownsShader) && (this.shader != null))
      this.shader.dispose();
  }

  public void draw(PolygonRegion paramPolygonRegion, float paramFloat1, float paramFloat2)
  {
    draw(paramPolygonRegion, paramFloat1, paramFloat2, paramPolygonRegion.getRegion().getRegionWidth(), paramPolygonRegion.getRegion().getRegionHeight());
  }

  public void draw(PolygonRegion paramPolygonRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (!this.drawing)
      throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    Texture localTexture = paramPolygonRegion.getRegion().texture;
    if (localTexture != this.lastTexture)
      switchTexture(localTexture);
    float[] arrayOfFloat1 = paramPolygonRegion.getLocalVertices();
    float[] arrayOfFloat2 = paramPolygonRegion.getTextureCoords();
    if (this.idx + arrayOfFloat1.length > this.vertices.length)
      renderMesh();
    float f1 = paramFloat3 / paramPolygonRegion.getRegion().getRegionWidth();
    float f2 = paramFloat4 / paramPolygonRegion.getRegion().getRegionHeight();
    for (int i = 0; i < arrayOfFloat1.length; i += 2)
    {
      float[] arrayOfFloat3 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat3[j] = (paramFloat1 + f1 * arrayOfFloat1[i]);
      float[] arrayOfFloat4 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat4[k] = (paramFloat2 + f2 * arrayOfFloat1[(i + 1)]);
      float[] arrayOfFloat5 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat5[m] = this.color;
      float[] arrayOfFloat6 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat6[n] = arrayOfFloat2[i];
      float[] arrayOfFloat7 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat7[i1] = arrayOfFloat2[(i + 1)];
    }
  }

  public void draw(PolygonRegion paramPolygonRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    if (!this.drawing)
      throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    Texture localTexture = paramPolygonRegion.getRegion().texture;
    if (localTexture != this.lastTexture)
      switchTexture(localTexture);
    float[] arrayOfFloat1 = paramPolygonRegion.getLocalVertices();
    float[] arrayOfFloat2 = paramPolygonRegion.getTextureCoords();
    if (this.idx + arrayOfFloat1.length > this.vertices.length)
      renderMesh();
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float f3 = paramFloat5 / paramPolygonRegion.getRegion().getRegionWidth();
    float f4 = paramFloat6 / paramPolygonRegion.getRegion().getRegionHeight();
    float f5 = MathUtils.cosDeg(paramFloat9);
    float f6 = MathUtils.sinDeg(paramFloat9);
    for (int i = 0; i < arrayOfFloat1.length; i += 2)
    {
      float f7 = f3 * arrayOfFloat1[i];
      float f8 = f4 * arrayOfFloat1[(i + 1)];
      float f9 = f7 - paramFloat3;
      float f10 = f8 - paramFloat4;
      if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
      {
        f9 *= paramFloat7;
        f10 *= paramFloat8;
      }
      float f11 = f5 * f9 - f6 * f10;
      float f12 = f9 * f6 + f10 * f5;
      float f13 = f11 + f1;
      float f14 = f12 + f2;
      float[] arrayOfFloat3 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat3[j] = f13;
      float[] arrayOfFloat4 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat4[k] = f14;
      float[] arrayOfFloat5 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat5[m] = this.color;
      float[] arrayOfFloat6 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat6[n] = arrayOfFloat2[i];
      float[] arrayOfFloat7 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat7[i1] = arrayOfFloat2[(i + 1)];
    }
  }

  public void draw(PolygonRegion paramPolygonRegion, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (!this.drawing)
      throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    Texture localTexture = paramPolygonRegion.getRegion().texture;
    if (localTexture != this.lastTexture)
      switchTexture(localTexture);
    if (paramInt2 + this.idx > this.vertices.length)
      renderMesh();
    if (paramInt2 <= this.vertices.length)
    {
      System.arraycopy(paramArrayOfFloat, paramInt1, this.vertices, this.idx, paramInt2);
      this.idx = (paramInt2 + this.idx);
    }
  }

  public void enableBlending()
  {
    renderMesh();
    this.blendingDisabled = false;
  }

  public void end()
  {
    if (!this.drawing)
      throw new IllegalStateException("PolygonSpriteBatch.begin must be called before end.");
    if (this.idx > 0)
      renderMesh();
    this.lastTexture = null;
    this.idx = 0;
    this.drawing = false;
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

  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    renderMesh();
    this.blendSrcFunc = paramInt1;
    this.blendDstFunc = paramInt2;
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PolygonSpriteBatch
 * JD-Core Version:    0.6.2
 */
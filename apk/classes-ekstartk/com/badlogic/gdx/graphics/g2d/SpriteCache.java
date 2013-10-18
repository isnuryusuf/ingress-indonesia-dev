package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;

public class SpriteCache
  implements Disposable
{
  private static final float[] tempVertices = new float[30];
  private ArrayList<SpriteCache.Cache> caches = new ArrayList();
  private float color = Color.WHITE.toFloatBits();
  private final Matrix4 combinedMatrix = new Matrix4();
  private final ArrayList<Integer> counts = new ArrayList(8);
  private SpriteCache.Cache currentCache;
  private ShaderProgram customShader = null;
  private boolean drawing;
  private final Mesh mesh;
  private final Matrix4 projectionMatrix = new Matrix4();
  private final ShaderProgram shader;
  private Color tempColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  private final ArrayList<Texture> textures = new ArrayList(8);
  private final Matrix4 transformMatrix = new Matrix4();

  public SpriteCache()
  {
    this(1000, false);
  }

  public SpriteCache(int paramInt, ShaderProgram paramShaderProgram, boolean paramBoolean)
  {
    this.shader = paramShaderProgram;
    int j;
    int k;
    if (paramBoolean)
    {
      j = 4;
      k = paramInt * j;
      if (!paramBoolean)
        break label324;
    }
    short[] arrayOfShort;
    label324: for (int m = paramInt * 6; ; m = 0)
    {
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
      arrayOfVertexAttribute[2] = new VertexAttribute(3, 2, "a_texCoord0");
      this.mesh = new Mesh(true, k, m, arrayOfVertexAttribute);
      this.mesh.setAutoBind(false);
      if (!paramBoolean)
        break label339;
      int n = paramInt * 6;
      arrayOfShort = new short[n];
      for (int i1 = 0; i < n; i1 = (short)(i1 + 4))
      {
        arrayOfShort[(i + 0)] = i1;
        arrayOfShort[(i + 1)] = ((short)(i1 + 1));
        arrayOfShort[(i + 2)] = ((short)(i1 + 2));
        arrayOfShort[(i + 3)] = ((short)(i1 + 2));
        arrayOfShort[(i + 4)] = ((short)(i1 + 3));
        arrayOfShort[(i + 5)] = i1;
        i += 6;
      }
      j = 6;
      break;
    }
    this.mesh.setIndices(arrayOfShort);
    label339: this.projectionMatrix.setToOrtho2D(0.0F, 0.0F, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public SpriteCache(int paramInt, boolean paramBoolean)
  {
    this(paramInt, createDefaultShader(), paramBoolean);
  }

  static ShaderProgram createDefaultShader()
  {
    ShaderProgram localShaderProgram;
    if (!Gdx.graphics.isGL20Available())
      localShaderProgram = null;
    do
    {
      return localShaderProgram;
      localShaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
    }
    while (localShaderProgram.isCompiled());
    throw new IllegalArgumentException("Error compiling shader: " + localShaderProgram.getLog());
  }

  public void add(Texture paramTexture, float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 + paramTexture.getWidth();
    float f2 = paramFloat2 + paramTexture.getHeight();
    tempVertices[0] = paramFloat1;
    tempVertices[1] = paramFloat2;
    tempVertices[2] = this.color;
    tempVertices[3] = 0.0F;
    tempVertices[4] = 1.0F;
    tempVertices[5] = paramFloat1;
    tempVertices[6] = f2;
    tempVertices[7] = this.color;
    tempVertices[8] = 0.0F;
    tempVertices[9] = 0.0F;
    tempVertices[10] = f1;
    tempVertices[11] = f2;
    tempVertices[12] = this.color;
    tempVertices[13] = 1.0F;
    tempVertices[14] = 0.0F;
    if (this.mesh.getNumIndices() > 0)
    {
      tempVertices[15] = f1;
      tempVertices[16] = paramFloat2;
      tempVertices[17] = this.color;
      tempVertices[18] = 1.0F;
      tempVertices[19] = 1.0F;
      add(paramTexture, tempVertices, 0, 20);
      return;
    }
    tempVertices[15] = f1;
    tempVertices[16] = f2;
    tempVertices[17] = this.color;
    tempVertices[18] = 1.0F;
    tempVertices[19] = 0.0F;
    tempVertices[20] = f1;
    tempVertices[21] = paramFloat2;
    tempVertices[22] = this.color;
    tempVertices[23] = 1.0F;
    tempVertices[24] = 1.0F;
    tempVertices[25] = paramFloat1;
    tempVertices[26] = paramFloat2;
    tempVertices[27] = this.color;
    tempVertices[28] = 0.0F;
    tempVertices[29] = 1.0F;
    add(paramTexture, tempVertices, 0, 30);
  }

  public void add(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float f3 = -paramFloat3;
    float f4 = -paramFloat4;
    float f5 = paramFloat5 - paramFloat3;
    float f6 = paramFloat6 - paramFloat4;
    if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
    {
      f3 *= paramFloat7;
      f4 *= paramFloat8;
      f5 *= paramFloat7;
      f6 *= paramFloat8;
    }
    float f10;
    float f9;
    float f8;
    float f7;
    float f11;
    float f12;
    float f13;
    float f14;
    float f15;
    float f16;
    float f17;
    float f18;
    float f19;
    float f22;
    float f23;
    float f24;
    float f25;
    if (paramFloat9 != 0.0F)
    {
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
      float f20 = 1.0F / paramTexture.getWidth();
      float f21 = 1.0F / paramTexture.getHeight();
      f22 = f20 * paramInt1;
      f23 = f21 * (paramInt2 + paramInt4);
      f24 = f20 * (paramInt1 + paramInt3);
      f25 = f21 * paramInt2;
      if (!paramBoolean1)
        break label679;
    }
    while (true)
    {
      if (paramBoolean2);
      while (true)
      {
        tempVertices[0] = f12;
        tempVertices[1] = f13;
        tempVertices[2] = this.color;
        tempVertices[3] = f24;
        tempVertices[4] = f25;
        tempVertices[5] = f14;
        tempVertices[6] = f15;
        tempVertices[7] = this.color;
        tempVertices[8] = f24;
        tempVertices[9] = f23;
        tempVertices[10] = f16;
        tempVertices[11] = f17;
        tempVertices[12] = this.color;
        tempVertices[13] = f22;
        tempVertices[14] = f23;
        if (this.mesh.getNumIndices() > 0)
        {
          tempVertices[15] = f18;
          tempVertices[16] = f19;
          tempVertices[17] = this.color;
          tempVertices[18] = f22;
          tempVertices[19] = f25;
          add(paramTexture, tempVertices, 0, 20);
          return;
          f7 = f6;
          f8 = f3;
          f9 = f4;
          f10 = f3;
          f11 = f5;
          break;
        }
        tempVertices[15] = f16;
        tempVertices[16] = f17;
        tempVertices[17] = this.color;
        tempVertices[18] = f22;
        tempVertices[19] = f23;
        tempVertices[20] = f18;
        tempVertices[21] = f19;
        tempVertices[22] = this.color;
        tempVertices[23] = f22;
        tempVertices[24] = f25;
        tempVertices[25] = f12;
        tempVertices[26] = f13;
        tempVertices[27] = this.color;
        tempVertices[28] = f24;
        tempVertices[29] = f25;
        add(paramTexture, tempVertices, 0, 30);
        return;
        float f27 = f25;
        f25 = f23;
        f23 = f27;
      }
      label679: float f26 = f24;
      f24 = f22;
      f22 = f26;
    }
  }

  public void add(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1 = 1.0F / paramTexture.getWidth();
    float f2 = 1.0F / paramTexture.getHeight();
    float f3 = f1 * paramInt1;
    float f4 = f2 * (paramInt2 + paramInt4);
    float f5 = f1 * (paramInt1 + paramInt3);
    float f6 = f2 * paramInt2;
    float f7 = paramFloat1 + paramFloat3;
    float f8 = paramFloat2 + paramFloat4;
    if (paramBoolean1);
    while (true)
    {
      if (paramBoolean2);
      while (true)
      {
        tempVertices[0] = paramFloat1;
        tempVertices[1] = paramFloat2;
        tempVertices[2] = this.color;
        tempVertices[3] = f5;
        tempVertices[4] = f6;
        tempVertices[5] = paramFloat1;
        tempVertices[6] = f8;
        tempVertices[7] = this.color;
        tempVertices[8] = f5;
        tempVertices[9] = f4;
        tempVertices[10] = f7;
        tempVertices[11] = f8;
        tempVertices[12] = this.color;
        tempVertices[13] = f3;
        tempVertices[14] = f4;
        if (this.mesh.getNumIndices() > 0)
        {
          tempVertices[15] = f7;
          tempVertices[16] = paramFloat2;
          tempVertices[17] = this.color;
          tempVertices[18] = f3;
          tempVertices[19] = f6;
          add(paramTexture, tempVertices, 0, 20);
          return;
        }
        tempVertices[15] = f7;
        tempVertices[16] = f8;
        tempVertices[17] = this.color;
        tempVertices[18] = f3;
        tempVertices[19] = f4;
        tempVertices[20] = f7;
        tempVertices[21] = paramFloat2;
        tempVertices[22] = this.color;
        tempVertices[23] = f3;
        tempVertices[24] = f6;
        tempVertices[25] = paramFloat1;
        tempVertices[26] = paramFloat2;
        tempVertices[27] = this.color;
        tempVertices[28] = f5;
        tempVertices[29] = f6;
        add(paramTexture, tempVertices, 0, 30);
        return;
        float f10 = f6;
        f6 = f4;
        f4 = f10;
      }
      float f9 = f5;
      f5 = f3;
      f3 = f9;
    }
  }

  public void add(Texture paramTexture, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    float f1 = paramFloat1 + paramInt1;
    float f2 = paramFloat2 + paramInt2;
    tempVertices[0] = paramFloat1;
    tempVertices[1] = paramFloat2;
    tempVertices[2] = paramFloat7;
    tempVertices[3] = paramFloat3;
    tempVertices[4] = paramFloat4;
    tempVertices[5] = paramFloat1;
    tempVertices[6] = f2;
    tempVertices[7] = paramFloat7;
    tempVertices[8] = paramFloat3;
    tempVertices[9] = paramFloat6;
    tempVertices[10] = f1;
    tempVertices[11] = f2;
    tempVertices[12] = paramFloat7;
    tempVertices[13] = paramFloat5;
    tempVertices[14] = paramFloat6;
    if (this.mesh.getNumIndices() > 0)
    {
      tempVertices[15] = f1;
      tempVertices[16] = paramFloat2;
      tempVertices[17] = paramFloat7;
      tempVertices[18] = paramFloat5;
      tempVertices[19] = paramFloat4;
      add(paramTexture, tempVertices, 0, 20);
      return;
    }
    tempVertices[15] = f1;
    tempVertices[16] = f2;
    tempVertices[17] = paramFloat7;
    tempVertices[18] = paramFloat5;
    tempVertices[19] = paramFloat6;
    tempVertices[20] = f1;
    tempVertices[21] = paramFloat2;
    tempVertices[22] = paramFloat7;
    tempVertices[23] = paramFloat5;
    tempVertices[24] = paramFloat4;
    tempVertices[25] = paramFloat1;
    tempVertices[26] = paramFloat2;
    tempVertices[27] = paramFloat7;
    tempVertices[28] = paramFloat3;
    tempVertices[29] = paramFloat4;
    add(paramTexture, tempVertices, 0, 30);
  }

  public void add(Texture paramTexture, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = 1.0F / paramTexture.getWidth();
    float f2 = 1.0F / paramTexture.getHeight();
    float f3 = f1 * paramInt1;
    float f4 = f2 * (paramInt2 + paramInt4);
    float f5 = f1 * (paramInt1 + paramInt3);
    float f6 = f2 * paramInt2;
    float f7 = paramFloat1 + paramInt3;
    float f8 = paramFloat2 + paramInt4;
    tempVertices[0] = paramFloat1;
    tempVertices[1] = paramFloat2;
    tempVertices[2] = this.color;
    tempVertices[3] = f3;
    tempVertices[4] = f4;
    tempVertices[5] = paramFloat1;
    tempVertices[6] = f8;
    tempVertices[7] = this.color;
    tempVertices[8] = f3;
    tempVertices[9] = f6;
    tempVertices[10] = f7;
    tempVertices[11] = f8;
    tempVertices[12] = this.color;
    tempVertices[13] = f5;
    tempVertices[14] = f6;
    if (this.mesh.getNumIndices() > 0)
    {
      tempVertices[15] = f7;
      tempVertices[16] = paramFloat2;
      tempVertices[17] = this.color;
      tempVertices[18] = f5;
      tempVertices[19] = f4;
      add(paramTexture, tempVertices, 0, 20);
      return;
    }
    tempVertices[15] = f7;
    tempVertices[16] = f8;
    tempVertices[17] = this.color;
    tempVertices[18] = f5;
    tempVertices[19] = f6;
    tempVertices[20] = f7;
    tempVertices[21] = paramFloat2;
    tempVertices[22] = this.color;
    tempVertices[23] = f5;
    tempVertices[24] = f4;
    tempVertices[25] = paramFloat1;
    tempVertices[26] = paramFloat2;
    tempVertices[27] = this.color;
    tempVertices[28] = f3;
    tempVertices[29] = f4;
    add(paramTexture, tempVertices, 0, 30);
  }

  public void add(Texture paramTexture, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (this.currentCache == null)
      throw new IllegalStateException("beginCache must be called before add.");
    int i;
    int j;
    int k;
    if (this.mesh.getNumIndices() > 0)
    {
      i = 4;
      j = 6 * (paramInt2 / (i * 5));
      k = -1 + this.textures.size();
      if ((k >= 0) && (this.textures.get(k) == paramTexture))
        break label116;
      this.textures.add(paramTexture);
      this.counts.add(Integer.valueOf(j));
    }
    while (true)
    {
      this.mesh.getVerticesBuffer().put(paramArrayOfFloat, paramInt1, paramInt2);
      return;
      i = 6;
      break;
      label116: this.counts.set(k, Integer.valueOf(j + ((Integer)this.counts.get(k)).intValue()));
    }
  }

  public void add(Sprite paramSprite)
  {
    if (this.mesh.getNumIndices() > 0)
    {
      add(paramSprite.getTexture(), paramSprite.getVertices(), 0, 20);
      return;
    }
    float[] arrayOfFloat = paramSprite.getVertices();
    System.arraycopy(arrayOfFloat, 0, tempVertices, 0, 15);
    System.arraycopy(arrayOfFloat, 10, tempVertices, 15, 5);
    System.arraycopy(arrayOfFloat, 15, tempVertices, 20, 5);
    System.arraycopy(arrayOfFloat, 0, tempVertices, 25, 5);
    add(paramSprite.getTexture(), tempVertices, 0, 30);
  }

  public void add(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2)
  {
    add(paramTextureRegion, paramFloat1, paramFloat2, paramTextureRegion.getRegionWidth(), paramTextureRegion.getRegionHeight());
  }

  public void add(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float f3 = paramTextureRegion.u;
    float f4 = paramTextureRegion.v2;
    float f5 = paramTextureRegion.u2;
    float f6 = paramTextureRegion.v;
    tempVertices[0] = paramFloat1;
    tempVertices[1] = paramFloat2;
    tempVertices[2] = this.color;
    tempVertices[3] = f3;
    tempVertices[4] = f4;
    tempVertices[5] = paramFloat1;
    tempVertices[6] = f2;
    tempVertices[7] = this.color;
    tempVertices[8] = f3;
    tempVertices[9] = f6;
    tempVertices[10] = f1;
    tempVertices[11] = f2;
    tempVertices[12] = this.color;
    tempVertices[13] = f5;
    tempVertices[14] = f6;
    if (this.mesh.getNumIndices() > 0)
    {
      tempVertices[15] = f1;
      tempVertices[16] = paramFloat2;
      tempVertices[17] = this.color;
      tempVertices[18] = f5;
      tempVertices[19] = f4;
      add(paramTextureRegion.texture, tempVertices, 0, 20);
      return;
    }
    tempVertices[15] = f1;
    tempVertices[16] = f2;
    tempVertices[17] = this.color;
    tempVertices[18] = f5;
    tempVertices[19] = f6;
    tempVertices[20] = f1;
    tempVertices[21] = paramFloat2;
    tempVertices[22] = this.color;
    tempVertices[23] = f5;
    tempVertices[24] = f4;
    tempVertices[25] = paramFloat1;
    tempVertices[26] = paramFloat2;
    tempVertices[27] = this.color;
    tempVertices[28] = f3;
    tempVertices[29] = f4;
    add(paramTextureRegion.texture, tempVertices, 0, 30);
  }

  public void add(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float f3 = -paramFloat3;
    float f4 = -paramFloat4;
    float f5 = paramFloat5 - paramFloat3;
    float f6 = paramFloat6 - paramFloat4;
    if ((paramFloat7 != 1.0F) || (paramFloat8 != 1.0F))
    {
      f3 *= paramFloat7;
      f4 *= paramFloat8;
      f5 *= paramFloat7;
      f6 *= paramFloat8;
    }
    float f10;
    float f9;
    float f8;
    float f7;
    float f11;
    if (paramFloat9 != 0.0F)
    {
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
    float f12;
    float f13;
    float f16;
    float f17;
    float f18;
    float f19;
    float f20;
    float f21;
    float f22;
    float f23;
    while (true)
    {
      f12 = f10 + f1;
      f13 = f9 + f2;
      float f14 = f8 + f1;
      float f15 = f7 + f2;
      f16 = f11 + f1;
      f17 = f6 + f2;
      f18 = f5 + f1;
      f19 = f4 + f2;
      f20 = paramTextureRegion.u;
      f21 = paramTextureRegion.v2;
      f22 = paramTextureRegion.u2;
      f23 = paramTextureRegion.v;
      tempVertices[0] = f12;
      tempVertices[1] = f13;
      tempVertices[2] = this.color;
      tempVertices[3] = f20;
      tempVertices[4] = f21;
      tempVertices[5] = f14;
      tempVertices[6] = f15;
      tempVertices[7] = this.color;
      tempVertices[8] = f20;
      tempVertices[9] = f23;
      tempVertices[10] = f16;
      tempVertices[11] = f17;
      tempVertices[12] = this.color;
      tempVertices[13] = f22;
      tempVertices[14] = f23;
      if (this.mesh.getNumIndices() <= 0)
        break;
      tempVertices[15] = f18;
      tempVertices[16] = f19;
      tempVertices[17] = this.color;
      tempVertices[18] = f22;
      tempVertices[19] = f21;
      add(paramTextureRegion.texture, tempVertices, 0, 20);
      return;
      f7 = f6;
      f8 = f3;
      f9 = f4;
      f10 = f3;
      f11 = f5;
    }
    tempVertices[15] = f16;
    tempVertices[16] = f17;
    tempVertices[17] = this.color;
    tempVertices[18] = f22;
    tempVertices[19] = f23;
    tempVertices[20] = f18;
    tempVertices[21] = f19;
    tempVertices[22] = this.color;
    tempVertices[23] = f22;
    tempVertices[24] = f21;
    tempVertices[25] = f12;
    tempVertices[26] = f13;
    tempVertices[27] = this.color;
    tempVertices[28] = f20;
    tempVertices[29] = f21;
    add(paramTextureRegion.texture, tempVertices, 0, 30);
  }

  public void begin()
  {
    if (this.drawing)
      throw new IllegalStateException("end must be called before begin.");
    if (!Gdx.graphics.isGL20Available())
    {
      GL10 localGL10 = Gdx.gl10;
      localGL10.glDepthMask(false);
      localGL10.glEnable(3553);
      localGL10.glMatrixMode(5889);
      localGL10.glLoadMatrixf(this.projectionMatrix.val, 0);
      localGL10.glMatrixMode(5888);
      localGL10.glLoadMatrixf(this.transformMatrix.val, 0);
      this.mesh.bind();
      this.drawing = true;
      return;
    }
    this.combinedMatrix.set(this.projectionMatrix).mul(this.transformMatrix);
    Gdx.gl20.glDepthMask(false);
    if (this.customShader != null)
    {
      this.customShader.begin();
      this.customShader.setUniformMatrix("u_proj", this.projectionMatrix);
      this.customShader.setUniformMatrix("u_trans", this.transformMatrix);
      this.customShader.setUniformMatrix("u_projTrans", this.combinedMatrix);
      this.customShader.setUniformi("u_texture", 0);
    }
    while (true)
    {
      this.mesh.bind(this.shader);
      break;
      this.shader.begin();
      this.shader.setUniformMatrix("u_projectionViewMatrix", this.combinedMatrix);
      this.shader.setUniformi("u_texture", 0);
    }
  }

  public void beginCache()
  {
    if (this.currentCache != null)
      throw new IllegalStateException("endCache must be called before begin.");
    this.mesh.getNumIndices();
    this.currentCache = new SpriteCache.Cache(this.caches.size(), this.mesh.getVerticesBuffer().limit());
    this.caches.add(this.currentCache);
    this.mesh.getVerticesBuffer().compact();
  }

  public void beginCache(int paramInt)
  {
    if (this.currentCache != null)
      throw new IllegalStateException("endCache must be called before begin.");
    if (paramInt == -1 + this.caches.size())
    {
      SpriteCache.Cache localCache = (SpriteCache.Cache)this.caches.remove(paramInt);
      this.mesh.getVerticesBuffer().limit(localCache.offset);
      beginCache();
      return;
    }
    this.currentCache = ((SpriteCache.Cache)this.caches.get(paramInt));
    this.mesh.getVerticesBuffer().position(this.currentCache.offset);
  }

  public void clear()
  {
    this.caches.clear();
    this.mesh.getVerticesBuffer().clear().flip();
  }

  public void dispose()
  {
    this.mesh.dispose();
    if (this.shader != null)
      this.shader.dispose();
  }

  public void draw(int paramInt)
  {
    int i = 0;
    if (!this.drawing)
      throw new IllegalStateException("SpriteCache.begin must be called before draw.");
    SpriteCache.Cache localCache = (SpriteCache.Cache)this.caches.get(paramInt);
    int j;
    int k;
    Texture[] arrayOfTexture;
    int[] arrayOfInt;
    label88: int i3;
    if (this.mesh.getNumIndices() > 0)
    {
      j = 4;
      k = 6 * (localCache.offset / (j * 5));
      arrayOfTexture = localCache.textures;
      arrayOfInt = localCache.counts;
      if (!Gdx.graphics.isGL20Available())
        break label169;
      int i2 = localCache.textureCount;
      if (i >= i2)
        return;
      i3 = arrayOfInt[i];
      arrayOfTexture[i].bind();
      if (this.customShader == null)
        break label150;
      this.mesh.render(this.customShader, 4, k, i3);
    }
    while (true)
    {
      k += i3;
      i++;
      break label88;
      j = 6;
      break;
      label150: this.mesh.render(this.shader, 4, k, i3);
    }
    label169: int m = localCache.textureCount;
    for (int n = 0; n < m; n++)
    {
      int i1 = arrayOfInt[n];
      arrayOfTexture[n].bind();
      this.mesh.render(4, k, i1);
      k += i1;
    }
  }

  public void draw(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    if (!this.drawing)
      throw new IllegalStateException("SpriteCache.begin must be called before draw.");
    SpriteCache.Cache localCache = (SpriteCache.Cache)this.caches.get(paramInt1);
    int j = paramInt2 * 6 + localCache.offset;
    int k = paramInt3 * 6;
    Texture[] arrayOfTexture = localCache.textures;
    int[] arrayOfInt = localCache.counts;
    if (Gdx.graphics.isGL20Available())
    {
      int i6 = localCache.textureCount;
      int i7 = k;
      if (i < i6)
      {
        arrayOfTexture[i].bind();
        int i8 = arrayOfInt[i];
        int i10;
        int i11;
        if (i8 > i7)
        {
          i10 = i6;
          i11 = i7;
          label125: if (this.customShader == null)
            break label194;
          this.mesh.render(this.customShader, 4, j, i7);
        }
        while (true)
        {
          j += i7;
          int i12 = i10 + 1;
          i7 = i11;
          i = i12;
          break;
          int i9 = i7 - i8;
          i10 = i;
          i11 = i9;
          i7 = i8;
          break label125;
          label194: this.mesh.render(this.shader, 4, j, i7);
        }
      }
    }
    else
    {
      int m = localCache.textureCount;
      int n = k;
      if (i < m)
      {
        arrayOfTexture[i].bind();
        int i1 = arrayOfInt[i];
        int i3;
        int i4;
        if (i1 > n)
        {
          i3 = m;
          i4 = n;
        }
        while (true)
        {
          this.mesh.render(4, j, n);
          j += n;
          int i5 = i3 + 1;
          n = i4;
          i = i5;
          break;
          int i2 = n - i1;
          i3 = i;
          i4 = i2;
          n = i1;
        }
      }
    }
  }

  public void end()
  {
    if (!this.drawing)
      throw new IllegalStateException("begin must be called before end.");
    this.drawing = false;
    if (!Gdx.graphics.isGL20Available())
    {
      GL10 localGL10 = Gdx.gl10;
      localGL10.glDepthMask(true);
      localGL10.glDisable(3553);
      this.mesh.unbind();
      return;
    }
    this.shader.end();
    Gdx.gl20.glDepthMask(true);
    this.mesh.unbind(this.shader);
  }

  public int endCache()
  {
    int i = 0;
    if (this.currentCache == null)
      throw new IllegalStateException("beginCache must be called before endCache.");
    SpriteCache.Cache localCache1 = this.currentCache;
    int j = this.mesh.getVerticesBuffer().position() - localCache1.offset;
    if (localCache1.textures == null)
    {
      localCache1.maxCount = j;
      localCache1.textureCount = this.textures.size();
      localCache1.textures = ((Texture[])this.textures.toArray(new Texture[localCache1.textureCount]));
      localCache1.counts = new int[localCache1.textureCount];
      int i2 = this.counts.size();
      while (i < i2)
      {
        localCache1.counts[i] = ((Integer)this.counts.get(i)).intValue();
        i++;
      }
      this.mesh.getVerticesBuffer().flip();
    }
    while (true)
    {
      this.currentCache = null;
      this.textures.clear();
      this.counts.clear();
      return localCache1.id;
      if (j > localCache1.maxCount)
        throw new GdxRuntimeException("If a cache is not the last created, it cannot be redefined with more entries than when it was first created: " + j + " (" + localCache1.maxCount + " max)");
      localCache1.textureCount = this.textures.size();
      if (localCache1.textures.length < localCache1.textureCount)
        localCache1.textures = new Texture[localCache1.textureCount];
      int k = localCache1.textureCount;
      for (int m = 0; m < k; m++)
        localCache1.textures[m] = ((Texture)this.textures.get(m));
      if (localCache1.counts.length < localCache1.textureCount)
        localCache1.counts = new int[localCache1.textureCount];
      int n = localCache1.textureCount;
      for (int i1 = 0; i1 < n; i1++)
        localCache1.counts[i1] = ((Integer)this.counts.get(i1)).intValue();
      FloatBuffer localFloatBuffer = this.mesh.getVerticesBuffer();
      localFloatBuffer.position(0);
      SpriteCache.Cache localCache2 = (SpriteCache.Cache)this.caches.get(-1 + this.caches.size());
      localFloatBuffer.limit(localCache2.offset + localCache2.maxCount);
    }
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
      throw new IllegalStateException("Can't set the matrix within begin/end.");
    this.projectionMatrix.set(paramMatrix4);
  }

  public void setShader(ShaderProgram paramShaderProgram)
  {
    this.customShader = paramShaderProgram;
  }

  public void setTransformMatrix(Matrix4 paramMatrix4)
  {
    if (this.drawing)
      throw new IllegalStateException("Can't set the matrix within begin/end.");
    this.transformMatrix.set(paramMatrix4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.SpriteCache
 * JD-Core Version:    0.6.2
 */
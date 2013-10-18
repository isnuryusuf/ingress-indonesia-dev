package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;
import java.lang.reflect.Array;

public class TextureRegion
{
  int regionHeight;
  int regionWidth;
  Texture texture;
  float u;
  float u2;
  float v;
  float v2;

  public TextureRegion()
  {
  }

  public TextureRegion(Texture paramTexture)
  {
    if (paramTexture == null)
      throw new IllegalArgumentException("texture cannot be null.");
    this.texture = paramTexture;
    setRegion(0, 0, paramTexture.getWidth(), paramTexture.getHeight());
  }

  public TextureRegion(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.texture = paramTexture;
    setRegion(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public TextureRegion(Texture paramTexture, int paramInt1, int paramInt2)
  {
    this.texture = paramTexture;
    setRegion(0, 0, paramInt1, paramInt2);
  }

  public TextureRegion(Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.texture = paramTexture;
    setRegion(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public TextureRegion(TextureRegion paramTextureRegion)
  {
    setRegion(paramTextureRegion);
  }

  public TextureRegion(TextureRegion paramTextureRegion, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setRegion(paramTextureRegion, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public static TextureRegion[][] split(Texture paramTexture, int paramInt1, int paramInt2)
  {
    return new TextureRegion(paramTexture).split(paramInt1, paramInt2);
  }

  public void flip(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      float f2 = this.u;
      this.u = this.u2;
      this.u2 = f2;
    }
    if (paramBoolean2)
    {
      float f1 = this.v;
      this.v = this.v2;
      this.v2 = f1;
    }
  }

  public int getRegionHeight()
  {
    return this.regionHeight;
  }

  public int getRegionWidth()
  {
    return this.regionWidth;
  }

  public int getRegionX()
  {
    return Math.round(this.u * this.texture.getWidth());
  }

  public int getRegionY()
  {
    return Math.round(this.v * this.texture.getHeight());
  }

  public Texture getTexture()
  {
    return this.texture;
  }

  public float getU()
  {
    return this.u;
  }

  public float getU2()
  {
    return this.u2;
  }

  public float getV()
  {
    return this.v;
  }

  public float getV2()
  {
    return this.v2;
  }

  public boolean isFlipX()
  {
    return this.u > this.u2;
  }

  public boolean isFlipY()
  {
    return this.v > this.v2;
  }

  public void scroll(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 != 0.0F)
    {
      float f2 = (this.u2 - this.u) * this.texture.getWidth();
      this.u = ((paramFloat1 + this.u) % 1.0F);
      this.u2 = (this.u + f2 / this.texture.getWidth());
    }
    if (paramFloat2 != 0.0F)
    {
      float f1 = (this.v2 - this.v) * this.texture.getHeight();
      this.v = ((paramFloat2 + this.v) % 1.0F);
      this.v2 = (this.v + f1 / this.texture.getHeight());
    }
  }

  public void setRegion(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.u = paramFloat1;
    this.v = paramFloat2;
    this.u2 = paramFloat3;
    this.v2 = paramFloat4;
    this.regionWidth = Math.round(Math.abs(paramFloat3 - paramFloat1) * this.texture.getWidth());
    this.regionHeight = Math.round(Math.abs(paramFloat4 - paramFloat2) * this.texture.getHeight());
  }

  public void setRegion(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = 1.0F / this.texture.getWidth();
    float f2 = 1.0F / this.texture.getHeight();
    setRegion(f1 * paramInt1, f2 * paramInt2, f1 * (paramInt1 + paramInt3), f2 * (paramInt2 + paramInt4));
    this.regionWidth = Math.abs(paramInt3);
    this.regionHeight = Math.abs(paramInt4);
  }

  public void setRegion(Texture paramTexture)
  {
    this.texture = paramTexture;
    setRegion(0, 0, paramTexture.getWidth(), paramTexture.getHeight());
  }

  public void setRegion(TextureRegion paramTextureRegion)
  {
    this.texture = paramTextureRegion.texture;
    setRegion(paramTextureRegion.u, paramTextureRegion.v, paramTextureRegion.u2, paramTextureRegion.v2);
  }

  public void setRegion(TextureRegion paramTextureRegion, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.texture = paramTextureRegion.texture;
    setRegion(paramInt1 + paramTextureRegion.getRegionX(), paramInt2 + paramTextureRegion.getRegionY(), paramInt3, paramInt4);
  }

  public void setRegionHeight(int paramInt)
  {
    setV2(this.v + paramInt / this.texture.getHeight());
  }

  public void setRegionWidth(int paramInt)
  {
    setU2(this.u + paramInt / this.texture.getWidth());
  }

  public void setRegionX(int paramInt)
  {
    setU(paramInt / this.texture.getWidth());
  }

  public void setRegionY(int paramInt)
  {
    setV(paramInt / this.texture.getHeight());
  }

  public void setTexture(Texture paramTexture)
  {
    this.texture = paramTexture;
  }

  public void setU(float paramFloat)
  {
    this.u = paramFloat;
    this.regionWidth = Math.round(Math.abs(this.u2 - paramFloat) * this.texture.getWidth());
  }

  public void setU2(float paramFloat)
  {
    this.u2 = paramFloat;
    this.regionWidth = Math.round(Math.abs(paramFloat - this.u) * this.texture.getWidth());
  }

  public void setV(float paramFloat)
  {
    this.v = paramFloat;
    this.regionHeight = Math.round(Math.abs(this.v2 - paramFloat) * this.texture.getHeight());
  }

  public void setV2(float paramFloat)
  {
    this.v2 = paramFloat;
    this.regionHeight = Math.round(Math.abs(paramFloat - this.v) * this.texture.getHeight());
  }

  public TextureRegion[][] split(int paramInt1, int paramInt2)
  {
    int i = getRegionX();
    int j = getRegionY();
    int k = this.regionWidth;
    int m = this.regionHeight / paramInt2;
    int n = k / paramInt1;
    TextureRegion[][] arrayOfTextureRegion = (TextureRegion[][])Array.newInstance(TextureRegion.class, new int[] { m, n });
    int i4;
    for (int i1 = 0; i1 < m; i1 = i4)
    {
      int i2 = 0;
      int i3 = i;
      while (i2 < n)
      {
        arrayOfTextureRegion[i1][i2] = new TextureRegion(this.texture, i3, j, paramInt1, paramInt2);
        int i5 = i2 + 1;
        i3 += paramInt1;
        i2 = i5;
      }
      i4 = i1 + 1;
      j += paramInt2;
    }
    return arrayOfTextureRegion;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.TextureRegion
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.scenes.scene2d.ui.Padding;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class NinePatch
{
  public static final int BOTTOM_CENTER = 7;
  public static final int BOTTOM_LEFT = 6;
  public static final int BOTTOM_RIGHT = 8;
  public static final int MIDDLE_CENTER = 4;
  public static final int MIDDLE_LEFT = 3;
  public static final int MIDDLE_RIGHT = 5;
  public static final int TOP_CENTER = 1;
  public static final int TOP_LEFT = 0;
  public static final int TOP_RIGHT = 2;
  private static final Color tempColor = new Color();
  private int bottomCenter = -1;
  private float bottomHeight;
  private int bottomLeft = -1;
  private int bottomRight = -1;
  private final Color color = new Color(Color.WHITE);
  private int idx;
  private float leftWidth;
  private int middleCenter = -1;
  private float middleHeight;
  private int middleLeft = -1;
  private int middleRight = -1;
  private float middleWidth;
  private String name;
  private Padding padding;
  private float rightWidth;
  private Texture texture;
  private int topCenter = -1;
  private float topHeight;
  private int topLeft = -1;
  private int topRight = -1;
  private float[] vertices = new float['´'];

  public NinePatch(Texture paramTexture)
  {
    this(new TextureRegion(paramTexture));
  }

  public NinePatch(Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(new TextureRegion(paramTexture), paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public NinePatch(Texture paramTexture, Color paramColor)
  {
    this(paramTexture);
    setColor(paramColor);
  }

  public NinePatch(NinePatch paramNinePatch)
  {
    this(paramNinePatch, new Color(paramNinePatch.color));
  }

  public NinePatch(NinePatch paramNinePatch, Color paramColor)
  {
    this.texture = paramNinePatch.texture;
    this.bottomLeft = paramNinePatch.bottomLeft;
    this.bottomCenter = paramNinePatch.bottomCenter;
    this.bottomRight = paramNinePatch.bottomRight;
    this.middleLeft = paramNinePatch.middleLeft;
    this.middleCenter = paramNinePatch.middleCenter;
    this.middleRight = paramNinePatch.middleRight;
    this.topLeft = paramNinePatch.topLeft;
    this.topCenter = paramNinePatch.topCenter;
    this.topRight = paramNinePatch.topRight;
    this.leftWidth = paramNinePatch.leftWidth;
    this.rightWidth = paramNinePatch.rightWidth;
    this.middleWidth = paramNinePatch.middleWidth;
    this.middleHeight = paramNinePatch.middleHeight;
    this.topHeight = paramNinePatch.topHeight;
    this.bottomHeight = paramNinePatch.bottomHeight;
    this.vertices = new float[paramNinePatch.vertices.length];
    System.arraycopy(paramNinePatch.vertices, 0, this.vertices, 0, paramNinePatch.vertices.length);
    this.idx = paramNinePatch.idx;
    this.color.set(paramColor);
  }

  public NinePatch(TextureRegion paramTextureRegion)
  {
    load(new TextureRegion[] { null, null, null, null, paramTextureRegion, null, null, null, null });
  }

  public NinePatch(TextureRegion paramTextureRegion, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramTextureRegion == null)
      throw new IllegalArgumentException("region cannot be null.");
    int i = paramTextureRegion.getRegionWidth() - paramInt1 - paramInt2;
    int j = paramTextureRegion.getRegionHeight() - paramInt3 - paramInt4;
    TextureRegion[] arrayOfTextureRegion = new TextureRegion[9];
    if (paramInt3 > 0)
    {
      if (paramInt1 > 0)
        arrayOfTextureRegion[0] = new TextureRegion(paramTextureRegion, 0, 0, paramInt1, paramInt3);
      if (i > 0)
        arrayOfTextureRegion[1] = new TextureRegion(paramTextureRegion, paramInt1, 0, i, paramInt3);
      if (paramInt2 > 0)
        arrayOfTextureRegion[2] = new TextureRegion(paramTextureRegion, paramInt1 + i, 0, paramInt2, paramInt3);
    }
    if (j > 0)
    {
      if (paramInt1 > 0)
        arrayOfTextureRegion[3] = new TextureRegion(paramTextureRegion, 0, paramInt3, paramInt1, j);
      if (i > 0)
        arrayOfTextureRegion[4] = new TextureRegion(paramTextureRegion, paramInt1, paramInt3, i, j);
      if (paramInt2 > 0)
        arrayOfTextureRegion[5] = new TextureRegion(paramTextureRegion, paramInt1 + i, paramInt3, paramInt2, j);
    }
    if (paramInt4 > 0)
    {
      if (paramInt1 > 0)
        arrayOfTextureRegion[6] = new TextureRegion(paramTextureRegion, 0, paramInt3 + j, paramInt1, paramInt4);
      if (i > 0)
        arrayOfTextureRegion[7] = new TextureRegion(paramTextureRegion, paramInt1, paramInt3 + j, i, paramInt4);
      if (paramInt2 > 0)
        arrayOfTextureRegion[8] = new TextureRegion(paramTextureRegion, paramInt1 + i, paramInt3 + j, paramInt2, paramInt4);
    }
    if ((paramInt1 == 0) && (i == 0))
    {
      arrayOfTextureRegion[1] = arrayOfTextureRegion[2];
      arrayOfTextureRegion[4] = arrayOfTextureRegion[5];
      arrayOfTextureRegion[7] = arrayOfTextureRegion[8];
      arrayOfTextureRegion[2] = null;
      arrayOfTextureRegion[5] = null;
      arrayOfTextureRegion[8] = null;
    }
    if ((paramInt3 == 0) && (j == 0))
    {
      arrayOfTextureRegion[3] = arrayOfTextureRegion[6];
      arrayOfTextureRegion[4] = arrayOfTextureRegion[7];
      arrayOfTextureRegion[5] = arrayOfTextureRegion[8];
      arrayOfTextureRegion[6] = null;
      arrayOfTextureRegion[7] = null;
      arrayOfTextureRegion[8] = null;
    }
    load(arrayOfTextureRegion);
  }

  public NinePatch(TextureRegion paramTextureRegion, Color paramColor)
  {
    this(paramTextureRegion);
    setColor(paramColor);
  }

  public NinePatch(TextureRegion[] paramArrayOfTextureRegion)
  {
    if ((paramArrayOfTextureRegion == null) || (paramArrayOfTextureRegion.length != 9))
      throw new IllegalArgumentException("NinePatch needs nine TextureRegions");
    load(paramArrayOfTextureRegion);
    float f1 = getLeftWidth();
    if (((paramArrayOfTextureRegion[0] != null) && (paramArrayOfTextureRegion[0].getRegionWidth() != f1)) || ((paramArrayOfTextureRegion[3] != null) && (paramArrayOfTextureRegion[3].getRegionWidth() != f1)) || ((paramArrayOfTextureRegion[6] != null) && (paramArrayOfTextureRegion[6].getRegionWidth() != f1)))
      throw new GdxRuntimeException("Left side patches must have the same width");
    float f2 = getRightWidth();
    if (((paramArrayOfTextureRegion[2] != null) && (paramArrayOfTextureRegion[2].getRegionWidth() != f2)) || ((paramArrayOfTextureRegion[5] != null) && (paramArrayOfTextureRegion[5].getRegionWidth() != f2)) || ((paramArrayOfTextureRegion[8] != null) && (paramArrayOfTextureRegion[8].getRegionWidth() != f2)))
      throw new GdxRuntimeException("Right side patches must have the same width");
    float f3 = getBottomHeight();
    if (((paramArrayOfTextureRegion[6] != null) && (paramArrayOfTextureRegion[6].getRegionHeight() != f3)) || ((paramArrayOfTextureRegion[7] != null) && (paramArrayOfTextureRegion[7].getRegionHeight() != f3)) || ((paramArrayOfTextureRegion[8] != null) && (paramArrayOfTextureRegion[8].getRegionHeight() != f3)))
      throw new GdxRuntimeException("Bottom side patches must have the same height");
    float f4 = getTopHeight();
    if (((paramArrayOfTextureRegion[0] != null) && (paramArrayOfTextureRegion[0].getRegionHeight() != f4)) || ((paramArrayOfTextureRegion[1] != null) && (paramArrayOfTextureRegion[1].getRegionHeight() != f4)) || ((paramArrayOfTextureRegion[2] != null) && (paramArrayOfTextureRegion[2].getRegionHeight() != f4)))
      throw new GdxRuntimeException("Top side patches must have the same height");
  }

  private int add(TextureRegion paramTextureRegion, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.texture == null)
      this.texture = paramTextureRegion.getTexture();
    while (this.texture == paramTextureRegion.getTexture())
    {
      float f1 = paramTextureRegion.u;
      float f2 = paramTextureRegion.v2;
      float f3 = paramTextureRegion.u2;
      float f4 = paramTextureRegion.v;
      if (paramBoolean1)
      {
        float f6 = 0.5F / this.texture.getWidth();
        f1 += f6;
        f3 -= f6;
      }
      if (paramBoolean2)
      {
        float f5 = 0.5F / this.texture.getHeight();
        f2 -= f5;
        f4 += f5;
      }
      this.idx = (2 + this.idx);
      float[] arrayOfFloat1 = this.vertices;
      int i = this.idx;
      this.idx = (i + 1);
      arrayOfFloat1[i] = paramFloat;
      float[] arrayOfFloat2 = this.vertices;
      int j = this.idx;
      this.idx = (j + 1);
      arrayOfFloat2[j] = f1;
      this.vertices[this.idx] = f2;
      this.idx = (3 + this.idx);
      float[] arrayOfFloat3 = this.vertices;
      int k = this.idx;
      this.idx = (k + 1);
      arrayOfFloat3[k] = paramFloat;
      float[] arrayOfFloat4 = this.vertices;
      int m = this.idx;
      this.idx = (m + 1);
      arrayOfFloat4[m] = f1;
      this.vertices[this.idx] = f4;
      this.idx = (3 + this.idx);
      float[] arrayOfFloat5 = this.vertices;
      int n = this.idx;
      this.idx = (n + 1);
      arrayOfFloat5[n] = paramFloat;
      float[] arrayOfFloat6 = this.vertices;
      int i1 = this.idx;
      this.idx = (i1 + 1);
      arrayOfFloat6[i1] = f3;
      this.vertices[this.idx] = f4;
      this.idx = (3 + this.idx);
      float[] arrayOfFloat7 = this.vertices;
      int i2 = this.idx;
      this.idx = (i2 + 1);
      arrayOfFloat7[i2] = paramFloat;
      float[] arrayOfFloat8 = this.vertices;
      int i3 = this.idx;
      this.idx = (i3 + 1);
      arrayOfFloat8[i3] = f3;
      float[] arrayOfFloat9 = this.vertices;
      int i4 = this.idx;
      this.idx = (i4 + 1);
      arrayOfFloat9[i4] = f2;
      return -20 + this.idx;
    }
    throw new IllegalArgumentException("All regions must be from the same texture.");
  }

  private void load(TextureRegion[] paramArrayOfTextureRegion)
  {
    float f = Color.WHITE.toFloatBits();
    if (paramArrayOfTextureRegion[6] != null)
    {
      this.bottomLeft = add(paramArrayOfTextureRegion[6], f, false, false);
      this.leftWidth = paramArrayOfTextureRegion[6].getRegionWidth();
      this.bottomHeight = paramArrayOfTextureRegion[6].getRegionHeight();
    }
    if (paramArrayOfTextureRegion[7] != null)
    {
      this.bottomCenter = add(paramArrayOfTextureRegion[7], f, true, false);
      this.middleWidth = Math.max(this.middleWidth, paramArrayOfTextureRegion[7].getRegionWidth());
      this.bottomHeight = Math.max(this.bottomHeight, paramArrayOfTextureRegion[7].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[8] != null)
    {
      this.bottomRight = add(paramArrayOfTextureRegion[8], f, false, false);
      this.rightWidth = Math.max(this.rightWidth, paramArrayOfTextureRegion[8].getRegionWidth());
      this.bottomHeight = Math.max(this.bottomHeight, paramArrayOfTextureRegion[8].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[3] != null)
    {
      this.middleLeft = add(paramArrayOfTextureRegion[3], f, false, true);
      this.leftWidth = Math.max(this.leftWidth, paramArrayOfTextureRegion[3].getRegionWidth());
      this.middleHeight = Math.max(this.middleHeight, paramArrayOfTextureRegion[3].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[4] != null)
    {
      this.middleCenter = add(paramArrayOfTextureRegion[4], f, true, true);
      this.middleWidth = Math.max(this.middleWidth, paramArrayOfTextureRegion[4].getRegionWidth());
      this.middleHeight = Math.max(this.middleHeight, paramArrayOfTextureRegion[4].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[5] != null)
    {
      this.middleRight = add(paramArrayOfTextureRegion[5], f, false, true);
      this.rightWidth = Math.max(this.rightWidth, paramArrayOfTextureRegion[5].getRegionWidth());
      this.middleHeight = Math.max(this.middleHeight, paramArrayOfTextureRegion[5].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[0] != null)
    {
      this.topLeft = add(paramArrayOfTextureRegion[0], f, false, false);
      this.leftWidth = Math.max(this.leftWidth, paramArrayOfTextureRegion[0].getRegionWidth());
      this.topHeight = Math.max(this.topHeight, paramArrayOfTextureRegion[0].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[1] != null)
    {
      this.topCenter = add(paramArrayOfTextureRegion[1], f, true, false);
      this.middleWidth = Math.max(this.middleWidth, paramArrayOfTextureRegion[1].getRegionWidth());
      this.topHeight = Math.max(this.topHeight, paramArrayOfTextureRegion[1].getRegionHeight());
    }
    if (paramArrayOfTextureRegion[2] != null)
    {
      this.topRight = add(paramArrayOfTextureRegion[2], f, false, false);
      this.rightWidth = Math.max(this.rightWidth, paramArrayOfTextureRegion[2].getRegionWidth());
      this.topHeight = Math.max(this.topHeight, paramArrayOfTextureRegion[2].getRegionHeight());
    }
    if (this.idx < this.vertices.length)
    {
      float[] arrayOfFloat = new float[this.idx];
      System.arraycopy(this.vertices, 0, arrayOfFloat, 0, this.idx);
      this.vertices = arrayOfFloat;
    }
  }

  private void set(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float[] arrayOfFloat1 = this.vertices;
    int i = paramInt + 1;
    arrayOfFloat1[paramInt] = paramFloat1;
    float[] arrayOfFloat2 = this.vertices;
    int j = i + 1;
    arrayOfFloat2[i] = paramFloat2;
    this.vertices[j] = paramFloat5;
    int k = j + 3;
    float[] arrayOfFloat3 = this.vertices;
    int m = k + 1;
    arrayOfFloat3[k] = paramFloat1;
    float[] arrayOfFloat4 = this.vertices;
    int n = m + 1;
    arrayOfFloat4[m] = f2;
    this.vertices[n] = paramFloat5;
    int i1 = n + 3;
    float[] arrayOfFloat5 = this.vertices;
    int i2 = i1 + 1;
    arrayOfFloat5[i1] = f1;
    float[] arrayOfFloat6 = this.vertices;
    int i3 = i2 + 1;
    arrayOfFloat6[i2] = f2;
    this.vertices[i3] = paramFloat5;
    int i4 = i3 + 3;
    float[] arrayOfFloat7 = this.vertices;
    int i5 = i4 + 1;
    arrayOfFloat7[i4] = f1;
    float[] arrayOfFloat8 = this.vertices;
    int i6 = i5 + 1;
    arrayOfFloat8[i5] = paramFloat2;
    this.vertices[i6] = paramFloat5;
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 + this.leftWidth;
    float f2 = paramFloat1 + paramFloat3 - this.rightWidth;
    float f3 = paramFloat2 + this.bottomHeight;
    float f4 = paramFloat2 + paramFloat4 - this.topHeight;
    float f5 = tempColor.set(this.color).mul(paramSpriteBatch.getColor()).toFloatBits();
    if (this.bottomLeft != -1)
      set(this.bottomLeft, paramFloat1, paramFloat2, f1 - paramFloat1, f3 - paramFloat2, f5);
    if (this.bottomCenter != -1)
      set(this.bottomCenter, f1, paramFloat2, f2 - f1, f3 - paramFloat2, f5);
    if (this.bottomRight != -1)
      set(this.bottomRight, f2, paramFloat2, paramFloat1 + paramFloat3 - f2, f3 - paramFloat2, f5);
    if (this.middleLeft != -1)
      set(this.middleLeft, paramFloat1, f3, f1 - paramFloat1, f4 - f3, f5);
    if (this.middleCenter != -1)
      set(this.middleCenter, f1, f3, f2 - f1, f4 - f3, f5);
    if (this.middleRight != -1)
      set(this.middleRight, f2, f3, paramFloat1 + paramFloat3 - f2, f4 - f3, f5);
    if (this.topLeft != -1)
      set(this.topLeft, paramFloat1, f4, f1 - paramFloat1, paramFloat2 + paramFloat4 - f4, f5);
    if (this.topCenter != -1)
      set(this.topCenter, f1, f4, f2 - f1, paramFloat2 + paramFloat4 - f4, f5);
    if (this.topRight != -1)
      set(this.topRight, f2, f4, paramFloat1 + paramFloat3 - f2, paramFloat2 + paramFloat4 - f4, f5);
    paramSpriteBatch.draw(this.texture, this.vertices, 0, this.idx);
  }

  public float getBottomHeight()
  {
    return this.bottomHeight;
  }

  public Color getColor()
  {
    return this.color;
  }

  public float getLeftWidth()
  {
    return this.leftWidth;
  }

  public float getMiddleHeight()
  {
    return this.middleHeight;
  }

  public float getMiddleWidth()
  {
    return this.middleWidth;
  }

  public String getName()
  {
    return this.name;
  }

  public Padding getPadding()
  {
    return this.padding;
  }

  public float getRightWidth()
  {
    return this.rightWidth;
  }

  public float getTopHeight()
  {
    return this.topHeight;
  }

  public float getTotalHeight()
  {
    return this.topHeight + this.middleHeight + this.bottomHeight;
  }

  public float getTotalWidth()
  {
    return this.leftWidth + this.middleWidth + this.rightWidth;
  }

  public void setBottomHeight(float paramFloat)
  {
    this.bottomHeight = paramFloat;
  }

  public void setColor(Color paramColor)
  {
    this.color.set(paramColor);
  }

  public void setLeftWidth(float paramFloat)
  {
    this.leftWidth = paramFloat;
  }

  public void setMiddleHeight(float paramFloat)
  {
    this.middleHeight = paramFloat;
  }

  public void setMiddleWidth(float paramFloat)
  {
    this.middleWidth = paramFloat;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setPadding(Padding paramPadding)
  {
    this.padding = paramPadding;
  }

  public void setRightWidth(float paramFloat)
  {
    this.rightWidth = paramFloat;
  }

  public void setTopHeight(float paramFloat)
  {
    this.topHeight = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.NinePatch
 * JD-Core Version:    0.6.2
 */
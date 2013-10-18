package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.NumberUtils;

public class Sprite extends TextureRegion
{
  static final int SPRITE_SIZE = 20;
  static final int VERTEX_SIZE = 5;
  private Rectangle bounds;
  private final Color color = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  private boolean dirty = true;
  float height;
  private float originX;
  private float originY;
  private float rotation;
  private float scaleX = 1.0F;
  private float scaleY = 1.0F;
  final float[] vertices = new float[20];
  float width;
  private float x;
  private float y;

  public Sprite()
  {
    setColor(1.0F, 1.0F, 1.0F, 1.0F);
  }

  public Sprite(Texture paramTexture)
  {
    this(paramTexture, 0, 0, paramTexture.getWidth(), paramTexture.getHeight());
  }

  public Sprite(Texture paramTexture, int paramInt1, int paramInt2)
  {
    this(paramTexture, 0, 0, paramInt1, paramInt2);
  }

  public Sprite(Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramTexture == null)
      throw new IllegalArgumentException("texture cannot be null.");
    this.texture = paramTexture;
    setRegion(paramInt1, paramInt2, paramInt3, paramInt4);
    setColor(1.0F, 1.0F, 1.0F, 1.0F);
    setSize(Math.abs(paramInt3), Math.abs(paramInt4));
    setOrigin(this.width / 2.0F, this.height / 2.0F);
  }

  public Sprite(Sprite paramSprite)
  {
    set(paramSprite);
  }

  public Sprite(TextureRegion paramTextureRegion)
  {
    setRegion(paramTextureRegion);
    setColor(1.0F, 1.0F, 1.0F, 1.0F);
    setSize(paramTextureRegion.getRegionWidth(), paramTextureRegion.getRegionHeight());
    setOrigin(this.width / 2.0F, this.height / 2.0F);
  }

  public Sprite(TextureRegion paramTextureRegion, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setRegion(paramTextureRegion, paramInt1, paramInt2, paramInt3, paramInt4);
    setColor(1.0F, 1.0F, 1.0F, 1.0F);
    setSize(Math.abs(paramInt3), Math.abs(paramInt4));
    setOrigin(this.width / 2.0F, this.height / 2.0F);
  }

  public void draw(SpriteBatch paramSpriteBatch)
  {
    paramSpriteBatch.draw(this.texture, getVertices(), 0, 20);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Color localColor = getColor();
    float f = localColor.a;
    localColor.a = (paramFloat * localColor.a);
    setColor(localColor);
    draw(paramSpriteBatch);
    localColor.a = f;
    setColor(localColor);
  }

  public void flip(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.flip(paramBoolean1, paramBoolean2);
    float[] arrayOfFloat = this.vertices;
    if (paramBoolean1)
    {
      float f3 = arrayOfFloat[3];
      arrayOfFloat[3] = arrayOfFloat[13];
      arrayOfFloat[13] = f3;
      float f4 = arrayOfFloat[8];
      arrayOfFloat[8] = arrayOfFloat[18];
      arrayOfFloat[18] = f4;
    }
    if (paramBoolean2)
    {
      float f1 = arrayOfFloat[4];
      arrayOfFloat[4] = arrayOfFloat[14];
      arrayOfFloat[14] = f1;
      float f2 = arrayOfFloat[9];
      arrayOfFloat[9] = arrayOfFloat[19];
      arrayOfFloat[19] = f2;
    }
  }

  public Rectangle getBoundingRectangle()
  {
    float[] arrayOfFloat = getVertices();
    float f1 = arrayOfFloat[0];
    float f2 = arrayOfFloat[1];
    float f3 = arrayOfFloat[0];
    float f4 = arrayOfFloat[1];
    if (f1 > arrayOfFloat[5])
      f1 = arrayOfFloat[5];
    if (f1 > arrayOfFloat[10])
      f1 = arrayOfFloat[10];
    if (f1 > arrayOfFloat[15])
      f1 = arrayOfFloat[15];
    if (f3 < arrayOfFloat[5])
      f3 = arrayOfFloat[5];
    if (f3 < arrayOfFloat[10])
      f3 = arrayOfFloat[10];
    if (f3 < arrayOfFloat[15])
      f3 = arrayOfFloat[15];
    if (f2 > arrayOfFloat[6])
      f2 = arrayOfFloat[6];
    if (f2 > arrayOfFloat[11])
      f2 = arrayOfFloat[11];
    if (f2 > arrayOfFloat[16])
      f2 = arrayOfFloat[16];
    if (f4 < arrayOfFloat[6])
      f4 = arrayOfFloat[6];
    if (f4 < arrayOfFloat[11])
      f4 = arrayOfFloat[11];
    if (f4 < arrayOfFloat[16])
      f4 = arrayOfFloat[16];
    if (this.bounds == null)
      this.bounds = new Rectangle();
    this.bounds.x = f1;
    this.bounds.y = f2;
    this.bounds.width = (f3 - f1);
    this.bounds.height = (f4 - f2);
    return this.bounds;
  }

  public Color getColor()
  {
    int i = NumberUtils.floatToIntColor(this.vertices[2]);
    Color localColor = this.color;
    localColor.r = ((i & 0xFF) / 255.0F);
    localColor.g = ((0xFF & i >>> 8) / 255.0F);
    localColor.b = ((0xFF & i >>> 16) / 255.0F);
    localColor.a = ((0xFF & i >>> 24) / 255.0F);
    return localColor;
  }

  public float getHeight()
  {
    return this.height;
  }

  public float getOriginX()
  {
    return this.originX;
  }

  public float getOriginY()
  {
    return this.originY;
  }

  public float getRotation()
  {
    return this.rotation;
  }

  public float getScaleX()
  {
    return this.scaleX;
  }

  public float getScaleY()
  {
    return this.scaleY;
  }

  public float[] getVertices()
  {
    float[] arrayOfFloat;
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    if (this.dirty)
    {
      this.dirty = false;
      arrayOfFloat = this.vertices;
      f1 = -this.originX;
      f2 = -this.originY;
      f3 = f1 + this.width;
      f4 = f2 + this.height;
      f5 = this.x - f1;
      f6 = this.y - f2;
      if ((this.scaleX != 1.0F) || (this.scaleY != 1.0F))
      {
        f1 *= this.scaleX;
        f2 *= this.scaleY;
        f3 *= this.scaleX;
        f4 *= this.scaleY;
      }
      if (this.rotation == 0.0F)
        break label312;
      float f11 = MathUtils.cosDeg(this.rotation);
      float f12 = MathUtils.sinDeg(this.rotation);
      float f13 = f1 * f11;
      float f14 = f1 * f12;
      float f15 = f2 * f11;
      float f16 = f2 * f12;
      float f17 = f3 * f11;
      float f18 = f3 * f12;
      float f19 = f11 * f4;
      float f20 = f4 * f12;
      float f21 = f5 + (f13 - f16);
      float f22 = f6 + (f15 + f14);
      arrayOfFloat[0] = f21;
      arrayOfFloat[1] = f22;
      float f23 = f5 + (f13 - f20);
      float f24 = f6 + (f14 + f19);
      arrayOfFloat[5] = f23;
      arrayOfFloat[6] = f24;
      float f25 = f5 + (f17 - f20);
      float f26 = f6 + (f18 + f19);
      arrayOfFloat[10] = f25;
      arrayOfFloat[11] = f26;
      arrayOfFloat[15] = (f21 + (f25 - f23));
      arrayOfFloat[16] = (f26 - (f24 - f22));
    }
    while (true)
    {
      return this.vertices;
      label312: float f7 = f1 + f5;
      float f8 = f2 + f6;
      float f9 = f3 + f5;
      float f10 = f4 + f6;
      arrayOfFloat[0] = f7;
      arrayOfFloat[1] = f8;
      arrayOfFloat[5] = f7;
      arrayOfFloat[6] = f10;
      arrayOfFloat[10] = f9;
      arrayOfFloat[11] = f10;
      arrayOfFloat[15] = f9;
      arrayOfFloat[16] = f8;
    }
  }

  public float getWidth()
  {
    return this.width;
  }

  public float getX()
  {
    return this.x;
  }

  public float getY()
  {
    return this.y;
  }

  public void rotate(float paramFloat)
  {
    this.rotation = (paramFloat + this.rotation);
    this.dirty = true;
  }

  public void rotate90(boolean paramBoolean)
  {
    float[] arrayOfFloat = this.vertices;
    if (paramBoolean)
    {
      float f3 = arrayOfFloat[4];
      arrayOfFloat[4] = arrayOfFloat[19];
      arrayOfFloat[19] = arrayOfFloat[14];
      arrayOfFloat[14] = arrayOfFloat[9];
      arrayOfFloat[9] = f3;
      float f4 = arrayOfFloat[3];
      arrayOfFloat[3] = arrayOfFloat[18];
      arrayOfFloat[18] = arrayOfFloat[13];
      arrayOfFloat[13] = arrayOfFloat[8];
      arrayOfFloat[8] = f4;
      return;
    }
    float f1 = arrayOfFloat[4];
    arrayOfFloat[4] = arrayOfFloat[9];
    arrayOfFloat[9] = arrayOfFloat[14];
    arrayOfFloat[14] = arrayOfFloat[19];
    arrayOfFloat[19] = f1;
    float f2 = arrayOfFloat[3];
    arrayOfFloat[3] = arrayOfFloat[8];
    arrayOfFloat[8] = arrayOfFloat[13];
    arrayOfFloat[13] = arrayOfFloat[18];
    arrayOfFloat[18] = f2;
  }

  public void scale(float paramFloat)
  {
    this.scaleX = (paramFloat + this.scaleX);
    this.scaleY = (paramFloat + this.scaleY);
    this.dirty = true;
  }

  public void scroll(float paramFloat1, float paramFloat2)
  {
    float[] arrayOfFloat = this.vertices;
    if (paramFloat1 != 0.0F)
    {
      float f3 = (paramFloat1 + arrayOfFloat[3]) % 1.0F;
      float f4 = f3 + this.width / this.texture.getWidth();
      this.u = f3;
      this.u2 = f4;
      arrayOfFloat[3] = f3;
      arrayOfFloat[8] = f3;
      arrayOfFloat[13] = f4;
      arrayOfFloat[18] = f4;
    }
    if (paramFloat2 != 0.0F)
    {
      float f1 = (paramFloat2 + arrayOfFloat[9]) % 1.0F;
      float f2 = f1 + this.height / this.texture.getHeight();
      this.v = f1;
      this.v2 = f2;
      arrayOfFloat[4] = f2;
      arrayOfFloat[9] = f1;
      arrayOfFloat[14] = f1;
      arrayOfFloat[19] = f2;
    }
  }

  public void set(Sprite paramSprite)
  {
    if (paramSprite == null)
      throw new IllegalArgumentException("sprite cannot be null.");
    System.arraycopy(paramSprite.vertices, 0, this.vertices, 0, 20);
    this.texture = paramSprite.texture;
    this.u = paramSprite.u;
    this.v = paramSprite.v;
    this.u2 = paramSprite.u2;
    this.v2 = paramSprite.v2;
    this.x = paramSprite.x;
    this.y = paramSprite.y;
    this.width = paramSprite.width;
    this.height = paramSprite.height;
    this.originX = paramSprite.originX;
    this.originY = paramSprite.originY;
    this.rotation = paramSprite.rotation;
    this.scaleX = paramSprite.scaleX;
    this.scaleY = paramSprite.scaleY;
    this.color.set(paramSprite.color);
    this.dirty = paramSprite.dirty;
  }

  public void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
    if (this.dirty);
    do
    {
      return;
      float f1 = paramFloat1 + paramFloat3;
      float f2 = paramFloat2 + paramFloat4;
      float[] arrayOfFloat = this.vertices;
      arrayOfFloat[0] = paramFloat1;
      arrayOfFloat[1] = paramFloat2;
      arrayOfFloat[5] = paramFloat1;
      arrayOfFloat[6] = f2;
      arrayOfFloat[10] = f1;
      arrayOfFloat[11] = f2;
      arrayOfFloat[15] = f1;
      arrayOfFloat[16] = paramFloat2;
    }
    while ((this.rotation == 0.0F) && (this.scaleX == 1.0F) && (this.scaleY == 1.0F));
    this.dirty = true;
  }

  public void setColor(float paramFloat)
  {
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[2] = paramFloat;
    arrayOfFloat[7] = paramFloat;
    arrayOfFloat[12] = paramFloat;
    arrayOfFloat[17] = paramFloat;
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f = NumberUtils.intToFloatColor((int)(255.0F * paramFloat4) << 24 | (int)(255.0F * paramFloat3) << 16 | (int)(255.0F * paramFloat2) << 8 | (int)(255.0F * paramFloat1));
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[2] = f;
    arrayOfFloat[7] = f;
    arrayOfFloat[12] = f;
    arrayOfFloat[17] = f;
  }

  public void setColor(Color paramColor)
  {
    float f = paramColor.toFloatBits();
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[2] = f;
    arrayOfFloat[7] = f;
    arrayOfFloat[12] = f;
    arrayOfFloat[17] = f;
  }

  public void setOrigin(float paramFloat1, float paramFloat2)
  {
    this.originX = paramFloat1;
    this.originY = paramFloat2;
    this.dirty = true;
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    translate(paramFloat1 - this.x, paramFloat2 - this.y);
  }

  public void setRegion(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super.setRegion(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[3] = paramFloat1;
    arrayOfFloat[4] = paramFloat4;
    arrayOfFloat[8] = paramFloat1;
    arrayOfFloat[9] = paramFloat2;
    arrayOfFloat[13] = paramFloat3;
    arrayOfFloat[14] = paramFloat2;
    arrayOfFloat[18] = paramFloat3;
    arrayOfFloat[19] = paramFloat4;
  }

  public void setRotation(float paramFloat)
  {
    this.rotation = paramFloat;
    this.dirty = true;
  }

  public void setScale(float paramFloat)
  {
    this.scaleX = paramFloat;
    this.scaleY = paramFloat;
    this.dirty = true;
  }

  public void setScale(float paramFloat1, float paramFloat2)
  {
    this.scaleX = paramFloat1;
    this.scaleY = paramFloat2;
    this.dirty = true;
  }

  public void setSize(float paramFloat1, float paramFloat2)
  {
    this.width = paramFloat1;
    this.height = paramFloat2;
    if (this.dirty);
    do
    {
      return;
      float f1 = paramFloat1 + this.x;
      float f2 = paramFloat2 + this.y;
      float[] arrayOfFloat = this.vertices;
      arrayOfFloat[0] = this.x;
      arrayOfFloat[1] = this.y;
      arrayOfFloat[5] = this.x;
      arrayOfFloat[6] = f2;
      arrayOfFloat[10] = f1;
      arrayOfFloat[11] = f2;
      arrayOfFloat[15] = f1;
      arrayOfFloat[16] = this.y;
    }
    while ((this.rotation == 0.0F) && (this.scaleX == 1.0F) && (this.scaleY == 1.0F));
    this.dirty = true;
  }

  public void setU(float paramFloat)
  {
    super.setU(paramFloat);
    this.vertices[3] = paramFloat;
    this.vertices[8] = paramFloat;
  }

  public void setU2(float paramFloat)
  {
    super.setU2(paramFloat);
    this.vertices[13] = paramFloat;
    this.vertices[18] = paramFloat;
  }

  public void setV(float paramFloat)
  {
    super.setV(paramFloat);
    this.vertices[9] = paramFloat;
    this.vertices[14] = paramFloat;
  }

  public void setV2(float paramFloat)
  {
    super.setV2(paramFloat);
    this.vertices[4] = paramFloat;
    this.vertices[19] = paramFloat;
  }

  public void setX(float paramFloat)
  {
    translateX(paramFloat - this.x);
  }

  public void setY(float paramFloat)
  {
    translateY(paramFloat - this.y);
  }

  public void translate(float paramFloat1, float paramFloat2)
  {
    this.x = (paramFloat1 + this.x);
    this.y = (paramFloat2 + this.y);
    if (this.dirty)
      return;
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[0] = (paramFloat1 + arrayOfFloat[0]);
    arrayOfFloat[1] = (paramFloat2 + arrayOfFloat[1]);
    arrayOfFloat[5] = (paramFloat1 + arrayOfFloat[5]);
    arrayOfFloat[6] = (paramFloat2 + arrayOfFloat[6]);
    arrayOfFloat[10] = (paramFloat1 + arrayOfFloat[10]);
    arrayOfFloat[11] = (paramFloat2 + arrayOfFloat[11]);
    arrayOfFloat[15] = (paramFloat1 + arrayOfFloat[15]);
    arrayOfFloat[16] = (paramFloat2 + arrayOfFloat[16]);
  }

  public void translateX(float paramFloat)
  {
    this.x = (paramFloat + this.x);
    if (this.dirty)
      return;
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[0] = (paramFloat + arrayOfFloat[0]);
    arrayOfFloat[5] = (paramFloat + arrayOfFloat[5]);
    arrayOfFloat[10] = (paramFloat + arrayOfFloat[10]);
    arrayOfFloat[15] = (paramFloat + arrayOfFloat[15]);
  }

  public void translateY(float paramFloat)
  {
    this.y = (paramFloat + this.y);
    if (this.dirty)
      return;
    float[] arrayOfFloat = this.vertices;
    arrayOfFloat[1] = (paramFloat + arrayOfFloat[1]);
    arrayOfFloat[6] = (paramFloat + arrayOfFloat[6]);
    arrayOfFloat[11] = (paramFloat + arrayOfFloat[11]);
    arrayOfFloat[16] = (paramFloat + arrayOfFloat[16]);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.Sprite
 * JD-Core Version:    0.6.2
 */
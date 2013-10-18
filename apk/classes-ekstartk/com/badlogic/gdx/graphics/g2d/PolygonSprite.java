package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.NumberUtils;

public class PolygonSprite
{
  private Rectangle bounds = new Rectangle();
  private final Color color = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  private boolean dirty;
  private float height;
  private float originX;
  private float originY;
  PolygonRegion region;
  private float rotation;
  private float scaleX = 1.0F;
  private float scaleY = 1.0F;
  private float[] vertices;
  private float width;
  private float x;
  private float y;

  public PolygonSprite(PolygonRegion paramPolygonRegion)
  {
    setRegion(paramPolygonRegion);
    setColor(1.0F, 1.0F, 1.0F, 1.0F);
    setSize(paramPolygonRegion.getRegion().getRegionWidth(), paramPolygonRegion.getRegion().getRegionHeight());
    setOrigin(this.width / 2.0F, this.height / 2.0F);
  }

  public PolygonSprite(PolygonSprite paramPolygonSprite)
  {
    set(paramPolygonSprite);
  }

  public void draw(PolygonSpriteBatch paramPolygonSpriteBatch)
  {
    paramPolygonSpriteBatch.draw(this.region, getVertices(), 0, this.vertices.length);
  }

  public void draw(PolygonSpriteBatch paramPolygonSpriteBatch, float paramFloat)
  {
    Color localColor = getColor();
    float f = localColor.a;
    localColor.a = (paramFloat * localColor.a);
    setColor(localColor);
    draw(paramPolygonSpriteBatch);
    localColor.a = f;
    setColor(localColor);
  }

  public Rectangle getBoundingRectangle()
  {
    int i = 0;
    float[] arrayOfFloat = getVertices();
    float f1 = arrayOfFloat[0];
    float f2 = arrayOfFloat[1];
    float f3 = arrayOfFloat[0];
    float f4 = arrayOfFloat[1];
    while (i < arrayOfFloat.length)
    {
      if (f1 > arrayOfFloat[i])
        f1 = arrayOfFloat[i];
      if (f3 < arrayOfFloat[i])
        f3 = arrayOfFloat[i];
      if (f2 > arrayOfFloat[(i + 1)])
        f2 = arrayOfFloat[(i + 1)];
      if (f4 < arrayOfFloat[(i + 1)])
        f4 = arrayOfFloat[(i + 1)];
      i += 5;
    }
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
    int i = 0;
    if (this.dirty)
    {
      this.dirty = false;
      float f1 = this.x + this.originX;
      float f2 = this.y + this.originY;
      float f3 = this.width / this.region.getRegion().getRegionWidth();
      float f4 = this.height / this.region.getRegion().getRegionHeight();
      float[] arrayOfFloat = this.region.getLocalVertices();
      float f5 = MathUtils.cosDeg(this.rotation);
      float f6 = MathUtils.sinDeg(this.rotation);
      while (i < arrayOfFloat.length)
      {
        float f7 = f3 * arrayOfFloat[i];
        float f8 = f4 * arrayOfFloat[(i + 1)];
        float f9 = f7 - this.originX;
        float f10 = f8 - this.originY;
        if ((this.scaleX != 1.0F) || (this.scaleY != 1.0D))
        {
          f9 *= this.scaleX;
          f10 *= this.scaleY;
        }
        float f11 = f5 * f9 - f6 * f10;
        float f12 = f9 * f6 + f10 * f5;
        float f13 = f11 + f1;
        float f14 = f12 + f2;
        this.vertices[(5 * (i / 2))] = f13;
        this.vertices[(1 + 5 * (i / 2))] = f14;
        i += 2;
      }
    }
    return this.vertices;
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

  public void scale(float paramFloat)
  {
    this.scaleX = (paramFloat + this.scaleX);
    this.scaleY = (paramFloat + this.scaleY);
    this.dirty = true;
  }

  public void set(PolygonSprite paramPolygonSprite)
  {
    if (paramPolygonSprite == null)
      throw new IllegalArgumentException("sprite cannot be null.");
    setRegion(paramPolygonSprite.region);
    this.x = paramPolygonSprite.x;
    this.y = paramPolygonSprite.y;
    this.width = paramPolygonSprite.width;
    this.height = paramPolygonSprite.height;
    this.originX = paramPolygonSprite.originX;
    this.originY = paramPolygonSprite.originY;
    this.rotation = paramPolygonSprite.rotation;
    this.scaleX = paramPolygonSprite.scaleX;
    this.scaleY = paramPolygonSprite.scaleY;
    this.color.set(paramPolygonSprite.color);
    this.dirty = paramPolygonSprite.dirty;
  }

  public void setBounds(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
    this.dirty = true;
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f = NumberUtils.intToFloatColor((int)(255.0F * paramFloat4) << 24 | (int)(255.0F * paramFloat3) << 16 | (int)(255.0F * paramFloat2) << 8 | (int)(255.0F * paramFloat1));
    float[] arrayOfFloat = this.vertices;
    for (int i = 0; i < arrayOfFloat.length; i += 5)
      arrayOfFloat[(i + 2)] = f;
  }

  public void setColor(Color paramColor)
  {
    float f = paramColor.toFloatBits();
    float[] arrayOfFloat = this.vertices;
    for (int i = 0; i < arrayOfFloat.length; i += 5)
      arrayOfFloat[(i + 2)] = f;
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

  public void setRegion(PolygonRegion paramPolygonRegion)
  {
    this.region = paramPolygonRegion;
    float[] arrayOfFloat1 = paramPolygonRegion.getLocalVertices();
    float[] arrayOfFloat2 = paramPolygonRegion.getTextureCoords();
    if ((this.vertices == null) || (arrayOfFloat1.length != this.vertices.length))
      this.vertices = new float[5 * (arrayOfFloat1.length / 2)];
    for (int i = 0; i < arrayOfFloat1.length / 2; i++)
    {
      this.vertices[(i * 5)] = arrayOfFloat1[(i * 2)];
      this.vertices[(1 + i * 5)] = arrayOfFloat1[(1 + i * 2)];
      this.vertices[(2 + i * 5)] = this.color.toFloatBits();
      this.vertices[(3 + i * 5)] = arrayOfFloat2[(i * 2)];
      this.vertices[(4 + i * 5)] = arrayOfFloat2[(1 + i * 2)];
    }
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
    this.dirty = true;
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
    if (this.dirty);
    while (true)
    {
      return;
      float[] arrayOfFloat = this.vertices;
      for (int i = 0; i < arrayOfFloat.length; i += 5)
      {
        arrayOfFloat[i] = (paramFloat1 + arrayOfFloat[i]);
        int j = i + 1;
        arrayOfFloat[j] = (paramFloat2 + arrayOfFloat[j]);
      }
    }
  }

  public void translateX(float paramFloat)
  {
    this.x = (paramFloat + this.x);
    if (this.dirty);
    while (true)
    {
      return;
      float[] arrayOfFloat = this.vertices;
      for (int i = 0; i < arrayOfFloat.length; i += 5)
        arrayOfFloat[i] = (paramFloat + arrayOfFloat[i]);
    }
  }

  public void translateY(float paramFloat)
  {
    this.y = (paramFloat + this.y);
    if (this.dirty);
    while (true)
    {
      return;
      float[] arrayOfFloat = this.vertices;
      for (int i = 0; i < arrayOfFloat.length; i += 5)
      {
        int j = i + 1;
        arrayOfFloat[j] = (paramFloat + arrayOfFloat[j]);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PolygonSprite
 * JD-Core Version:    0.6.2
 */
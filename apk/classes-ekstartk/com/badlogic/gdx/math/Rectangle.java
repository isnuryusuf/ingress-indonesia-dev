package com.badlogic.gdx.math;

import java.io.Serializable;

public class Rectangle
  implements Serializable
{
  private static final long serialVersionUID = 5733252015138115702L;
  public static final Rectangle tmp = new Rectangle();
  public static final Rectangle tmp2 = new Rectangle();
  public float height;
  public float width;
  public float x;
  public float y;

  public Rectangle()
  {
  }

  public Rectangle(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
  }

  public Rectangle(Rectangle paramRectangle)
  {
    this.x = paramRectangle.x;
    this.y = paramRectangle.y;
    this.width = paramRectangle.width;
    this.height = paramRectangle.height;
  }

  public boolean contains(float paramFloat1, float paramFloat2)
  {
    return (this.x < paramFloat1) && (this.x + this.width > paramFloat1) && (this.y < paramFloat2) && (this.y + this.height > paramFloat2);
  }

  public boolean contains(Rectangle paramRectangle)
  {
    float f1 = paramRectangle.x;
    float f2 = f1 + paramRectangle.width;
    float f3 = paramRectangle.y;
    float f4 = f3 + paramRectangle.height;
    return (f1 > this.x) && (f1 < this.x + this.width) && (f2 > this.x) && (f2 < this.x + this.width) && (f3 > this.y) && (f3 < this.y + this.height) && (f4 > this.y) && (f4 < this.y + this.height);
  }

  public float getHeight()
  {
    return this.height;
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

  public void merge(Rectangle paramRectangle)
  {
    float f1 = Math.min(this.x, paramRectangle.x);
    float f2 = Math.max(this.x + this.width, paramRectangle.x + paramRectangle.width);
    this.x = f1;
    this.width = (f2 - f1);
    float f3 = Math.min(this.y, paramRectangle.y);
    float f4 = Math.max(this.y + this.height, paramRectangle.y + paramRectangle.height);
    this.y = f3;
    this.height = (f4 - f3);
  }

  public boolean overlaps(Rectangle paramRectangle)
  {
    return (this.x <= paramRectangle.x + paramRectangle.width) && (this.x + this.width >= paramRectangle.x) && (this.y <= paramRectangle.y + paramRectangle.height) && (this.y + this.height >= paramRectangle.y);
  }

  public void set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.width = paramFloat3;
    this.height = paramFloat4;
  }

  public void set(Rectangle paramRectangle)
  {
    this.x = paramRectangle.x;
    this.y = paramRectangle.y;
    this.width = paramRectangle.width;
    this.height = paramRectangle.height;
  }

  public void setHeight(float paramFloat)
  {
    this.height = paramFloat;
  }

  public void setWidth(float paramFloat)
  {
    this.width = paramFloat;
  }

  public void setX(float paramFloat)
  {
    this.x = paramFloat;
  }

  public void setY(float paramFloat)
  {
    this.y = paramFloat;
  }

  public String toString()
  {
    return this.x + "," + this.y + "," + this.width + "," + this.height;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Rectangle
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.math;

public class Polygon
{
  private Rectangle bounds;
  private boolean dirty = true;
  private final float[] localVertices;
  private float originX;
  private float originY;
  private float rotation;
  private float scaleX = 1.0F;
  private float scaleY = 1.0F;
  private float[] worldVertices;
  private float x;
  private float y;

  public Polygon(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat.length < 6)
      throw new IllegalArgumentException("polygons must contain at least 3 points.");
    this.localVertices = paramArrayOfFloat;
  }

  public float area()
  {
    float f = 0.0F;
    float[] arrayOfFloat = getTransformedVertices();
    int i = arrayOfFloat.length;
    for (int j = 0; j < i; j += 2)
    {
      int k = j + 1;
      int m = (j + 2) % i;
      int n = (j + 3) % i;
      f = f + arrayOfFloat[j] * arrayOfFloat[n] - arrayOfFloat[m] * arrayOfFloat[k];
    }
    return 0.5F * f;
  }

  public boolean contains(float paramFloat1, float paramFloat2)
  {
    float[] arrayOfFloat = getTransformedVertices();
    int i = arrayOfFloat.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      float f1 = arrayOfFloat[j];
      float f2 = arrayOfFloat[(j + 1)];
      float f3 = arrayOfFloat[((j + 2) % i)];
      float f4 = arrayOfFloat[((j + 3) % i)];
      if (((f2 <= paramFloat2) && (paramFloat2 < f4)) || ((f4 <= paramFloat2) && (paramFloat2 < f2) && (paramFloat1 < f1 + (f3 - f1) / (f4 - f2) * (paramFloat2 - f2))))
        k++;
      j += 2;
    }
    return (k & 0x1) == 1;
  }

  public void dirty()
  {
    this.dirty = true;
  }

  public Rectangle getBoundingRectangle()
  {
    float[] arrayOfFloat = getTransformedVertices();
    float f1 = arrayOfFloat[0];
    float f2 = arrayOfFloat[1];
    float f3 = arrayOfFloat[0];
    float f4 = arrayOfFloat[1];
    int i = arrayOfFloat.length;
    float f5 = f1;
    for (int j = 2; j < i; j += 2)
    {
      if (f5 > arrayOfFloat[j])
        f5 = arrayOfFloat[j];
      if (f2 > arrayOfFloat[(j + 1)])
        f2 = arrayOfFloat[(j + 1)];
      if (f3 < arrayOfFloat[j])
        f3 = arrayOfFloat[j];
      if (f4 < arrayOfFloat[(j + 1)])
        f4 = arrayOfFloat[(j + 1)];
    }
    if (this.bounds == null)
      this.bounds = new Rectangle();
    this.bounds.x = f5;
    this.bounds.y = f2;
    this.bounds.width = (f3 - f5);
    this.bounds.height = (f4 - f2);
    return this.bounds;
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

  public float[] getTransformedVertices()
  {
    if (!this.dirty)
      return this.worldVertices;
    this.dirty = false;
    float[] arrayOfFloat1 = this.localVertices;
    if ((this.worldVertices == null) || (this.worldVertices.length < arrayOfFloat1.length))
      this.worldVertices = new float[arrayOfFloat1.length];
    float[] arrayOfFloat2 = this.worldVertices;
    float f1 = this.x;
    float f2 = this.y;
    float f3 = this.originX;
    float f4 = this.originY;
    float f5 = this.scaleX;
    float f6 = this.scaleY;
    int i;
    int k;
    label131: float f10;
    float f11;
    float f12;
    if ((f5 != 1.0F) || (f6 != 1.0F))
    {
      i = 1;
      float f7 = this.rotation;
      float f8 = MathUtils.cosDeg(f7);
      float f9 = MathUtils.sinDeg(f7);
      int j = arrayOfFloat1.length;
      k = 0;
      if (k >= j)
        break label247;
      f10 = arrayOfFloat1[k] - f3;
      f11 = arrayOfFloat1[(k + 1)] - f4;
      if (i != 0)
      {
        f10 *= f5;
        f11 *= f6;
      }
      if (f7 == 0.0F)
        break label249;
      f12 = f8 * f10 - f9 * f11;
      f11 = f10 * f9 + f11 * f8;
    }
    while (true)
    {
      arrayOfFloat2[k] = (f3 + (f12 + f1));
      arrayOfFloat2[(k + 1)] = (f4 + (f11 + f2));
      k += 2;
      break label131;
      i = 0;
      break;
      label247: return arrayOfFloat2;
      label249: f12 = f10;
    }
  }

  public float[] getVertices()
  {
    return this.localVertices;
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

  public void setOrigin(float paramFloat1, float paramFloat2)
  {
    this.originX = paramFloat1;
    this.originY = paramFloat2;
    this.dirty = true;
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.dirty = true;
  }

  public void setRotation(float paramFloat)
  {
    this.rotation = paramFloat;
    this.dirty = true;
  }

  public void setScale(float paramFloat1, float paramFloat2)
  {
    this.scaleX = paramFloat1;
    this.scaleY = paramFloat2;
    this.dirty = true;
  }

  public void translate(float paramFloat1, float paramFloat2)
  {
    this.x = (paramFloat1 + this.x);
    this.y = (paramFloat2 + this.y);
    this.dirty = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Polygon
 * JD-Core Version:    0.6.2
 */
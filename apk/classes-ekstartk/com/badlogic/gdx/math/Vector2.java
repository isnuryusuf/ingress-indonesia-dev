package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;

public class Vector2
  implements Serializable
{
  public static final Vector2 X = new Vector2(1.0F, 0.0F);
  public static final Vector2 Y = new Vector2(0.0F, 1.0F);
  public static final Vector2 Zero = new Vector2(0.0F, 0.0F);
  private static final long serialVersionUID = 913902788239530931L;
  public static final Vector2 tmp = new Vector2();
  public static final Vector2 tmp2 = new Vector2();
  public static final Vector2 tmp3 = new Vector2();
  public float x;
  public float y;

  public Vector2()
  {
  }

  public Vector2(float paramFloat1, float paramFloat2)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
  }

  public Vector2(Vector2 paramVector2)
  {
    set(paramVector2);
  }

  public Vector2 add(float paramFloat1, float paramFloat2)
  {
    this.x = (paramFloat1 + this.x);
    this.y = (paramFloat2 + this.y);
    return this;
  }

  public Vector2 add(Vector2 paramVector2)
  {
    this.x += paramVector2.x;
    this.y += paramVector2.y;
    return this;
  }

  public float angle()
  {
    float f = 57.295776F * (float)Math.atan2(this.y, this.x);
    if (f < 0.0F)
      f += 360.0F;
    return f;
  }

  public Vector2 cpy()
  {
    return new Vector2(this);
  }

  public float crs(float paramFloat1, float paramFloat2)
  {
    return paramFloat2 * this.x - paramFloat1 * this.y;
  }

  public float crs(Vector2 paramVector2)
  {
    return this.x * paramVector2.y - this.y * paramVector2.x;
  }

  public float dot(Vector2 paramVector2)
  {
    return this.x * paramVector2.x + this.y * paramVector2.y;
  }

  public float dst(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 - this.x;
    float f2 = paramFloat2 - this.y;
    return (float)Math.sqrt(f1 * f1 + f2 * f2);
  }

  public float dst(Vector2 paramVector2)
  {
    float f1 = paramVector2.x - this.x;
    float f2 = paramVector2.y - this.y;
    return (float)Math.sqrt(f1 * f1 + f2 * f2);
  }

  public float dst2(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 - this.x;
    float f2 = paramFloat2 - this.y;
    return f1 * f1 + f2 * f2;
  }

  public float dst2(Vector2 paramVector2)
  {
    float f1 = paramVector2.x - this.x;
    float f2 = paramVector2.y - this.y;
    return f1 * f1 + f2 * f2;
  }

  public boolean epsilonEquals(Vector2 paramVector2, float paramFloat)
  {
    if (paramVector2 == null);
    while ((Math.abs(paramVector2.x - this.x) > paramFloat) || (Math.abs(paramVector2.y - this.y) > paramFloat))
      return false;
    return true;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Vector2 localVector2;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localVector2 = (Vector2)paramObject;
      if (NumberUtils.floatToIntBits(this.x) != NumberUtils.floatToIntBits(localVector2.x))
        return false;
    }
    while (NumberUtils.floatToIntBits(this.y) == NumberUtils.floatToIntBits(localVector2.y));
    return false;
  }

  public int hashCode()
  {
    return 31 * (31 + NumberUtils.floatToIntBits(this.x)) + NumberUtils.floatToIntBits(this.y);
  }

  public float len()
  {
    return (float)Math.sqrt(this.x * this.x + this.y * this.y);
  }

  public float len2()
  {
    return this.x * this.x + this.y * this.y;
  }

  public Vector2 lerp(Vector2 paramVector2, float paramFloat)
  {
    Vector2 localVector2 = mul(1.0F - paramFloat);
    localVector2.add(paramVector2.tmp().mul(paramFloat));
    return localVector2;
  }

  public Vector2 mul(float paramFloat)
  {
    this.x = (paramFloat * this.x);
    this.y = (paramFloat * this.y);
    return this;
  }

  public Vector2 mul(float paramFloat1, float paramFloat2)
  {
    this.x = (paramFloat1 * this.x);
    this.y = (paramFloat2 * this.y);
    return this;
  }

  public Vector2 mul(Matrix3 paramMatrix3)
  {
    float f1 = this.x * paramMatrix3.val[0] + this.y * paramMatrix3.val[3] + paramMatrix3.val[6];
    float f2 = this.x * paramMatrix3.val[1] + this.y * paramMatrix3.val[4] + paramMatrix3.val[7];
    this.x = f1;
    this.y = f2;
    return this;
  }

  public Vector2 nor()
  {
    float f = len();
    if (f != 0.0F)
    {
      this.x /= f;
      this.y /= f;
    }
    return this;
  }

  public Vector2 rotate(float paramFloat)
  {
    float f1 = 0.01745329F * paramFloat;
    float f2 = (float)Math.cos(f1);
    float f3 = (float)Math.sin(f1);
    float f4 = f2 * this.x - f3 * this.y;
    float f5 = f3 * this.x + f2 * this.y;
    this.x = f4;
    this.y = f5;
    return this;
  }

  public Vector2 set(float paramFloat1, float paramFloat2)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    return this;
  }

  public Vector2 set(Vector2 paramVector2)
  {
    this.x = paramVector2.x;
    this.y = paramVector2.y;
    return this;
  }

  public Vector2 sub(float paramFloat1, float paramFloat2)
  {
    this.x -= paramFloat1;
    this.y -= paramFloat2;
    return this;
  }

  public Vector2 sub(Vector2 paramVector2)
  {
    this.x -= paramVector2.x;
    this.y -= paramVector2.y;
    return this;
  }

  public Vector2 tmp()
  {
    return tmp.set(this);
  }

  public String toString()
  {
    return "[" + this.x + ":" + this.y + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Vector2
 * JD-Core Version:    0.6.2
 */
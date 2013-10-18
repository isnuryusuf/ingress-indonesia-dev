package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;

public class Vector3
  implements Serializable
{
  public static final Vector3 X = new Vector3(1.0F, 0.0F, 0.0F);
  public static final Vector3 Y = new Vector3(0.0F, 1.0F, 0.0F);
  public static final Vector3 Z = new Vector3(0.0F, 0.0F, 1.0F);
  public static final Vector3 Zero = new Vector3(0.0F, 0.0F, 0.0F);
  private static final long serialVersionUID = 3840054589595372522L;
  public static final Vector3 tmp = new Vector3();
  public static final Vector3 tmp2 = new Vector3();
  public static final Vector3 tmp3 = new Vector3();
  public float x;
  public float y;
  public float z;

  public Vector3()
  {
  }

  public Vector3(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    set(paramFloat1, paramFloat2, paramFloat3);
  }

  public Vector3(Vector3 paramVector3)
  {
    set(paramVector3);
  }

  public Vector3(float[] paramArrayOfFloat)
  {
    set(paramArrayOfFloat[0], paramArrayOfFloat[1], paramArrayOfFloat[2]);
  }

  public Vector3 add(float paramFloat)
  {
    return set(paramFloat + this.x, paramFloat + this.y, paramFloat + this.z);
  }

  public Vector3 add(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return set(paramFloat1 + this.x, paramFloat2 + this.y, paramFloat3 + this.z);
  }

  public Vector3 add(Vector3 paramVector3)
  {
    return add(paramVector3.x, paramVector3.y, paramVector3.z);
  }

  public Vector3 cpy()
  {
    return new Vector3(this);
  }

  public Vector3 crs(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return set(paramFloat3 * this.y - paramFloat2 * this.z, paramFloat1 * this.z - paramFloat3 * this.x, paramFloat2 * this.x - paramFloat1 * this.y);
  }

  public Vector3 crs(Vector3 paramVector3)
  {
    return set(this.y * paramVector3.z - this.z * paramVector3.y, this.z * paramVector3.x - this.x * paramVector3.z, this.x * paramVector3.y - this.y * paramVector3.x);
  }

  public Vector3 div(float paramFloat)
  {
    float f = 1.0F / paramFloat;
    return set(f * this.x, f * this.y, f * this.z);
  }

  public float dot(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 * this.x + paramFloat2 * this.y + paramFloat3 * this.z;
  }

  public float dot(Vector3 paramVector3)
  {
    return this.x * paramVector3.x + this.y * paramVector3.y + this.z * paramVector3.z;
  }

  public float dst(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (float)Math.sqrt(dst2(paramFloat1, paramFloat2, paramFloat3));
  }

  public float dst(Vector3 paramVector3)
  {
    float f1 = paramVector3.x - this.x;
    float f2 = paramVector3.y - this.y;
    float f3 = paramVector3.z - this.z;
    float f4 = f1 * f1;
    float f5 = f2 * f2;
    return (float)Math.sqrt(f3 * f3 + (f4 + f5));
  }

  public float dst2(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = paramFloat1 - this.x;
    float f2 = paramFloat2 - this.y;
    float f3 = paramFloat3 - this.z;
    float f4 = f1 * f1;
    float f5 = f2 * f2;
    return f3 * f3 + (f4 + f5);
  }

  public float dst2(Vector3 paramVector3)
  {
    float f1 = paramVector3.x - this.x;
    float f2 = paramVector3.y - this.y;
    float f3 = paramVector3.z - this.z;
    float f4 = f1 * f1;
    float f5 = f2 * f2;
    return f3 * f3 + (f4 + f5);
  }

  public boolean epsilonEquals(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (Math.abs(paramFloat1 - this.x) > paramFloat4);
    while ((Math.abs(paramFloat2 - this.y) > paramFloat4) || (Math.abs(paramFloat3 - this.z) > paramFloat4))
      return false;
    return true;
  }

  public boolean epsilonEquals(Vector3 paramVector3, float paramFloat)
  {
    if (paramVector3 == null);
    while ((Math.abs(paramVector3.x - this.x) > paramFloat) || (Math.abs(paramVector3.y - this.y) > paramFloat) || (Math.abs(paramVector3.z - this.z) > paramFloat))
      return false;
    return true;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Vector3 localVector3;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localVector3 = (Vector3)paramObject;
      if (NumberUtils.floatToIntBits(this.x) != NumberUtils.floatToIntBits(localVector3.x))
        return false;
      if (NumberUtils.floatToIntBits(this.y) != NumberUtils.floatToIntBits(localVector3.y))
        return false;
    }
    while (NumberUtils.floatToIntBits(this.z) == NumberUtils.floatToIntBits(localVector3.z));
    return false;
  }

  public int hashCode()
  {
    return 31 * (31 * (31 + NumberUtils.floatToIntBits(this.x)) + NumberUtils.floatToIntBits(this.y)) + NumberUtils.floatToIntBits(this.z);
  }

  public boolean idt(Vector3 paramVector3)
  {
    return (this.x == paramVector3.x) && (this.y == paramVector3.y) && (this.z == paramVector3.z);
  }

  public boolean isUnit()
  {
    return len() == 1.0F;
  }

  public boolean isZero()
  {
    return (this.x == 0.0F) && (this.y == 0.0F) && (this.z == 0.0F);
  }

  public float len()
  {
    return (float)Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
  }

  public float len2()
  {
    return this.x * this.x + this.y * this.y + this.z * this.z;
  }

  public Vector3 lerp(Vector3 paramVector3, float paramFloat)
  {
    Vector3 localVector3 = mul(1.0F - paramFloat);
    localVector3.add(paramVector3.tmp().mul(paramFloat));
    return localVector3;
  }

  public Vector3 mul(float paramFloat)
  {
    return set(paramFloat * this.x, paramFloat * this.y, paramFloat * this.z);
  }

  public Vector3 mul(Matrix4 paramMatrix4)
  {
    float[] arrayOfFloat = paramMatrix4.val;
    return set(this.x * arrayOfFloat[0] + this.y * arrayOfFloat[4] + this.z * arrayOfFloat[8] + arrayOfFloat[12], this.x * arrayOfFloat[1] + this.y * arrayOfFloat[5] + this.z * arrayOfFloat[9] + arrayOfFloat[13], this.x * arrayOfFloat[2] + this.y * arrayOfFloat[6] + this.z * arrayOfFloat[10] + arrayOfFloat[14]);
  }

  public Vector3 nor()
  {
    float f = len();
    if (f == 0.0F)
      return this;
    return div(f);
  }

  public Vector3 prj(Matrix4 paramMatrix4)
  {
    float[] arrayOfFloat = paramMatrix4.val;
    float f = this.x * arrayOfFloat[3] + this.y * arrayOfFloat[7] + this.z * arrayOfFloat[11] + arrayOfFloat[15];
    return set((this.x * arrayOfFloat[0] + this.y * arrayOfFloat[4] + this.z * arrayOfFloat[8] + arrayOfFloat[12]) / f, (this.x * arrayOfFloat[1] + this.y * arrayOfFloat[5] + this.z * arrayOfFloat[9] + arrayOfFloat[13]) / f, (this.x * arrayOfFloat[2] + this.y * arrayOfFloat[6] + this.z * arrayOfFloat[10] + arrayOfFloat[14]) / f);
  }

  public Vector3 rot(Matrix4 paramMatrix4)
  {
    float[] arrayOfFloat = paramMatrix4.val;
    return set(this.x * arrayOfFloat[0] + this.y * arrayOfFloat[4] + this.z * arrayOfFloat[8], this.x * arrayOfFloat[1] + this.y * arrayOfFloat[5] + this.z * arrayOfFloat[9], this.x * arrayOfFloat[2] + this.y * arrayOfFloat[6] + this.z * arrayOfFloat[10]);
  }

  public Vector3 scale(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.x = (paramFloat1 * this.x);
    this.y = (paramFloat2 * this.y);
    this.z = (paramFloat3 * this.z);
    return this;
  }

  public Vector3 set(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.z = paramFloat3;
    return this;
  }

  public Vector3 set(Vector3 paramVector3)
  {
    return set(paramVector3.x, paramVector3.y, paramVector3.z);
  }

  public Vector3 set(float[] paramArrayOfFloat)
  {
    return set(paramArrayOfFloat[0], paramArrayOfFloat[1], paramArrayOfFloat[2]);
  }

  public Vector3 slerp(Vector3 paramVector3, float paramFloat)
  {
    float f1 = 1.0F;
    float f2 = -1.0F;
    float f3 = dot(paramVector3);
    if ((f3 > 0.99995D) || (f3 < 0.9995000000000001D))
    {
      add(paramVector3.tmp().sub(this).mul(paramFloat));
      nor();
      return this;
    }
    if (f3 > f1);
    while (true)
    {
      if (f1 < f2);
      while (true)
      {
        float f4 = paramFloat * (float)Math.acos(f2);
        Vector3 localVector3 = paramVector3.tmp().sub(f2 * this.x, f2 * this.y, f2 * this.z);
        localVector3.nor();
        return mul((float)Math.cos(f4)).add(localVector3.mul((float)Math.sin(f4))).nor();
        f2 = f1;
      }
      f1 = f3;
    }
  }

  public Vector3 sub(float paramFloat)
  {
    return set(this.x - paramFloat, this.y - paramFloat, this.z - paramFloat);
  }

  public Vector3 sub(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return set(this.x - paramFloat1, this.y - paramFloat2, this.z - paramFloat3);
  }

  public Vector3 sub(Vector3 paramVector3)
  {
    return sub(paramVector3.x, paramVector3.y, paramVector3.z);
  }

  public Vector3 tmp()
  {
    return tmp.set(this);
  }

  public Vector3 tmp2()
  {
    return tmp2.set(this);
  }

  Vector3 tmp3()
  {
    return tmp3.set(this);
  }

  public String toString()
  {
    return this.x + "," + this.y + "," + this.z;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Vector3
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.math;

import java.io.Serializable;

public class Quaternion
  implements Serializable
{
  private static final float NORMALIZATION_TOLERANCE = 1.0E-05F;
  private static final long serialVersionUID = -7661875440774897168L;
  private static Quaternion tmp1 = new Quaternion(0.0F, 0.0F, 0.0F, 0.0F);
  private static Quaternion tmp2 = new Quaternion(0.0F, 0.0F, 0.0F, 0.0F);
  public float w;
  public float x;
  public float y;
  public float z;

  public Quaternion()
  {
    idt();
  }

  public Quaternion(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public Quaternion(Quaternion paramQuaternion)
  {
    set(paramQuaternion);
  }

  public Quaternion(Vector3 paramVector3, float paramFloat)
  {
    set(paramVector3, paramFloat);
  }

  public Quaternion conjugate()
  {
    this.x = (-this.x);
    this.y = (-this.y);
    this.z = (-this.z);
    return this;
  }

  public Quaternion cpy()
  {
    return new Quaternion(this);
  }

  public float dot(Quaternion paramQuaternion)
  {
    return this.x * paramQuaternion.x + this.y * paramQuaternion.y + this.z * paramQuaternion.z + this.w * paramQuaternion.w;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Quaternion localQuaternion;
    do
    {
      return true;
      if (!(paramObject instanceof Quaternion))
        return false;
      localQuaternion = (Quaternion)paramObject;
    }
    while ((this.x == localQuaternion.x) && (this.y == localQuaternion.y) && (this.z == localQuaternion.z) && (this.w == localQuaternion.w));
    return false;
  }

  public Quaternion idt()
  {
    set(0.0F, 0.0F, 0.0F, 1.0F);
    return this;
  }

  public float len()
  {
    return (float)Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w);
  }

  public float len2()
  {
    return this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w;
  }

  public Quaternion mul(float paramFloat)
  {
    this.x = (paramFloat * this.x);
    this.y = (paramFloat * this.y);
    this.z = (paramFloat * this.z);
    this.w = (paramFloat * this.w);
    return this;
  }

  public Quaternion mul(Quaternion paramQuaternion)
  {
    float f1 = this.w * paramQuaternion.x + this.x * paramQuaternion.w + this.y * paramQuaternion.z - this.z * paramQuaternion.y;
    float f2 = this.w * paramQuaternion.y + this.y * paramQuaternion.w + this.z * paramQuaternion.x - this.x * paramQuaternion.z;
    float f3 = this.w * paramQuaternion.z + this.z * paramQuaternion.w + this.x * paramQuaternion.y - this.y * paramQuaternion.x;
    float f4 = this.w * paramQuaternion.w - this.x * paramQuaternion.x - this.y * paramQuaternion.y - this.z * paramQuaternion.z;
    this.x = f1;
    this.y = f2;
    this.z = f3;
    this.w = f4;
    return this;
  }

  public Quaternion mulLeft(Quaternion paramQuaternion)
  {
    float f1 = paramQuaternion.w * this.x + paramQuaternion.x * this.w + paramQuaternion.y * this.z - paramQuaternion.z * this.y;
    float f2 = paramQuaternion.w * this.y + paramQuaternion.y * this.w + paramQuaternion.z * this.x - paramQuaternion.x * this.z;
    float f3 = paramQuaternion.w * this.z + paramQuaternion.z * this.w + paramQuaternion.x * this.y - paramQuaternion.y * this.x;
    float f4 = paramQuaternion.w * this.w - paramQuaternion.x * this.x - paramQuaternion.y * this.y - paramQuaternion.z * this.z;
    this.x = f1;
    this.y = f2;
    this.z = f3;
    this.w = f4;
    return this;
  }

  public Quaternion nor()
  {
    float f1 = len2();
    if ((f1 != 0.0F) && (Math.abs(f1 - 1.0F) > 1.0E-05F))
    {
      float f2 = (float)Math.sqrt(f1);
      this.w /= f2;
      this.x /= f2;
      this.y /= f2;
      this.z /= f2;
    }
    return this;
  }

  public Quaternion set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.z = paramFloat3;
    this.w = paramFloat4;
    return this;
  }

  public Quaternion set(Quaternion paramQuaternion)
  {
    return set(paramQuaternion.x, paramQuaternion.y, paramQuaternion.z, paramQuaternion.w);
  }

  public Quaternion set(Vector3 paramVector3, float paramFloat)
  {
    float f1 = (float)Math.toRadians(paramFloat);
    float f2 = (float)Math.sin(f1 / 2.0F);
    float f3 = (float)Math.cos(f1 / 2.0F);
    return set(f2 * paramVector3.x, f2 * paramVector3.y, f2 * paramVector3.z, f3).nor();
  }

  public Quaternion setEulerAngles(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = (float)Math.toRadians(paramFloat1);
    float f2 = (float)Math.toRadians(paramFloat2);
    float f3 = 0.5F * (float)Math.toRadians(paramFloat3);
    float f4 = (float)Math.sin(f3);
    float f5 = (float)Math.cos(f3);
    float f6 = f2 * 0.5F;
    float f7 = (float)Math.sin(f6);
    float f8 = (float)Math.cos(f6);
    float f9 = f1 * 0.5F;
    float f10 = (float)Math.sin(f9);
    float f11 = (float)Math.cos(f9);
    this.x = (f5 * (f11 * f7) + f4 * (f10 * f8));
    this.y = (f5 * (f10 * f8) - f4 * (f11 * f7));
    this.z = (f4 * (f11 * f8) - f5 * (f10 * f7));
    this.w = (f5 * (f11 * f8) + f4 * (f10 * f7));
    return this;
  }

  public Quaternion setFromAxes(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    float f = paramFloat9 + (paramFloat1 + paramFloat5);
    double d6;
    double d4;
    double d5;
    double d2;
    if (f >= 0.0F)
    {
      double d11 = Math.sqrt(f + 1.0F);
      d6 = 0.5D * d11;
      double d12 = 0.5D / d11;
      d4 = d12 * (paramFloat8 - paramFloat6);
      d5 = d12 * (paramFloat3 - paramFloat7);
      d2 = d12 * (paramFloat4 - paramFloat2);
    }
    while (true)
    {
      return set((float)d4, (float)d5, (float)d2, (float)d6);
      if ((paramFloat1 > paramFloat5) && (paramFloat1 > paramFloat9))
      {
        double d9 = Math.sqrt(1.0D + paramFloat1 - paramFloat5 - paramFloat9);
        d4 = d9 * 0.5D;
        double d10 = 0.5D / d9;
        d5 = d10 * (paramFloat4 + paramFloat2);
        d2 = d10 * (paramFloat3 + paramFloat7);
        d6 = d10 * (paramFloat8 - paramFloat6);
      }
      else if (paramFloat5 > paramFloat9)
      {
        double d7 = Math.sqrt(1.0D + paramFloat5 - paramFloat1 - paramFloat9);
        d5 = d7 * 0.5D;
        double d8 = 0.5D / d7;
        d4 = d8 * (paramFloat4 + paramFloat2);
        d2 = d8 * (paramFloat8 + paramFloat6);
        d6 = d8 * (paramFloat3 - paramFloat7);
      }
      else
      {
        double d1 = Math.sqrt(1.0D + paramFloat9 - paramFloat1 - paramFloat5);
        d2 = 0.5D * d1;
        double d3 = 0.5D / d1;
        d4 = d3 * (paramFloat3 + paramFloat7);
        d5 = d3 * (paramFloat8 + paramFloat6);
        d6 = d3 * (paramFloat4 - paramFloat2);
      }
    }
  }

  public Quaternion setFromAxis(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = 0.01745329F * paramFloat4;
    float f2 = MathUtils.sin(f1 / 2.0F);
    float f3 = MathUtils.cos(f1 / 2.0F);
    return set(paramFloat1 * f2, paramFloat2 * f2, f2 * paramFloat3, f3).nor();
  }

  public Quaternion setFromAxis(Vector3 paramVector3, float paramFloat)
  {
    return setFromAxis(paramVector3.x, paramVector3.y, paramVector3.z, paramFloat);
  }

  public Quaternion setFromMatrix(Matrix4 paramMatrix4)
  {
    return setFromAxes(paramMatrix4.val[0], paramMatrix4.val[4], paramMatrix4.val[8], paramMatrix4.val[1], paramMatrix4.val[5], paramMatrix4.val[9], paramMatrix4.val[2], paramMatrix4.val[6], paramMatrix4.val[10]);
  }

  public Quaternion slerp(Quaternion paramQuaternion, float paramFloat)
  {
    if (equals(paramQuaternion))
      return this;
    float f1 = dot(paramQuaternion);
    if (f1 < 0.0D)
      paramQuaternion.mul(-1.0F);
    for (float f2 = -f1; ; f2 = f1)
    {
      float f3 = 1.0F - paramFloat;
      if (1.0F - f2 > 0.1D)
      {
        double d1 = Math.acos(f2);
        double d2 = 1.0D / Math.sin(d1);
        f3 = (float)(d2 * Math.sin(d1 * f3));
        paramFloat = (float)(d2 * Math.sin(d1 * paramFloat));
      }
      set(f3 * this.x + paramFloat * paramQuaternion.x, f3 * this.y + paramFloat * paramQuaternion.y, f3 * this.z + paramFloat * paramQuaternion.z, f3 * this.w + paramFloat * paramQuaternion.w);
      return this;
    }
  }

  public void toMatrix(float[] paramArrayOfFloat)
  {
    float f1 = this.x * this.x;
    float f2 = this.x * this.y;
    float f3 = this.x * this.z;
    float f4 = this.x * this.w;
    float f5 = this.y * this.y;
    float f6 = this.y * this.z;
    float f7 = this.y * this.w;
    float f8 = this.z * this.z;
    float f9 = this.z * this.w;
    paramArrayOfFloat[0] = (1.0F - 2.0F * (f5 + f8));
    paramArrayOfFloat[4] = (2.0F * (f2 - f9));
    paramArrayOfFloat[8] = (2.0F * (f3 + f7));
    paramArrayOfFloat[12] = 0.0F;
    paramArrayOfFloat[1] = (2.0F * (f2 + f9));
    paramArrayOfFloat[5] = (1.0F - 2.0F * (f8 + f1));
    paramArrayOfFloat[9] = (2.0F * (f6 - f4));
    paramArrayOfFloat[13] = 0.0F;
    paramArrayOfFloat[2] = (2.0F * (f3 - f7));
    paramArrayOfFloat[6] = (2.0F * (f6 + f4));
    paramArrayOfFloat[10] = (1.0F - 2.0F * (f1 + f5));
    paramArrayOfFloat[14] = 0.0F;
    paramArrayOfFloat[3] = 0.0F;
    paramArrayOfFloat[7] = 0.0F;
    paramArrayOfFloat[11] = 0.0F;
    paramArrayOfFloat[15] = 1.0F;
  }

  public String toString()
  {
    return "[" + this.x + "|" + this.y + "|" + this.z + "|" + this.w + "]";
  }

  public void transform(Vector3 paramVector3)
  {
    tmp2.set(this);
    tmp2.conjugate();
    tmp2.mulLeft(tmp1.set(paramVector3.x, paramVector3.y, paramVector3.z, 0.0F)).mulLeft(this);
    paramVector3.x = tmp2.x;
    paramVector3.y = tmp2.y;
    paramVector3.z = tmp2.z;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Quaternion
 * JD-Core Version:    0.6.2
 */
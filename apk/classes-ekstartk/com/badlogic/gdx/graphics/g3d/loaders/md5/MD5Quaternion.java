package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.math.Vector3;

public class MD5Quaternion
{
  private static final MD5Quaternion inv;
  private static final MD5Quaternion tmp;
  public float w;
  public float x;
  public float y;
  public float z;

  static
  {
    if (!MD5Quaternion.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      tmp = new MD5Quaternion();
      inv = new MD5Quaternion();
      return;
    }
  }

  public MD5Quaternion()
  {
  }

  public MD5Quaternion(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.z = paramFloat3;
    computeW();
  }

  public MD5Quaternion(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.x = paramFloat1;
    this.y = paramFloat2;
    this.z = paramFloat3;
    this.w = paramFloat4;
  }

  public void computeW()
  {
    float f = 1.0F - this.x * this.x - this.y * this.y - this.z * this.z;
    if (f < 0.0F)
    {
      this.w = 0.0F;
      return;
    }
    this.w = (-(float)Math.sqrt(f));
  }

  public float dot(MD5Quaternion paramMD5Quaternion)
  {
    return this.x * paramMD5Quaternion.x + this.y * paramMD5Quaternion.y + this.z * paramMD5Quaternion.z + this.w * paramMD5Quaternion.w;
  }

  public void invert()
  {
    float f = this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w;
    this.x /= f;
    this.y /= f;
    this.z /= f;
    this.w /= f;
  }

  public void multiply(MD5Quaternion paramMD5Quaternion)
  {
    float f1 = this.w * paramMD5Quaternion.w - this.x * paramMD5Quaternion.x - this.y * paramMD5Quaternion.y - this.z * paramMD5Quaternion.z;
    float f2 = this.x * paramMD5Quaternion.w + this.w * paramMD5Quaternion.x + this.y * paramMD5Quaternion.z - this.z * paramMD5Quaternion.y;
    float f3 = this.y * paramMD5Quaternion.w + this.w * paramMD5Quaternion.y + this.z * paramMD5Quaternion.x - this.x * paramMD5Quaternion.z;
    float f4 = this.z * paramMD5Quaternion.w + this.w * paramMD5Quaternion.z + this.x * paramMD5Quaternion.y - this.y * paramMD5Quaternion.x;
    this.w = f1;
    this.x = f2;
    this.y = f3;
    this.z = f4;
  }

  public void multiply(Vector3 paramVector3)
  {
    float f1 = -this.x * paramVector3.x - this.y * paramVector3.y - this.z * paramVector3.z;
    float f2 = this.w * paramVector3.x + this.y * paramVector3.z - this.z * paramVector3.y;
    float f3 = this.w * paramVector3.y + this.z * paramVector3.x - this.x * paramVector3.z;
    float f4 = this.w * paramVector3.z + this.x * paramVector3.y - this.y * paramVector3.x;
    this.w = f1;
    this.x = f2;
    this.y = f3;
    this.z = f4;
  }

  public void normalize()
  {
    float f1 = (float)Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w);
    if (f1 > 0.0F)
    {
      float f2 = 1.0F / f1;
      this.x = (f2 * this.x);
      this.y = (f2 * this.y);
      this.z = (f2 * this.z);
      this.w = (f2 * this.w);
    }
  }

  public void rotate(Vector3 paramVector3)
  {
    inv.x = (-this.x);
    inv.y = (-this.y);
    inv.z = (-this.z);
    inv.w = this.w;
    tmp.set(this);
    tmp.multiply(paramVector3);
    tmp.multiply(inv);
    paramVector3.x = tmp.x;
    paramVector3.y = tmp.y;
    paramVector3.z = tmp.z;
  }

  public void set(MD5Quaternion paramMD5Quaternion)
  {
    this.w = paramMD5Quaternion.w;
    this.x = paramMD5Quaternion.x;
    this.y = paramMD5Quaternion.y;
    this.z = paramMD5Quaternion.z;
  }

  public void slerp(MD5Quaternion paramMD5Quaternion, float paramFloat)
  {
    if (paramFloat <= 0.0F)
      return;
    if (paramFloat >= 1.0F)
    {
      set(paramMD5Quaternion);
      return;
    }
    float f1 = dot(paramMD5Quaternion);
    float f2 = paramMD5Quaternion.w;
    float f3 = paramMD5Quaternion.x;
    float f4 = paramMD5Quaternion.y;
    float f5 = paramMD5Quaternion.z;
    if (f1 < 0.0F)
    {
      f2 = -f2;
      f3 = -f3;
      f4 = -f4;
      f5 = -f5;
      f1 = -f1;
    }
    assert (f1 < 1.1F);
    float f9;
    if (f1 > 0.9999F)
      f9 = 1.0F - paramFloat;
    while (true)
    {
      this.w = (f9 * this.w + f2 * paramFloat);
      this.x = (f9 * this.x + f3 * paramFloat);
      this.y = (f9 * this.y + f4 * paramFloat);
      this.z = (f9 * this.z + f5 * paramFloat);
      return;
      float f6 = (float)Math.sqrt(1.0F - f1 * f1);
      float f7 = (float)Math.atan2(f6, f1);
      float f8 = 1.0F / f6;
      f9 = f8 * (float)Math.sin(f7 * (1.0F - paramFloat));
      paramFloat = f8 * (float)Math.sin(f7 * paramFloat);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Quaternion
 * JD-Core Version:    0.6.2
 */
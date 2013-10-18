package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.Serializable;

public class Matrix3
  implements Serializable
{
  private static final float DEGREE_TO_RAD = 0.01745329F;
  public static final int M00 = 0;
  public static final int M01 = 3;
  public static final int M02 = 6;
  public static final int M10 = 1;
  public static final int M11 = 4;
  public static final int M12 = 7;
  public static final int M20 = 2;
  public static final int M21 = 5;
  public static final int M22 = 8;
  private static final long serialVersionUID = 7907569533774959788L;
  private float[] tmp = new float[9];
  public float[] val = new float[9];

  public Matrix3()
  {
    idt();
  }

  public Matrix3(Matrix3 paramMatrix3)
  {
    set(paramMatrix3);
  }

  private static void mul(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    float f1 = paramArrayOfFloat1[0] * paramArrayOfFloat2[0] + paramArrayOfFloat1[3] * paramArrayOfFloat2[1] + paramArrayOfFloat1[6] * paramArrayOfFloat2[2];
    float f2 = paramArrayOfFloat1[0] * paramArrayOfFloat2[3] + paramArrayOfFloat1[3] * paramArrayOfFloat2[4] + paramArrayOfFloat1[6] * paramArrayOfFloat2[5];
    float f3 = paramArrayOfFloat1[0] * paramArrayOfFloat2[6] + paramArrayOfFloat1[3] * paramArrayOfFloat2[7] + paramArrayOfFloat1[6] * paramArrayOfFloat2[8];
    float f4 = paramArrayOfFloat1[1] * paramArrayOfFloat2[0] + paramArrayOfFloat1[4] * paramArrayOfFloat2[1] + paramArrayOfFloat1[7] * paramArrayOfFloat2[2];
    float f5 = paramArrayOfFloat1[1] * paramArrayOfFloat2[3] + paramArrayOfFloat1[4] * paramArrayOfFloat2[4] + paramArrayOfFloat1[7] * paramArrayOfFloat2[5];
    float f6 = paramArrayOfFloat1[1] * paramArrayOfFloat2[6] + paramArrayOfFloat1[4] * paramArrayOfFloat2[7] + paramArrayOfFloat1[7] * paramArrayOfFloat2[8];
    float f7 = paramArrayOfFloat1[2] * paramArrayOfFloat2[0] + paramArrayOfFloat1[5] * paramArrayOfFloat2[1] + paramArrayOfFloat1[8] * paramArrayOfFloat2[2];
    float f8 = paramArrayOfFloat1[2] * paramArrayOfFloat2[3] + paramArrayOfFloat1[5] * paramArrayOfFloat2[4] + paramArrayOfFloat1[8] * paramArrayOfFloat2[5];
    float f9 = paramArrayOfFloat1[2] * paramArrayOfFloat2[6] + paramArrayOfFloat1[5] * paramArrayOfFloat2[7] + paramArrayOfFloat1[8] * paramArrayOfFloat2[8];
    paramArrayOfFloat1[0] = f1;
    paramArrayOfFloat1[1] = f4;
    paramArrayOfFloat1[2] = f7;
    paramArrayOfFloat1[3] = f2;
    paramArrayOfFloat1[4] = f5;
    paramArrayOfFloat1[5] = f8;
    paramArrayOfFloat1[6] = f3;
    paramArrayOfFloat1[7] = f6;
    paramArrayOfFloat1[8] = f9;
  }

  public float det()
  {
    return this.val[0] * this.val[4] * this.val[8] + this.val[3] * this.val[7] * this.val[2] + this.val[6] * this.val[1] * this.val[5] - this.val[0] * this.val[7] * this.val[5] - this.val[3] * this.val[1] * this.val[8] - this.val[6] * this.val[4] * this.val[2];
  }

  public float[] getValues()
  {
    return this.val;
  }

  public Matrix3 idt()
  {
    this.val[0] = 1.0F;
    this.val[1] = 0.0F;
    this.val[2] = 0.0F;
    this.val[3] = 0.0F;
    this.val[4] = 1.0F;
    this.val[5] = 0.0F;
    this.val[6] = 0.0F;
    this.val[7] = 0.0F;
    this.val[8] = 1.0F;
    return this;
  }

  public Matrix3 inv()
  {
    float f1 = det();
    if (f1 == 0.0F)
      throw new GdxRuntimeException("Can't invert a singular matrix");
    float f2 = 1.0F / f1;
    this.tmp[0] = (this.val[4] * this.val[8] - this.val[5] * this.val[7]);
    this.tmp[1] = (this.val[2] * this.val[7] - this.val[1] * this.val[8]);
    this.tmp[2] = (this.val[1] * this.val[5] - this.val[2] * this.val[4]);
    this.tmp[3] = (this.val[5] * this.val[6] - this.val[3] * this.val[8]);
    this.tmp[4] = (this.val[0] * this.val[8] - this.val[2] * this.val[6]);
    this.tmp[5] = (this.val[2] * this.val[3] - this.val[0] * this.val[5]);
    this.tmp[6] = (this.val[3] * this.val[7] - this.val[4] * this.val[6]);
    this.tmp[7] = (this.val[1] * this.val[6] - this.val[0] * this.val[7]);
    this.tmp[8] = (this.val[0] * this.val[4] - this.val[1] * this.val[3]);
    this.val[0] = (f2 * this.tmp[0]);
    this.val[1] = (f2 * this.tmp[1]);
    this.val[2] = (f2 * this.tmp[2]);
    this.val[3] = (f2 * this.tmp[3]);
    this.val[4] = (f2 * this.tmp[4]);
    this.val[5] = (f2 * this.tmp[5]);
    this.val[6] = (f2 * this.tmp[6]);
    this.val[7] = (f2 * this.tmp[7]);
    this.val[8] = (f2 * this.tmp[8]);
    return this;
  }

  public Matrix3 mul(Matrix3 paramMatrix3)
  {
    float f1 = this.val[0] * paramMatrix3.val[0] + this.val[3] * paramMatrix3.val[1] + this.val[6] * paramMatrix3.val[2];
    float f2 = this.val[0] * paramMatrix3.val[3] + this.val[3] * paramMatrix3.val[4] + this.val[6] * paramMatrix3.val[5];
    float f3 = this.val[0] * paramMatrix3.val[6] + this.val[3] * paramMatrix3.val[7] + this.val[6] * paramMatrix3.val[8];
    float f4 = this.val[1] * paramMatrix3.val[0] + this.val[4] * paramMatrix3.val[1] + this.val[7] * paramMatrix3.val[2];
    float f5 = this.val[1] * paramMatrix3.val[3] + this.val[4] * paramMatrix3.val[4] + this.val[7] * paramMatrix3.val[5];
    float f6 = this.val[1] * paramMatrix3.val[6] + this.val[4] * paramMatrix3.val[7] + this.val[7] * paramMatrix3.val[8];
    float f7 = this.val[2] * paramMatrix3.val[0] + this.val[5] * paramMatrix3.val[1] + this.val[8] * paramMatrix3.val[2];
    float f8 = this.val[2] * paramMatrix3.val[3] + this.val[5] * paramMatrix3.val[4] + this.val[8] * paramMatrix3.val[5];
    float f9 = this.val[2] * paramMatrix3.val[6] + this.val[5] * paramMatrix3.val[7] + this.val[8] * paramMatrix3.val[8];
    this.val[0] = f1;
    this.val[1] = f4;
    this.val[2] = f7;
    this.val[3] = f2;
    this.val[4] = f5;
    this.val[5] = f8;
    this.val[6] = f3;
    this.val[7] = f6;
    this.val[8] = f9;
    return this;
  }

  public Matrix3 rotate(float paramFloat)
  {
    if (paramFloat == 0.0F)
      return this;
    float f1 = 0.01745329F * paramFloat;
    float f2 = (float)Math.cos(f1);
    float f3 = (float)Math.sin(f1);
    this.tmp[0] = f2;
    this.tmp[1] = f3;
    this.tmp[2] = 0.0F;
    this.tmp[3] = (-f3);
    this.tmp[4] = f2;
    this.tmp[5] = 0.0F;
    this.tmp[6] = 0.0F;
    this.tmp[7] = 0.0F;
    this.tmp[8] = 1.0F;
    mul(this.val, this.tmp);
    return this;
  }

  public Matrix3 scale(float paramFloat1, float paramFloat2)
  {
    this.tmp[0] = paramFloat1;
    this.tmp[1] = 0.0F;
    this.tmp[2] = 0.0F;
    this.tmp[3] = 0.0F;
    this.tmp[4] = paramFloat2;
    this.tmp[5] = 0.0F;
    this.tmp[6] = 0.0F;
    this.tmp[7] = 0.0F;
    this.tmp[8] = 1.0F;
    mul(this.val, this.tmp);
    return this;
  }

  public Matrix3 scl(float paramFloat)
  {
    float[] arrayOfFloat1 = this.val;
    arrayOfFloat1[0] = (paramFloat * arrayOfFloat1[0]);
    float[] arrayOfFloat2 = this.val;
    arrayOfFloat2[4] = (paramFloat * arrayOfFloat2[4]);
    return this;
  }

  public Matrix3 scl(Vector3 paramVector3)
  {
    float[] arrayOfFloat1 = this.val;
    arrayOfFloat1[0] *= paramVector3.x;
    float[] arrayOfFloat2 = this.val;
    arrayOfFloat2[4] *= paramVector3.y;
    return this;
  }

  public Matrix3 set(Matrix3 paramMatrix3)
  {
    this.val[0] = paramMatrix3.val[0];
    this.val[1] = paramMatrix3.val[1];
    this.val[2] = paramMatrix3.val[2];
    this.val[3] = paramMatrix3.val[3];
    this.val[4] = paramMatrix3.val[4];
    this.val[5] = paramMatrix3.val[5];
    this.val[6] = paramMatrix3.val[6];
    this.val[7] = paramMatrix3.val[7];
    this.val[8] = paramMatrix3.val[8];
    return this;
  }

  public Matrix3 set(Matrix4 paramMatrix4)
  {
    this.val[0] = paramMatrix4.val[0];
    this.val[1] = paramMatrix4.val[1];
    this.val[2] = paramMatrix4.val[2];
    this.val[3] = paramMatrix4.val[4];
    this.val[4] = paramMatrix4.val[5];
    this.val[5] = paramMatrix4.val[6];
    this.val[6] = paramMatrix4.val[8];
    this.val[7] = paramMatrix4.val[9];
    this.val[8] = paramMatrix4.val[10];
    return this;
  }

  public Matrix3 setToRotation(float paramFloat)
  {
    float f1 = 0.01745329F * paramFloat;
    float f2 = (float)Math.cos(f1);
    float f3 = (float)Math.sin(f1);
    this.val[0] = f2;
    this.val[1] = f3;
    this.val[2] = 0.0F;
    this.val[3] = (-f3);
    this.val[4] = f2;
    this.val[5] = 0.0F;
    this.val[6] = 0.0F;
    this.val[7] = 0.0F;
    this.val[8] = 1.0F;
    return this;
  }

  public Matrix3 setToScaling(float paramFloat1, float paramFloat2)
  {
    this.val[0] = paramFloat1;
    this.val[1] = 0.0F;
    this.val[2] = 0.0F;
    this.val[3] = 0.0F;
    this.val[4] = paramFloat2;
    this.val[5] = 0.0F;
    this.val[6] = 0.0F;
    this.val[7] = 0.0F;
    this.val[8] = 1.0F;
    return this;
  }

  public Matrix3 setToTranslation(float paramFloat1, float paramFloat2)
  {
    this.val[0] = 1.0F;
    this.val[1] = 0.0F;
    this.val[2] = 0.0F;
    this.val[3] = 0.0F;
    this.val[4] = 1.0F;
    this.val[5] = 0.0F;
    this.val[6] = paramFloat1;
    this.val[7] = paramFloat2;
    this.val[8] = 1.0F;
    return this;
  }

  public String toString()
  {
    String[] arrayOfString = new String[9];
    arrayOfString[0] = Float.toString(this.val[0]);
    arrayOfString[1] = Float.toString(this.val[3]);
    arrayOfString[2] = Float.toString(this.val[6]);
    arrayOfString[3] = Float.toString(this.val[1]);
    arrayOfString[4] = Float.toString(this.val[4]);
    arrayOfString[5] = Float.toString(this.val[7]);
    arrayOfString[6] = Float.toString(this.val[2]);
    arrayOfString[7] = Float.toString(this.val[5]);
    arrayOfString[8] = Float.toString(this.val[8]);
    int i = Math.max(arrayOfString[0].length(), Math.max(arrayOfString[3].length(), arrayOfString[6].length()));
    int j = Math.max(arrayOfString[1].length(), Math.max(arrayOfString[4].length(), arrayOfString[7].length()));
    int k = Math.max(arrayOfString[2].length(), Math.max(arrayOfString[5].length(), arrayOfString[8].length()));
    return String.format("%" + i + "s, %" + j + "s, %" + k + "s\n%" + i + "s, %" + j + "s, %" + k + "s\n%" + i + "s, %" + j + "s, %" + k + "s", (Object[])arrayOfString);
  }

  public Matrix3 translate(float paramFloat1, float paramFloat2)
  {
    this.tmp[0] = 1.0F;
    this.tmp[1] = 0.0F;
    this.tmp[2] = 0.0F;
    this.tmp[3] = 0.0F;
    this.tmp[4] = 1.0F;
    this.tmp[5] = 0.0F;
    this.tmp[6] = paramFloat1;
    this.tmp[7] = paramFloat2;
    this.tmp[8] = 1.0F;
    mul(this.val, this.tmp);
    return this;
  }

  public Matrix3 transpose()
  {
    float f1 = this.val[0];
    float f2 = this.val[1];
    float f3 = this.val[2];
    float f4 = this.val[3];
    float f5 = this.val[4];
    float f6 = this.val[5];
    float f7 = this.val[6];
    float f8 = this.val[7];
    float f9 = this.val[8];
    this.val[0] = f1;
    this.val[3] = f2;
    this.val[6] = f3;
    this.val[1] = f4;
    this.val[4] = f5;
    this.val[7] = f6;
    this.val[2] = f7;
    this.val[5] = f8;
    this.val[8] = f9;
    return this;
  }

  public Matrix3 trn(float paramFloat1, float paramFloat2)
  {
    float[] arrayOfFloat1 = this.val;
    arrayOfFloat1[6] = (paramFloat1 + arrayOfFloat1[6]);
    float[] arrayOfFloat2 = this.val;
    arrayOfFloat2[7] = (paramFloat2 + arrayOfFloat2[7]);
    return this;
  }

  public Matrix3 trn(Vector3 paramVector3)
  {
    float[] arrayOfFloat1 = this.val;
    arrayOfFloat1[6] += paramVector3.x;
    float[] arrayOfFloat2 = this.val;
    arrayOfFloat2[7] += paramVector3.y;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Matrix3
 * JD-Core Version:    0.6.2
 */
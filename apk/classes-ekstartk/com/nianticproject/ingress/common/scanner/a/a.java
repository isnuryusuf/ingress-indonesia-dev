package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import java.lang.reflect.Array;

final class a
{
  private final float[][] a;
  private final float[][] b;

  a()
  {
    int[] arrayOfInt1 = { 6, 4 };
    this.a = ((float[][])Array.newInstance(Float.TYPE, arrayOfInt1));
    int[] arrayOfInt2 = { 4, 4 };
    this.b = ((float[][])Array.newInstance(Float.TYPE, arrayOfInt2));
  }

  final void a(Matrix4 paramMatrix4)
  {
    float[] arrayOfFloat1 = paramMatrix4.val;
    this.b[0][0] = arrayOfFloat1[0];
    this.b[0][1] = arrayOfFloat1[4];
    this.b[0][2] = arrayOfFloat1[8];
    this.b[0][3] = arrayOfFloat1[12];
    this.b[1][0] = arrayOfFloat1[1];
    this.b[1][1] = arrayOfFloat1[5];
    this.b[1][2] = arrayOfFloat1[9];
    this.b[1][3] = arrayOfFloat1[13];
    this.b[2][0] = arrayOfFloat1[2];
    this.b[2][1] = arrayOfFloat1[6];
    this.b[2][2] = arrayOfFloat1[10];
    this.b[2][3] = arrayOfFloat1[14];
    this.b[3][0] = arrayOfFloat1[3];
    this.b[3][1] = arrayOfFloat1[7];
    this.b[3][2] = arrayOfFloat1[11];
    this.b[3][3] = arrayOfFloat1[15];
    float[] arrayOfFloat2 = this.b[3];
    for (int i = 0; i < 3; i++)
    {
      float[] arrayOfFloat3 = this.b[i];
      float[] arrayOfFloat4 = this.a[(i * 2)];
      for (int j = 0; j < 4; j++)
        arrayOfFloat2[j] += arrayOfFloat3[j];
      float[] arrayOfFloat5 = this.a[(1 + i * 2)];
      for (int k = 0; k < 4; k++)
        arrayOfFloat2[k] -= arrayOfFloat3[k];
    }
  }

  final float[] a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 6));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return this.a[paramInt];
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.a
 * JD-Core Version:    0.6.2
 */
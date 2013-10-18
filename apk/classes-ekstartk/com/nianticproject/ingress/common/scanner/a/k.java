package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import java.lang.reflect.Array;

public final class k
{
  private final int a;
  private final double[][] b;
  private final a c;
  private int d;
  private int e;
  private int f;
  private int[] g;
  private int[] h;

  public k()
  {
    an.a(true);
    an.a(true);
    this.a = 3;
    int[] arrayOfInt = { 24, 3 };
    this.b = ((double[][])Array.newInstance(Double.TYPE, arrayOfInt));
    this.c = new a();
    this.g = new int[11];
    this.h = new int[this.g.length];
  }

  private static double a(double[] paramArrayOfDouble, float[] paramArrayOfFloat)
  {
    return paramArrayOfDouble[0] * paramArrayOfFloat[0] + paramArrayOfDouble[1] * paramArrayOfFloat[1] + paramArrayOfDouble[2] * paramArrayOfFloat[2] + paramArrayOfFloat[3];
  }

  private static void a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2, double paramDouble, double[] paramArrayOfDouble3)
  {
    for (int i = 0; i < paramArrayOfDouble1.length; i++)
    {
      double d1 = paramArrayOfDouble1[i];
      paramArrayOfDouble3[i] = (d1 + paramDouble * (paramArrayOfDouble2[i] - d1));
    }
  }

  public final void a()
  {
    this.d = 0;
    this.f = 0;
  }

  public final void a(Matrix4 paramMatrix4)
  {
    if (this.d <= 0)
      return;
    this.e = this.d;
    this.f = 0;
    for (int i = 0; i < this.e; i++)
    {
      int[] arrayOfInt5 = this.g;
      int i9 = this.f;
      this.f = (i9 + 1);
      arrayOfInt5[i9] = i;
    }
    this.c.a(paramMatrix4);
    int j = 0;
    label73: double d1;
    int n;
    int i1;
    int i2;
    Object localObject;
    label168: int i3;
    double[] arrayOfDouble2;
    double d2;
    int i8;
    if (j < 6)
    {
      float[] arrayOfFloat = this.c.a(j);
      if (this.f >= 3)
      {
        int[] arrayOfInt1 = this.g;
        int k = this.f;
        this.f = (k + 1);
        arrayOfInt1[k] = this.g[0];
        int m = this.g[0];
        double[] arrayOfDouble1 = this.b[m];
        d1 = a(arrayOfDouble1, arrayOfFloat);
        n = 1;
        i1 = m;
        i2 = 0;
        localObject = arrayOfDouble1;
        if (n < this.f)
        {
          i3 = this.g[n];
          arrayOfDouble2 = this.b[i3];
          d2 = a(arrayOfDouble2, arrayOfFloat);
          if (d1 < 0.0D)
            break label446;
          int[] arrayOfInt4 = this.h;
          i8 = i2 + 1;
          arrayOfInt4[i2] = i1;
        }
      }
    }
    label298: label439: label446: for (int i4 = i8; ; i4 = i2)
    {
      int i5;
      label244: int i6;
      label254: double d3;
      int i7;
      if (d1 < 0.0D)
      {
        i5 = 1;
        if (d2 >= 0.0D)
          break label357;
        i6 = 1;
        if (i5 == i6)
          break label439;
        d3 = 1.0D / (d2 - d1);
        if (d2 >= 0.0D)
          break label363;
        a(arrayOfDouble2, (double[])localObject, d3 * d2, this.b[this.e]);
        int[] arrayOfInt3 = this.h;
        i7 = i4 + 1;
        arrayOfInt3[i4] = this.e;
        this.e = (1 + this.e);
      }
      while (true)
      {
        n++;
        localObject = arrayOfDouble2;
        i1 = i3;
        i2 = i7;
        d1 = d2;
        break label168;
        i5 = 0;
        break label244;
        label357: i6 = 0;
        break label254;
        label363: a((double[])localObject, arrayOfDouble2, d3 * -d1, this.b[this.e]);
        break label298;
        if (i2 >= 3)
        {
          int[] arrayOfInt2 = this.g;
          this.g = this.h;
          this.h = arrayOfInt2;
        }
        for (this.f = i2; ; this.f = (-1 + this.f))
        {
          j++;
          break label73;
          break;
        }
        i7 = i4;
      }
    }
  }

  public final void a(double[] paramArrayOfDouble)
  {
    int i = 0;
    if (paramArrayOfDouble.length == this.a);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      double[][] arrayOfDouble = this.b;
      int j = this.d;
      this.d = (j + 1);
      double[] arrayOfDouble1 = arrayOfDouble[j];
      while (i < this.a)
      {
        arrayOfDouble1[i] = paramArrayOfDouble[i];
        i++;
      }
    }
    this.g[this.f] = this.f;
    this.f = (1 + this.f);
  }

  public final double[] a(int paramInt)
  {
    return this.b[this.g[paramInt]];
  }

  public final int b()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.k
 * JD-Core Version:    0.6.2
 */
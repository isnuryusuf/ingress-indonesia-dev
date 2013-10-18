package com.nianticproject.ingress.common.scanner.a;

import a.a.a.a.b.bw;
import com.google.a.a.an;
import com.nianticproject.ingress.common.q.c;

public final class ag
{
  private final aj[] a = new aj[11];
  private int b;
  private final ah c;
  private int d;
  private int e;
  private final ai[] f;
  private int g;
  private final ai[] h;
  private int i;

  public ag()
  {
    for (int j = 0; j < this.a.length; j++)
      this.a[j] = new aj(0);
    this.f = new ai[10];
    this.h = new ai[10];
    for (int k = 0; k < 10; k++)
    {
      this.f[k] = new ai(0);
      this.h[k] = new ai(0);
    }
    this.c = new ah((byte)0);
  }

  private int a(int paramInt)
  {
    return (paramInt + this.b) % this.b;
  }

  private static int a(aj paramaj1, aj paramaj2)
  {
    double d1 = paramaj1.a;
    double d2 = paramaj1.b;
    double d3 = paramaj2.a;
    double d4 = d2 - paramaj2.b;
    if (Math.abs(d4) < 1.0E-07D)
    {
      d4 = d1 - d3;
      if (Math.abs(d4) < 1.0E-07D)
        return 0;
    }
    if (d4 < 0.0D)
      return -1;
    return 1;
  }

  private static void a(int paramInt1, int paramInt2, int paramInt3, bw parambw)
  {
    while (paramInt1 <= paramInt2)
    {
      parambw.d(c.a(17, paramInt1, paramInt3));
      paramInt1++;
    }
  }

  public final void a()
  {
    this.b = 0;
  }

  public final void a(double paramDouble1, double paramDouble2)
  {
    if (this.b < -1 + this.a.length);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      aj[] arrayOfaj = this.a;
      int j = this.b;
      this.b = (j + 1);
      aj localaj = arrayOfaj[j];
      localaj.a = paramDouble1;
      localaj.b = paramDouble2;
      return;
    }
  }

  public final void a(bw parambw)
  {
    boolean bool;
    int j;
    label80: aj localaj3;
    ah localah2;
    if (this.b >= 3)
    {
      bool = true;
      an.b(bool);
      this.d = 0;
      this.e = 0;
      ah localah1 = this.c;
      aj localaj1 = localah1.a;
      localah1.a.b = 1.7976931348623157E+308D;
      localaj1.a = 1.7976931348623157E+308D;
      aj localaj2 = localah1.b;
      localah1.b.b = -1.797693134862316E+308D;
      localaj2.a = -1.797693134862316E+308D;
      j = 0;
      if (j >= this.b)
        break label315;
      localaj3 = this.a[j];
      localaj3.a = (0.0001220703125D * localaj3.a);
      localaj3.b = (0.0001220703125D * localaj3.b);
      localah2 = this.c;
      if (localaj3.a >= localah2.a.a)
        break label249;
      localah2.a.a = localaj3.a;
      label162: if (localaj3.b >= localah2.a.b)
        break label282;
      localah2.a.b = localaj3.b;
    }
    while (true)
    {
      if (a(localaj3, this.a[this.d]) < 0)
        this.d = j;
      if (a(localaj3, this.a[this.e]) >= 0)
        this.e = j;
      j++;
      break label80;
      bool = false;
      break;
      label249: if (localaj3.a <= localah2.b.a)
        break label162;
      localah2.b.a = localaj3.a;
      break label162;
      label282: if (localaj3.b > localah2.b.b)
        localah2.b.b = localaj3.b;
    }
    label315: this.g = 0;
    int i4;
    for (int k = this.d; k != this.e; k = i4)
    {
      i4 = a(k - 1);
      if (Math.abs(this.a[i4].b - this.a[k].b) >= 1.0E-07D)
      {
        ai[] arrayOfai2 = this.f;
        int i5 = this.g;
        this.g = (i5 + 1);
        arrayOfai2[i5].a(this.a[i4], this.a[k]);
      }
    }
    this.i = 0;
    int i2;
    for (int m = this.d; m != this.e; m = i2)
    {
      i2 = a(m + 1);
      if (Math.abs(this.a[m].b - this.a[i2].b) >= 1.0E-07D)
      {
        ai[] arrayOfai1 = this.h;
        int i3 = this.i;
        this.i = (i3 + 1);
        arrayOfai1[i3].a(this.a[m], this.a[i2]);
      }
    }
    parambw.clear();
    int n = 0;
    int i1 = 0;
    double d1 = this.a[this.d].b;
    double d2 = this.a[this.e].b;
    long l1 = ()Math.floor(d1);
    long l2 = 9223372036854775807L;
    long l3 = -9223372036854775808L;
    while ((d1 <= d2) && (n < this.g) && (i1 < this.i))
    {
      ai localai1 = this.f[n];
      ai localai2 = this.h[i1];
      d1 = Math.max(localai1.b.b, localai2.a.b);
      double d3 = localai1.a.b;
      double d4 = localai2.b.b;
      double d5 = Math.min(d3, d4);
      double d6 = localai1.a(d1);
      double d7 = localai2.a(d1);
      long l4 = ()Math.floor(d6);
      long l5 = ()Math.floor(d7);
      long l6 = Math.min(l4, l5);
      long l7 = Math.max(l4, l5);
      long l8 = ()Math.floor(d1);
      if (l8 != l1)
      {
        a((int)Math.min(l2, l6), (int)Math.max(l3, l7), (int)l1, parambw);
        l3 = l7;
        l2 = l6;
        l1 = l8;
      }
      while (true)
      {
        if (d1 == d5)
          break label844;
        d1 = Math.min(d5, Math.floor(d1 + 1.0D));
        break;
        l2 = Math.min(l2, Math.min(l4, l5));
        l3 = Math.max(l3, Math.max(l4, l5));
      }
      label844: if (d1 >= d3)
        n++;
      if (d1 >= d4)
        i1++;
    }
    if (l2 <= l3)
      a((int)l2, (int)l3, (int)l1, parambw);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.ag
 * JD-Core Version:    0.6.2
 */
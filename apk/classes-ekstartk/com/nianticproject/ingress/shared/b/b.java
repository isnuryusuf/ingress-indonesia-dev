package com.nianticproject.ingress.shared.b;

import com.google.a.d.aa;
import com.google.a.d.f;
import com.google.a.d.j;
import com.google.a.d.u;

public final class b
{
  private static final int[] a = new int[1024];
  private static final int[] b = new int[1024];

  static
  {
    a(0, 0, 0, 0, 0, 0);
    a(0, 0, 0, 1, 0, 1);
    a(0, 0, 0, 2, 0, 2);
    a(0, 0, 0, 3, 0, 3);
  }

  private static int a(double paramDouble)
  {
    return (int)Math.max(0L, Math.min(1073741823L, Math.round(536870911.5D + 536870912.0D * paramDouble)));
  }

  public static j a(u paramu)
  {
    double d1 = paramu.b();
    double d2 = paramu.e();
    double d3 = Math.cos(d1);
    double d4 = d3 * Math.cos(d2);
    double d5 = d3 * Math.sin(d2);
    double d6 = Math.sin(d1);
    double d7 = Math.abs(d4);
    double d8 = Math.abs(d5);
    double d9 = Math.abs(d6);
    int i;
    double d10;
    double d11;
    if (d7 > d8)
      if (d7 > d9)
        if (d4 < 0.0D)
        {
          i = 3;
          switch (i)
          {
          default:
            d10 = -d5 / d6;
            d11 = -d4 / d6;
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          }
        }
    long l;
    while (true)
    {
      int j = a(aa.b(d10));
      int k = a(aa.b(d11));
      l = i << 60;
      int m = i & 0x1;
      for (int n = 7; n >= 0; n--)
      {
        int i1 = m + ((0xF & j >> n * 4) << 6) + ((0xF & k >> n * 4) << 2);
        int i2 = a[i1];
        l |= i2 >> 2 << 4 * (n * 2);
        m = i2 & 0x3;
      }
      i = 0;
      break;
      if (d6 < 0.0D)
      {
        i = 5;
        break;
      }
      i = 2;
      break;
      if (d8 > d9)
      {
        if (d5 < 0.0D)
        {
          i = 4;
          break;
        }
        i = 1;
        break;
      }
      if (d6 < 0.0D)
      {
        i = 5;
        break;
      }
      i = 2;
      break;
      d10 = d5 / d4;
      d11 = d6 / d4;
      continue;
      d10 = -d4 / d5;
      d11 = d6 / d5;
      continue;
      d10 = -d4 / d6;
      d11 = -d5 / d6;
      continue;
      d10 = d6 / d4;
      d11 = d5 / d4;
      continue;
      d10 = d6 / d5;
      d11 = -d4 / d5;
    }
    return new j(1L + (l << 1));
  }

  public static u a(int paramInt1, int paramInt2)
  {
    return u.a(0.0174532925199433D * (paramInt1 / 1000000.0D), 0.0174532925199433D * (paramInt2 / 1000000.0D));
  }

  public static u a(j paramj)
  {
    int i = 0x1 & paramj.e();
    int j = 0;
    int k = 0;
    int m = i;
    int n = 7;
    if (n >= 0)
    {
      if (n == 7);
      for (int i4 = 2; ; i4 = 4)
      {
        int i5 = (int)(m + ((paramj.d() >>> 1 + 4 * (n * 2) & -1 + (1 << i4 * 2)) << 2));
        int i6 = b[i5];
        j += (i6 >> 6 << n * 4);
        k += ((0xF & i6 >> 2) << n * 4);
        m = i6 & 0x3;
        n--;
        break;
      }
    }
    int i1;
    double d1;
    double d2;
    double d5;
    double d4;
    if (paramj.g())
    {
      i1 = 1;
      int i2 = i1 + (j << 1) - 1073741824;
      int i3 = i1 + (k << 1) - 1073741824;
      d1 = aa.a(9.313225746154785E-10D * i2);
      d2 = aa.a(9.313225746154785E-10D * i3);
      switch (paramj.e())
      {
      default:
        d5 = d1;
        d4 = d2;
        d2 = -1.0D;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      return u.a(Math.atan2(d2, Math.sqrt(d4 * d4 + d5 * d5)), Math.atan2(d5, d4));
      if ((0x1 & (j ^ (int)paramj.d() >>> 2)) != 0)
      {
        i1 = 2;
        break;
      }
      i1 = 0;
      break;
      d4 = 1.0D;
      d5 = d1;
      continue;
      d4 = -d1;
      d5 = 1.0D;
      continue;
      d4 = -d1;
      d5 = -d2;
      d2 = 1.0D;
      continue;
      d5 = -d2;
      d2 = -d1;
      d4 = -1.0D;
      continue;
      double d3 = -d1;
      d4 = d2;
      d2 = d3;
      d5 = -1.0D;
    }
  }

  private static void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    if (paramInt1 == 4)
    {
      int i3 = paramInt3 + (paramInt2 << 4);
      a[(paramInt4 + (i3 << 2))] = (paramInt6 + (paramInt5 << 2));
      b[(paramInt4 + (paramInt5 << 2))] = (paramInt6 + (i3 << 2));
    }
    while (true)
    {
      return;
      int i = paramInt1 + 1;
      int j = paramInt2 << 1;
      int k = paramInt3 << 1;
      int m = paramInt5 << 2;
      for (int n = 0; n < 4; n++)
      {
        int i1 = f.a(paramInt6, n);
        int i2 = f.a(n);
        a(i, j + (i1 >>> 1), k + (i1 & 0x1), paramInt4, m + n, paramInt6 ^ i2);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.b.b
 * JD-Core Version:    0.6.2
 */
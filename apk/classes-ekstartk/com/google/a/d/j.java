package com.google.a.d;

import java.util.Collection;

public final class j
  implements Comparable<j>
{
  private static final int[] a = new int[1024];
  private static final int[] b = new int[1024];
  private static final long[] d = { 0L, 0L, 9223372036854775807L, 6148914691236517205L, 4611686018427387903L, 3689348814741910323L, 3074457345618258602L, 2635249153387078802L, 2305843009213693951L, 2049638230412172401L, 1844674407370955161L, 1676976733973595601L, 1537228672809129301L, 1418980313362273201L, 1317624576693539401L, 1229782938247303441L, 1152921504606846975L, 1085102592571150095L, 1024819115206086200L, 970881267037344821L, 922337203685477580L, 878416384462359600L, 838488366986797800L, 802032351030850070L, 768614336404564650L, 737869762948382064L, 709490156681136600L, 683212743470724133L, 658812288346769700L, 636094623231363848L, 614891469123651720L, 595056260442243600L, 576460752303423487L, 558992244657865200L, 542551296285575047L, 527049830677415760L, 512409557603043100L };
  private static final int[] e = { 0, 0, 1, 0, 3, 0, 3, 1, 7, 6, 5, 4, 3, 2, 1, 0, 15, 0, 15, 16, 15, 15, 15, 5, 15, 15, 15, 24, 15, 23, 15, 15, 31, 15, 17, 15, 15 };
  private final long c;

  static
  {
    a(0, 0, 0, 0, 0, 0);
    a(0, 0, 0, 1, 0, 1);
    a(0, 0, 0, 2, 0, 2);
    a(0, 0, 0, 3, 0, 3);
  }

  public strictfp j()
  {
    this.c = 0L;
  }

  public strictfp j(long paramLong)
  {
    this.c = paramLong;
  }

  private static strictfp int a(double paramDouble)
  {
    return (int)Math.max(0L, Math.min(1073741823L, Math.round(536870911.5D + 536870912.0D * paramDouble)));
  }

  public static strictfp j a()
  {
    return new j(-1L);
  }

  public static strictfp j a(int paramInt)
  {
    return new j(1L + (paramInt << 61)).b(0);
  }

  private static strictfp j a(int paramInt1, int paramInt2, int paramInt3)
  {
    long[] arrayOfLong = new long[2];
    arrayOfLong[0] = 0L;
    arrayOfLong[1] = (paramInt1 << 28);
    int i = paramInt1 & 0x1;
    for (int j = 7; j >= 0; j--)
    {
      int k = i + ((0xF & paramInt2 >> j * 4) << 6) + ((0xF & paramInt3 >> j * 4) << 2);
      int m = a[k];
      int n = j >> 2;
      arrayOfLong[n] |= m >> 2 << 4 * (2 * (j & 0x3));
      i = m & 0x3;
    }
    return new j(1L + ((arrayOfLong[1] << 32) + arrayOfLong[0] << 1));
  }

  private static strictfp j a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (paramBoolean)
      return a(paramInt1, paramInt2, paramInt3);
    int i = Math.max(-1, Math.min(1073741824, paramInt2));
    int j = Math.max(-1, Math.min(1073741824, paramInt3));
    y localy = aa.a(paramInt1, 9.313225746154785E-10D * (1 + (i << 1) - 1073741824), 9.313225746154785E-10D * (1 + (j << 1) - 1073741824));
    int k = aa.a(localy);
    c localc = aa.a(k, localy);
    return a(k, a(localc.a()), a(localc.b()));
  }

  public static strictfp j a(u paramu)
  {
    return a(paramu.g());
  }

  public static strictfp j a(y paramy)
  {
    int i = aa.a(paramy);
    c localc = aa.a(i, paramy);
    return a(i, a(aa.b(localc.a())), a(aa.b(localc.b())));
  }

  private static strictfp void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
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

  private static strictfp boolean a(long paramLong1, long paramLong2)
  {
    return paramLong1 - -9223372036854775808L < -9223372036854775808L + paramLong2;
  }

  private static strictfp boolean b(long paramLong1, long paramLong2)
  {
    return paramLong1 - -9223372036854775808L > -9223372036854775808L + paramLong2;
  }

  public static strictfp long e(int paramInt)
  {
    return 1L << 2 * (30 - paramInt);
  }

  public static strictfp j n()
  {
    return a(0).c(0);
  }

  public static strictfp j o()
  {
    return a(5).d(0);
  }

  private strictfp y q()
  {
    a locala1 = new a();
    a locala2 = new a();
    int i = a(locala1, locala2, null);
    int j;
    if (g())
      j = 1;
    while (true)
    {
      int k = j + (locala1.a() << 1) - 1073741824;
      int m = j + (locala2.a() << 1) - 1073741824;
      return aa.a(i, aa.a(9.313225746154785E-10D * k), aa.a(9.313225746154785E-10D * m));
      if ((0x1 & (locala1.a() ^ (int)this.c >>> 2)) != 0)
        j = 2;
      else
        j = 0;
    }
  }

  public final strictfp int a(a parama1, a parama2, a parama3)
  {
    int i = e();
    int j = i & 0x1;
    int k = 7;
    if (k >= 0)
    {
      if (k == 7);
      for (int n = 2; ; n = 4)
      {
        int i1 = j + (((int)(this.c >>> 1 + 4 * (k * 2)) & -1 + (1 << n * 2)) << 2);
        int i2 = b[i1];
        parama1.a(parama1.a() + (i2 >> 6 << k * 4));
        parama2.a(parama2.a() + ((0xF & i2 >> 2) << k * 4));
        j = i2 & 0x3;
        k--;
        break;
      }
    }
    if (parama3 != null)
      if ((0x11111110 & p()) == 0L)
        break label159;
    label159: for (int m = j ^ 0x1; ; m = j)
    {
      parama3.a(m);
      return i;
    }
  }

  public final strictfp void a(int paramInt, Collection<j> paramCollection)
  {
    int i = 1;
    a locala1 = new a();
    a locala2 = new a();
    int k = a(locala1, locala2, null);
    int m = i << 30 - (paramInt + 1);
    int n = m << 1;
    int i4;
    int i5;
    label109: int i11;
    int i12;
    if ((m & locala1.a()) != 0)
      if (n + locala1.a() < 1073741824)
      {
        int i13 = i;
        i4 = i13;
        i5 = n;
        if ((m & locala2.a()) == 0)
          break label293;
        if (n + locala2.a() >= 1073741824)
          break label287;
        int i9 = i;
        paramCollection.add(b(paramInt));
        paramCollection.add(a(k, i5 + locala1.a(), locala2.a(), i4).b(paramInt));
        paramCollection.add(a(k, locala1.a(), n + locala2.a(), i9).b(paramInt));
        if ((i4 != 0) || (i9 != 0))
        {
          i11 = i5 + locala1.a();
          i12 = n + locala2.a();
          if ((i4 == 0) || (i9 == 0))
            break label329;
        }
      }
    while (true)
    {
      paramCollection.add(a(k, i11, i12, i).b(paramInt));
      return;
      int i14 = 0;
      break;
      int i1 = -n;
      if (locala1.a() - n >= 0);
      int i3;
      for (int i2 = i; ; i3 = 0)
      {
        i4 = i2;
        i5 = i1;
        break;
      }
      label287: int i10 = 0;
      break label109;
      label293: int i6 = -n;
      if (locala2.a() - n >= 0);
      int i8;
      for (int i7 = i; ; i8 = 0)
      {
        i10 = i7;
        n = i6;
        break;
      }
      label329: int j = 0;
    }
  }

  public final strictfp boolean a(j paramj)
  {
    return (paramj.d(i())) && (paramj.c(j()));
  }

  public final strictfp j b(int paramInt)
  {
    long l = e(paramInt);
    return new j(l | this.c & -l);
  }

  public final strictfp y b()
  {
    return y.d(q());
  }

  public final strictfp boolean b(j paramj)
  {
    return (paramj.i().c(j())) && (paramj.j().d(i()));
  }

  public final strictfp j c(int paramInt)
  {
    return new j(this.c - p() + e(paramInt));
  }

  public final strictfp u c()
  {
    return new u(q());
  }

  public final strictfp boolean c(j paramj)
  {
    return (a(this.c, paramj.c)) || (this.c == paramj.c);
  }

  public final strictfp long d()
  {
    return this.c;
  }

  public final strictfp j d(int paramInt)
  {
    return new j(this.c + p() + e(paramInt));
  }

  public final strictfp boolean d(j paramj)
  {
    return (b(this.c, paramj.c)) || (this.c == paramj.c);
  }

  public final strictfp int e()
  {
    return (int)(this.c >>> 61);
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof j));
    j localj;
    do
    {
      return false;
      localj = (j)paramObject;
    }
    while (this.c != localj.c);
    return true;
  }

  public final strictfp int f()
  {
    if (g())
    {
      j = 30;
      return j;
    }
    int i = (int)this.c;
    int j = -1;
    if (i != 0)
      j = 15;
    while (true)
    {
      int k = i & -i;
      if ((k & 0x5555) != 0)
        j += 8;
      if ((0x550055 & k) != 0)
        j += 4;
      if ((0x5050505 & k) != 0)
        j += 2;
      if ((k & 0x11111111) == 0)
        break;
      return j + 1;
      i = (int)(this.c >>> 32);
    }
  }

  public final strictfp boolean g()
  {
    return (0x1 & (int)this.c) != 0;
  }

  public final strictfp boolean h()
  {
    boolean bool1 = (this.c & e(0) - 1L) < 0L;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    return bool2;
  }

  public final strictfp int hashCode()
  {
    return (int)((this.c >>> 32) + this.c);
  }

  public final strictfp j i()
  {
    return new j(this.c - (p() - 1L));
  }

  public final strictfp j j()
  {
    return new j(this.c + (p() - 1L));
  }

  public final strictfp j k()
  {
    long l = p() << 2;
    return new j(l | this.c & -l);
  }

  public final strictfp j l()
  {
    long l = p();
    return new j(this.c - l + (l >>> 2));
  }

  public final strictfp j m()
  {
    return new j(this.c + (p() << 1));
  }

  public final strictfp long p()
  {
    return this.c & -this.c;
  }

  public final strictfp String toString()
  {
    return "(face=" + e() + ", pos=" + Long.toHexString(0xFFFFFFFF & this.c) + ", level=" + f() + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.j
 * JD-Core Version:    0.6.2
 */
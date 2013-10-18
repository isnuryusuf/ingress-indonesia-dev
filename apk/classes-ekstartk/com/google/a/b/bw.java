package com.google.a.b;

import java.io.Serializable;

final class bw extends cf
  implements br, Serializable
{
  private long d()
  {
    long l = this.d;
    ch[] arrayOfch = this.c;
    if (arrayOfch != null)
    {
      int i = arrayOfch.length;
      for (int j = 0; j < i; j++)
      {
        ch localch = arrayOfch[j];
        if (localch != null)
          l += localch.a;
      }
    }
    return l;
  }

  final long a(long paramLong1, long paramLong2)
  {
    return paramLong1 + paramLong2;
  }

  public final void a()
  {
    a(1L);
  }

  public final void a(long paramLong)
  {
    ch[] arrayOfch1 = this.c;
    ci localci;
    boolean bool1;
    if (arrayOfch1 == null)
    {
      long l4 = this.d;
      if (b(l4, l4 + paramLong));
    }
    else
    {
      localci = (ci)a.get();
      int i = localci.b;
      if (arrayOfch1 == null)
        break label570;
      int i7 = arrayOfch1.length;
      if (i7 <= 0)
        break label570;
      ch localch3 = arrayOfch1[(i & i7 - 1)];
      if (localch3 == null)
        break label570;
      long l3 = localch3.a;
      bool1 = localch3.a(l3, l3 + paramLong);
      if (bool1);
    }
    while (true)
    {
      int j = localci.b;
      boolean bool2 = bool1;
      int k = 0;
      ch[] arrayOfch2 = this.c;
      int n;
      ch localch1;
      ch localch2;
      if (arrayOfch2 != null)
      {
        n = arrayOfch2.length;
        if (n > 0)
        {
          localch1 = arrayOfch2[(j & n - 1)];
          if (localch1 == null)
            if (this.e == 0)
            {
              localch2 = new ch(paramLong);
              if ((this.e != 0) || (!b()));
            }
        }
      }
      while (true)
      {
        while (true)
        {
          try
          {
            ch[] arrayOfch5 = this.c;
            if (arrayOfch5 == null)
              break label564;
            int i4 = arrayOfch5.length;
            if (i4 <= 0)
              break label564;
            int i6 = j & i4 - 1;
            if (arrayOfch5[i6] != null)
              break label564;
            arrayOfch5[i6] = localch2;
            i5 = 1;
            this.e = 0;
            if (i5 == 0)
              break;
            label241: localci.b = j;
            return;
          }
          finally
          {
            this.e = 0;
          }
          k = 0;
          label363: 
          do
            while (true)
            {
              int i1 = j ^ j << 13;
              int i2 = i1 ^ i1 >>> 17;
              j = i2 ^ i2 << 5;
              break;
              if (!bool2)
              {
                bool2 = true;
              }
              else
              {
                long l2 = localch1.a;
                if (localch1.a(l2, a(l2, paramLong)))
                  break label241;
                if ((n >= cf.b) || (this.c != arrayOfch2))
                {
                  k = 0;
                }
                else
                {
                  if (k != 0)
                    break label363;
                  k = 1;
                }
              }
            }
          while ((this.e != 0) || (!b()));
          try
          {
            if (this.c == arrayOfch2)
            {
              ch[] arrayOfch4 = new ch[n << 1];
              for (int i3 = 0; i3 < n; i3++)
                arrayOfch4[i3] = arrayOfch2[i3];
              this.c = arrayOfch4;
            }
            this.e = 0;
            k = 0;
            break;
          }
          finally
          {
            this.e = 0;
          }
        }
        if ((this.e == 0) && (this.c == arrayOfch2) && (b()));
        while (true)
        {
          long l1;
          try
          {
            if (this.c != arrayOfch2)
              break label558;
            ch[] arrayOfch3 = new ch[2];
            arrayOfch3[(j & 0x1)] = new ch(paramLong);
            this.c = arrayOfch3;
            m = 1;
            this.e = 0;
            if (m != 0)
              break label241;
          }
          finally
          {
            this.e = 0;
          }
          if (!b(l1, a(l1, paramLong)))
            break;
          break label241;
          label558: int m = 0;
        }
        label564: int i5 = 0;
      }
      label570: bool1 = true;
    }
  }

  public final double doubleValue()
  {
    return d();
  }

  public final float floatValue()
  {
    return (float)d();
  }

  public final int intValue()
  {
    return (int)d();
  }

  public final long longValue()
  {
    return d();
  }

  public final String toString()
  {
    return Long.toString(d());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bw
 * JD-Core Version:    0.6.2
 */
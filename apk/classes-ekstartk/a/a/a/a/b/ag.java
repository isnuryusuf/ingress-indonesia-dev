package a.a.a.a.b;

import a.a.a.a.a.a;
import a.a.a.a.c;
import a.a.a.a.e;
import java.io.Serializable;

public final class ag extends b
  implements c, Serializable, Cloneable
{
  protected transient long[] b;
  protected transient long[] c;
  protected transient boolean[] d;
  protected final float e;
  protected transient int f;
  protected transient int g;
  protected transient int h;
  protected int i;
  protected volatile transient af j;
  protected volatile transient cl k;
  protected volatile transient cb l;

  public ag()
  {
    this(1000);
  }

  public ag(byte paramByte)
  {
    this(16);
  }

  private ag(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("The expected number of elements must be nonnegative");
    this.e = 0.75F;
    this.f = e.b(paramInt, 0.75F);
    this.h = (-1 + this.f);
    this.g = e.a(this.f, 0.75F);
    this.b = new long[this.f];
    this.c = new long[this.f];
    this.d = new boolean[this.f];
  }

  private void b(int paramInt)
  {
    boolean[] arrayOfBoolean1 = this.d;
    long[] arrayOfLong1 = this.b;
    long[] arrayOfLong2 = this.c;
    int m = paramInt - 1;
    long[] arrayOfLong3 = new long[paramInt];
    long[] arrayOfLong4 = new long[paramInt];
    boolean[] arrayOfBoolean2 = new boolean[paramInt];
    int n = this.i;
    int i1 = 0;
    int i3;
    for (int i2 = n; ; i2 = i3)
    {
      i3 = i2 - 1;
      if (i2 == 0)
        break;
      while (arrayOfBoolean1[i1] == 0)
        i1++;
      long l1 = arrayOfLong1[i1];
      for (int i4 = m & (int)e.a(l1); arrayOfBoolean2[i4] != 0; i4 = m & i4 + 1);
      arrayOfBoolean2[i4] = true;
      arrayOfLong3[i4] = l1;
      arrayOfLong4[i4] = arrayOfLong2[i1];
      i1++;
    }
    this.f = paramInt;
    this.h = m;
    this.g = e.a(this.f, this.e);
    this.b = arrayOfLong3;
    this.c = arrayOfLong4;
    this.d = arrayOfBoolean2;
  }

  private ag f()
  {
    try
    {
      ag localag = (ag)super.clone();
      localag.k = null;
      localag.l = null;
      localag.j = null;
      localag.b = ((long[])this.b.clone());
      localag.c = ((long[])this.c.clone());
      localag.d = ((boolean[])this.d.clone());
      return localag;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new InternalError();
  }

  protected final int a(int paramInt)
  {
    for (int m = paramInt + 1 & this.h; ; m = m + 1 & this.h)
    {
      int n;
      if (this.d[m] != 0)
      {
        n = (int)e.a(this.b[m]) & this.h;
        if (paramInt > m)
          break label87;
        if ((paramInt < n) && (n <= m))
          continue;
      }
      label87: 
      while ((paramInt >= n) && (n > m))
      {
        if (this.d[m] == 0)
          break label109;
        this.b[paramInt] = this.b[m];
        this.c[paramInt] = this.c[m];
        paramInt = m;
        break;
      }
    }
    label109: this.d[paramInt] = false;
    return paramInt;
  }

  public final long a(long paramLong)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
      {
        this.i = (-1 + this.i);
        long l1 = this.c[m];
        a(m);
        return l1;
      }
    return this.a_;
  }

  public final long a(long paramLong1, long paramLong2)
  {
    for (int m = (int)e.a(paramLong1) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong1)
      {
        long l1 = this.c[m];
        this.c[m] = paramLong2;
        return l1;
      }
    this.d[m] = true;
    this.b[m] = paramLong1;
    this.c[m] = paramLong2;
    int n = 1 + this.i;
    this.i = n;
    if (n >= this.g)
      b(e.b(1 + this.i, this.e));
    return this.a_;
  }

  public final Long a(Long paramLong1, Long paramLong2)
  {
    long l1 = paramLong2.longValue();
    long l2 = paramLong1.longValue();
    for (int m = (int)e.a(l2) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == l2)
      {
        Long localLong = Long.valueOf(this.c[m]);
        this.c[m] = l1;
        return localLong;
      }
    this.d[m] = true;
    this.b[m] = l2;
    this.c[m] = l1;
    int n = 1 + this.i;
    this.i = n;
    if (n >= this.g)
      b(e.b(1 + this.i, this.e));
    return null;
  }

  public final Long a(Object paramObject)
  {
    long l1 = ((Long)paramObject).longValue();
    for (int m = (int)e.a(l1) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == l1)
      {
        this.i = (-1 + this.i);
        long l2 = this.c[m];
        a(m);
        return Long.valueOf(l2);
      }
    return null;
  }

  public final cl b()
  {
    if (this.k == null)
      this.k = new ak(this, (byte)0);
    return this.k;
  }

  public final boolean b(long paramLong)
  {
    long[] arrayOfLong = this.c;
    boolean[] arrayOfBoolean = this.d;
    int n;
    for (int m = this.f; ; m = n)
    {
      n = m - 1;
      if (m != 0)
      {
        if ((arrayOfBoolean[n] != 0) && (arrayOfLong[n] == paramLong))
          return true;
      }
      else
        return false;
    }
  }

  public final cb c()
  {
    if (this.l == null)
      this.l = new ah(this);
    return this.l;
  }

  public final boolean c(long paramLong)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
        return true;
    return false;
  }

  public final void clear()
  {
    if (this.i == 0)
      return;
    this.i = 0;
    a.a(this.d);
  }

  public final long d(long paramLong)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
        return this.c[m];
    return this.a_;
  }

  public final int hashCode()
  {
    int m = 0;
    int n = this.i;
    int i1 = 0;
    while (true)
    {
      int i2 = n - 1;
      if (n == 0)
        break;
      while (this.d[m] == 0)
        m++;
      int i3 = i1 + (e.b(this.b[m]) ^ e.b(this.c[m]));
      m++;
      i1 = i3;
      n = i2;
    }
    return i1;
  }

  public final boolean isEmpty()
  {
    return this.i == 0;
  }

  public final int size()
  {
    return this.i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.ag
 * JD-Core Version:    0.6.2
 */
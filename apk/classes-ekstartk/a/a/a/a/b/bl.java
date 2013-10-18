package a.a.a.a.b;

import a.a.a.a.a.a;
import a.a.a.a.c;
import a.a.a.a.c.g;
import a.a.a.a.c.j;
import a.a.a.a.e;
import java.io.Serializable;

public final class bl<V> extends h<V>
  implements c, Serializable, Cloneable
{
  protected transient long[] b = new long[this.f];
  protected transient V[] c = (Object[])new Object[this.f];
  protected transient boolean[] d = new boolean[this.f];
  protected final float e = 0.75F;
  protected transient int f = e.b(16, 0.75F);
  protected transient int g = e.a(this.f, 0.75F);
  protected transient int h = -1 + this.f;
  protected int i;
  protected volatile transient bk<V> j;
  protected volatile transient cl k;
  protected volatile transient j<V> l;

  private bl()
  {
  }

  public bl(byte paramByte)
  {
    this();
  }

  private void b(int paramInt)
  {
    boolean[] arrayOfBoolean1 = this.d;
    long[] arrayOfLong1 = this.b;
    Object[] arrayOfObject1 = this.c;
    int m = paramInt - 1;
    long[] arrayOfLong2 = new long[paramInt];
    Object[] arrayOfObject2 = (Object[])new Object[paramInt];
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
      arrayOfLong2[i4] = l1;
      arrayOfObject2[i4] = arrayOfObject1[i1];
      i1++;
    }
    this.f = paramInt;
    this.h = m;
    this.g = e.a(this.f, this.e);
    this.b = arrayOfLong2;
    this.c = arrayOfObject2;
    this.d = arrayOfBoolean2;
  }

  private bl<V> e()
  {
    try
    {
      bl localbl = (bl)super.clone();
      localbl.k = null;
      localbl.l = null;
      localbl.j = null;
      localbl.b = ((long[])this.b.clone());
      localbl.c = ((Object[])this.c.clone());
      localbl.d = ((boolean[])this.d.clone());
      return localbl;
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
    this.c[paramInt] = null;
    return paramInt;
  }

  public final cl a()
  {
    if (this.k == null)
      this.k = new bq(this, (byte)0);
    return this.k;
  }

  public final V a(long paramLong)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
      {
        this.i = (-1 + this.i);
        Object localObject = this.c[m];
        a(m);
        return localObject;
      }
    return this.b_;
  }

  public final V a(long paramLong, V paramV)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
      {
        Object localObject = this.c[m];
        this.c[m] = paramV;
        return localObject;
      }
    this.d[m] = true;
    this.b[m] = paramLong;
    this.c[m] = paramV;
    int n = 1 + this.i;
    this.i = n;
    if (n >= this.g)
      b(e.b(1 + this.i, this.e));
    return this.b_;
  }

  public final V a(Long paramLong)
  {
    long l1 = paramLong.longValue();
    for (int m = (int)e.a(l1) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == l1)
        return this.c[m];
    return this.b_;
  }

  public final V a(Long paramLong, V paramV)
  {
    long l1 = paramLong.longValue();
    for (int m = (int)e.a(l1) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == l1)
      {
        Object localObject = this.c[m];
        this.c[m] = paramV;
        return localObject;
      }
    this.d[m] = true;
    this.b[m] = l1;
    this.c[m] = paramV;
    int n = 1 + this.i;
    this.i = n;
    if (n >= this.g)
      b(e.b(1 + this.i, this.e));
    return this.b_;
  }

  public final j<V> b()
  {
    if (this.l == null)
      this.l = new bm(this);
    return this.l;
  }

  public final boolean b(long paramLong)
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
    g.a(this.c);
  }

  public final boolean containsValue(Object paramObject)
  {
    Object[] arrayOfObject = this.c;
    boolean[] arrayOfBoolean = this.d;
    int n;
    for (int m = this.f; ; m = n)
    {
      n = m - 1;
      if (m == 0)
        break;
      if (arrayOfBoolean[n] != 0)
        if (arrayOfObject[n] == null)
        {
          if (paramObject != null);
        }
        else
          while (arrayOfObject[n].equals(paramObject))
            return true;
    }
    return false;
  }

  public final bk<V> d()
  {
    if (this.j == null)
      this.j = new bs(this, (byte)0);
    return this.j;
  }

  public final V e(long paramLong)
  {
    for (int m = (int)e.a(paramLong) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == paramLong)
        return this.c[m];
    return this.b_;
  }

  public final int hashCode()
  {
    int m = this.i;
    int n = 0;
    int i1 = 0;
    int i2 = m - 1;
    int i3;
    int i6;
    if (m != 0)
    {
      while (this.d[i1] == 0)
        i1++;
      i3 = e.b(this.b[i1]);
      if (this == this.c[i1])
        break label107;
      if (this.c[i1] == null)
        i6 = 0;
    }
    label66: label107: for (int i4 = i6 ^ i3; ; i4 = i3)
    {
      int i5 = i4 + n;
      i1++;
      n = i5;
      m = i2;
      break;
      i6 = this.c[i1].hashCode();
      break label66;
      return n;
    }
  }

  public final boolean isEmpty()
  {
    return this.i == 0;
  }

  public final V remove(Object paramObject)
  {
    long l1 = ((Long)paramObject).longValue();
    for (int m = (int)e.a(l1) & this.h; this.d[m] != 0; m = m + 1 & this.h)
      if (this.b[m] == l1)
      {
        this.i = (-1 + this.i);
        Object localObject = this.c[m];
        a(m);
        return localObject;
      }
    return this.b_;
  }

  public final int size()
  {
    return this.i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.bl
 * JD-Core Version:    0.6.2
 */
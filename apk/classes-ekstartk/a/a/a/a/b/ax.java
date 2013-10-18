package a.a.a.a.b;

import a.a.a.a.c.j;
import a.a.a.a.c.q;
import java.io.Serializable;
import java.util.NoSuchElementException;

final class ax extends n<V>
  implements Serializable
{
  long b;
  long c;
  boolean d;
  boolean e;
  protected volatile transient q<bj<V>> f;
  protected volatile transient cm g;
  protected volatile transient j<V> h;

  public ax(ap paramap, long paramLong1, boolean paramBoolean1, long paramLong2, boolean paramBoolean2)
  {
    if ((!paramBoolean1) && (!paramBoolean2) && (paramap.a(paramLong1, paramLong2) > 0))
      throw new IllegalArgumentException("Start key (" + paramLong1 + ") is larger than end key (" + paramLong2 + ")");
    this.b = paramLong1;
    this.d = paramBoolean1;
    this.c = paramLong2;
    this.e = paramBoolean2;
    this.b_ = paramap.b_;
  }

  public final V a(long paramLong)
  {
    this.i.i = false;
    Object localObject;
    if (!c(paramLong))
      localObject = this.b_;
    do
    {
      return localObject;
      localObject = this.i.a(paramLong);
    }
    while (this.i.i);
    return this.b_;
  }

  public final V a(long paramLong, V paramV)
  {
    this.i.i = false;
    if (!c(paramLong))
    {
      StringBuilder localStringBuilder1 = new StringBuilder("Key (").append(paramLong).append(") out of range [");
      String str1;
      StringBuilder localStringBuilder2;
      if (this.d)
      {
        str1 = "-";
        localStringBuilder2 = localStringBuilder1.append(str1).append(", ");
        if (!this.e)
          break label107;
      }
      label107: for (String str2 = "-"; ; str2 = String.valueOf(this.c))
      {
        throw new IllegalArgumentException(str2 + ")");
        str1 = String.valueOf(this.b);
        break;
      }
    }
    Object localObject = this.i.a(paramLong, paramV);
    if (this.i.i)
      localObject = this.b_;
    return localObject;
  }

  public final V a(Long paramLong, V paramV)
  {
    Object localObject = a(paramLong.longValue(), paramV);
    if (this.i.i)
      localObject = this.b_;
    return localObject;
  }

  public final bv<V> b(long paramLong1, long paramLong2)
  {
    if ((this.e) && (this.d))
      return new ax(this.i, paramLong1, false, paramLong2, false);
    if (!this.e)
      if (this.i.a(paramLong2, this.c) >= 0);
    for (long l1 = paramLong2; ; l1 = paramLong2)
    {
      if (!this.d)
        if (this.i.a(paramLong1, this.b) <= 0);
      label77: for (long l2 = paramLong1; ; l2 = paramLong1)
      {
        if ((!this.e) && (!this.d) && (l2 == this.b) && (l1 == this.c))
        {
          return this;
          paramLong2 = this.c;
          break;
          paramLong1 = this.b;
          break label77;
        }
        return new ax(this.i, l2, false, l1, false);
      }
    }
  }

  public final j<V> b()
  {
    if (this.h == null)
      this.h = new az(this);
    return this.h;
  }

  public final boolean b(long paramLong)
  {
    return (c(paramLong)) && (this.i.b(paramLong));
  }

  final boolean c(long paramLong)
  {
    return ((this.d) || (this.i.a(paramLong, this.b) >= 0)) && ((this.e) || (this.i.a(paramLong, this.c) < 0));
  }

  public final void clear()
  {
    bc localbc = new bc(this);
    while (localbc.hasNext())
    {
      localbc.e();
      localbc.remove();
    }
  }

  public final boolean containsValue(Object paramObject)
  {
    bc localbc = new bc(this);
    while (localbc.hasNext())
    {
      Object localObject = localbc.e().b;
      if (localObject == null)
        if (paramObject != null)
          break;
      else
        while (true)
        {
          return true;
          if (!localObject.equals(paramObject))
            break;
        }
    }
    return false;
  }

  public final Long d()
  {
    at localat = m();
    if (localat == null)
      throw new NoSuchElementException();
    return localat.k();
  }

  public final Long e()
  {
    at localat = n();
    if (localat == null)
      throw new NoSuchElementException();
    return localat.k();
  }

  public final V e(long paramLong)
  {
    if (c(paramLong))
    {
      at localat = this.i.c(paramLong);
      if (localat != null)
        return localat.b;
    }
    return this.b_;
  }

  public final bv<V> f(long paramLong)
  {
    if (this.e)
      return new ax(this.i, this.b, this.d, paramLong, false);
    if (this.i.a(paramLong, this.c) < 0)
      return new ax(this.i, this.b, this.d, paramLong, false);
    return this;
  }

  public final cm f()
  {
    if (this.g == null)
      this.g = new ba(this, (byte)0);
    return this.g;
  }

  public final bv<V> g(long paramLong)
  {
    if (this.d)
      return new ax(this.i, paramLong, false, this.c, this.e);
    if (this.i.a(paramLong, this.b) > 0)
      return new ax(this.i, paramLong, false, this.c, this.e);
    return this;
  }

  public final long h()
  {
    at localat = m();
    if (localat == null)
      throw new NoSuchElementException();
    return localat.a;
  }

  public final long i()
  {
    at localat = n();
    if (localat == null)
      throw new NoSuchElementException();
    return localat.a;
  }

  public final boolean isEmpty()
  {
    return !new bc(this).hasNext();
  }

  public final q<bj<V>> j()
  {
    if (this.f == null)
      this.f = new ay(this);
    return this.f;
  }

  public final cc k()
  {
    return this.i.k;
  }

  public final at<V> m()
  {
    if (this.i.b == null);
    while (true)
    {
      return null;
      at localat;
      if (this.d)
        localat = this.i.d;
      while ((localat != null) && ((this.e) || (this.i.a(localat.a, this.c) < 0)))
      {
        return localat;
        localat = this.i.d(this.b);
        if (this.i.a(localat.a, this.b) < 0)
          localat = localat.i();
      }
    }
  }

  public final at<V> n()
  {
    if (this.i.b == null);
    while (true)
    {
      return null;
      at localat;
      if (this.e)
        localat = this.i.e;
      while ((localat != null) && ((this.d) || (this.i.a(localat.a, this.b) >= 0)))
      {
        return localat;
        localat = this.i.d(this.c);
        if (this.i.a(localat.a, this.c) >= 0)
          localat = localat.j();
      }
    }
  }

  public final V remove(Object paramObject)
  {
    Object localObject = a(((Long)paramObject).longValue());
    if (this.i.i)
      return localObject;
    return this.b_;
  }

  public final int size()
  {
    bc localbc = new bc(this);
    int j = 0;
    while (localbc.hasNext())
    {
      j++;
      localbc.e();
    }
    return j;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.ax
 * JD-Core Version:    0.6.2
 */
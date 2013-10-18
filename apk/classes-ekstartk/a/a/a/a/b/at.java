package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Map.Entry;

final class at<V>
  implements bj<V>, Cloneable
{
  long a;
  V b;
  at<V> c;
  at<V> d;
  int e;

  at()
  {
  }

  at(long paramLong, V paramV)
  {
    this.a = paramLong;
    this.b = paramV;
    this.e = -1073741824;
  }

  public final long a()
  {
    return this.a;
  }

  final void a(int paramInt)
  {
    this.e = (0xFFFFFF00 & this.e);
    this.e |= paramInt & 0xFF;
  }

  final void a(at<V> paramat)
  {
    this.e = (0x40000000 | this.e);
    this.c = paramat;
  }

  final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.e = (0x40000000 | this.e);
      return;
    }
    this.e = (0xBFFFFFFF & this.e);
  }

  final at<V> b()
  {
    if ((0x40000000 & this.e) != 0)
      return null;
    return this.c;
  }

  final void b(at<V> paramat)
  {
    this.e = (0x80000000 | this.e);
    this.d = paramat;
  }

  final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.e = (0x80000000 | this.e);
      return;
    }
    this.e = (0x7FFFFFFF & this.e);
  }

  final at<V> c()
  {
    if ((0x80000000 & this.e) != 0)
      return null;
    return this.d;
  }

  final void c(at<V> paramat)
  {
    this.e = (0xBFFFFFFF & this.e);
    this.c = paramat;
  }

  final void d(at<V> paramat)
  {
    this.e = (0x7FFFFFFF & this.e);
    this.d = paramat;
  }

  final boolean d()
  {
    return (0x40000000 & this.e) != 0;
  }

  final boolean e()
  {
    return (0x80000000 & this.e) != 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    if (this.a == ((Long)localEntry.getKey()).longValue())
      if (this.b == null)
      {
        if (localEntry.getValue() != null);
      }
      else
        while (this.b.equals(localEntry.getValue()))
          return true;
    return false;
  }

  final int f()
  {
    return (byte)this.e;
  }

  final void g()
  {
    this.e = (0xFFFFFF00 & this.e | 0xFF & 1 + (byte)this.e);
  }

  public final V getValue()
  {
    return this.b;
  }

  protected final void h()
  {
    this.e = (0xFFFFFF00 & this.e | 0xFF & -1 + (byte)this.e);
  }

  public final int hashCode()
  {
    int i = e.b(this.a);
    if (this.b == null);
    for (int j = 0; ; j = this.b.hashCode())
      return j ^ i;
  }

  final at<V> i()
  {
    at localat = this.d;
    if ((0x80000000 & this.e) == 0)
      while ((0x40000000 & localat.e) == 0)
        localat = localat.c;
    return localat;
  }

  final at<V> j()
  {
    at localat = this.c;
    if ((0x40000000 & this.e) == 0)
      while ((0x80000000 & localat.e) == 0)
        localat = localat.d;
    return localat;
  }

  public final Long k()
  {
    return Long.valueOf(this.a);
  }

  public final at<V> l()
  {
    try
    {
      at localat = (at)super.clone();
      localat.a = this.a;
      localat.b = this.b;
      localat.e = this.e;
      return localat;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new InternalError();
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.b;
    this.b = paramV;
    return localObject;
  }

  public final String toString()
  {
    return this.a + "=>" + this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.at
 * JD-Core Version:    0.6.2
 */
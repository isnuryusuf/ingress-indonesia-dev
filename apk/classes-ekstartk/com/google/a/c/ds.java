package com.google.a.c;

import java.util.Set;

final class ds extends du<hu<E>>
{
  private ds(dq paramdq)
  {
  }

  public final lj<hu<E>> b()
  {
    return a().b();
  }

  public final boolean contains(Object paramObject)
  {
    hu localhu;
    if ((paramObject instanceof hu))
    {
      localhu = (hu)paramObject;
      if (localhu.b() > 0)
        break label23;
    }
    label23: 
    while (this.a.a(localhu.a()) != localhu.b())
      return false;
    return true;
  }

  final boolean e()
  {
    return this.a.e();
  }

  final dc<hu<E>> f()
  {
    return new dt(this);
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final int size()
  {
    return this.a.d().size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ds
 * JD-Core Version:    0.6.2
 */
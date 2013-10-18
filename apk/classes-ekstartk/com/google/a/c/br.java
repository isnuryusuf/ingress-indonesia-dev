package com.google.a.c;

import java.util.Collection;
import java.util.Set;

public abstract class br<E> extends bn<E>
  implements ht<E>
{
  public final int a(Object paramObject)
  {
    return e().a(paramObject);
  }

  public final int a(E paramE, int paramInt)
  {
    return e().a(paramE, paramInt);
  }

  public final boolean a(E paramE, int paramInt1, int paramInt2)
  {
    return e().a(paramE, paramInt1, paramInt2);
  }

  protected final boolean a(Collection<?> paramCollection)
  {
    return hv.b(this, paramCollection);
  }

  public final int b(Object paramObject, int paramInt)
  {
    return e().b(paramObject, paramInt);
  }

  protected final boolean b(Collection<?> paramCollection)
  {
    return hv.c(this, paramCollection);
  }

  public final int c(E paramE, int paramInt)
  {
    return e().c(paramE, paramInt);
  }

  public Set<E> d()
  {
    return e().d();
  }

  protected abstract ht<E> e();

  public Set<hu<E>> e_()
  {
    return e().e_();
  }

  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (e().equals(paramObject));
  }

  public int hashCode()
  {
    return e().hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.br
 * JD-Core Version:    0.6.2
 */
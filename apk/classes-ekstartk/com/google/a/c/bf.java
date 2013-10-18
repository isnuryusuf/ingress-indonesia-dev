package com.google.a.c;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

abstract class bf<E> extends br<E>
  implements ka<E>
{
  private transient Comparator<? super E> a;
  private transient NavigableSet<E> b;
  private transient Set<hu<E>> c;

  public final ka<E> a(E paramE, an paraman)
  {
    return b().b(paramE, paraman).m();
  }

  public final ka<E> a(E paramE1, an paraman1, E paramE2, an paraman2)
  {
    return b().a(paramE2, paraman2, paramE1, paraman1).m();
  }

  abstract ka<E> b();

  public final ka<E> b(E paramE, an paraman)
  {
    return b().a(paramE, paraman).m();
  }

  abstract Iterator<hu<E>> c();

  public Comparator<? super E> comparator()
  {
    Object localObject = this.a;
    if (localObject == null)
    {
      localObject = ih.a(b().comparator()).a();
      this.a = ((Comparator)localObject);
    }
    return localObject;
  }

  protected final ht<E> e()
  {
    return b();
  }

  public final Set<hu<E>> e_()
  {
    Object localObject = this.c;
    if (localObject == null)
    {
      localObject = new bg(this);
      this.c = ((Set)localObject);
    }
    return localObject;
  }

  public final NavigableSet<E> f()
  {
    Object localObject = this.b;
    if (localObject == null)
    {
      localObject = new ke(this);
      this.b = ((NavigableSet)localObject);
    }
    return localObject;
  }

  public final hu<E> g()
  {
    return b().h();
  }

  public final hu<E> h()
  {
    return b().g();
  }

  public final hu<E> i()
  {
    return b().j();
  }

  public Iterator<E> iterator()
  {
    return hv.a(this);
  }

  public final hu<E> j()
  {
    return b().i();
  }

  public final ka<E> m()
  {
    return b();
  }

  public Object[] toArray()
  {
    return n();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ig.a(this, paramArrayOfT);
  }

  public String toString()
  {
    return e_().toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bf
 * JD-Core Version:    0.6.2
 */
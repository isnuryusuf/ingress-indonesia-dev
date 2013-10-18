package com.google.a.c;

import com.google.a.a.an;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

final class it<E> extends dz<E>
{
  private final transient dc<E> c;

  it(dc<E> paramdc, Comparator<? super E> paramComparator)
  {
    super(paramComparator);
    this.c = paramdc;
    if (!paramdc.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return;
    }
  }

  final int a(Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return -1;
      try
      {
        int i = jp.a(this.c, paramObject, this.a, ju.a, jq.c);
        if (i >= 0)
          return i;
      }
      catch (ClassCastException localClassCastException)
      {
      }
    }
    return -1;
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return this.c.a(paramArrayOfObject, paramInt);
  }

  final dz<E> a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size()))
      return this;
    if (paramInt1 < paramInt2)
      return new it(this.c.a(paramInt1, paramInt2), this.a);
    return a(this.a);
  }

  final dz<E> a(E paramE, boolean paramBoolean)
  {
    return a(0, e(paramE, paramBoolean));
  }

  final dz<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return b(paramE1, paramBoolean1).a(paramE2, paramBoolean2);
  }

  final dz<E> b(E paramE, boolean paramBoolean)
  {
    return a(f(paramE, paramBoolean), size());
  }

  public final lj<E> b()
  {
    return this.c.b();
  }

  public final lj<E> c()
  {
    return this.c.g().b();
  }

  public final E ceiling(E paramE)
  {
    int i = f(paramE, true);
    if (i == size())
      return null;
    return this.c.get(i);
  }

  public final boolean contains(Object paramObject)
  {
    boolean bool = false;
    if (paramObject != null);
    try
    {
      int i = Collections.binarySearch(this.c, paramObject, this.a);
      bool = false;
      if (i >= 0)
        bool = true;
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    int i = 1;
    boolean bool;
    if ((!jo.a(comparator(), paramCollection)) || (paramCollection.size() <= i))
      bool = super.containsAll(paramCollection);
    while (true)
    {
      return bool;
      lj locallj = this.c.b();
      Iterator localIterator = paramCollection.iterator();
      Object localObject1 = localIterator.next();
      try
      {
        while (true)
          if (locallj.hasNext())
          {
            int j = b(locallj.next(), localObject1);
            if (j == 0)
            {
              if (!localIterator.hasNext())
                break;
              Object localObject2 = localIterator.next();
              localObject1 = localObject2;
              continue;
            }
            if (j > 0)
              return false;
          }
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
        return false;
      }
    }
    return false;
  }

  final dz<E> d()
  {
    return new it(this.c.g(), ih.a(this.a).a());
  }

  final int e(E paramE, boolean paramBoolean)
  {
    dc localdc = this.c;
    Object localObject = an.a(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean);
    for (ju localju = ju.d; ; localju = ju.c)
      return jp.a(localdc, localObject, localComparator, localju, jq.b);
  }

  final boolean e()
  {
    return this.c.e();
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Set localSet;
    while (true)
    {
      return true;
      if (!(paramObject instanceof Set))
        return false;
      localSet = (Set)paramObject;
      if (size() != localSet.size())
        return false;
      if (jo.a(this.a, localSet))
      {
        Iterator localIterator = localSet.iterator();
        try
        {
          lj locallj = this.c.b();
          int i;
          do
          {
            if (!locallj.hasNext())
              break;
            Object localObject1 = locallj.next();
            Object localObject2 = localIterator.next();
            if (localObject2 == null)
              break label110;
            i = b(localObject1, localObject2);
          }
          while (i == 0);
          label110: return false;
        }
        catch (ClassCastException localClassCastException)
        {
          return false;
        }
        catch (NoSuchElementException localNoSuchElementException)
        {
          return false;
        }
      }
    }
    return containsAll(localSet);
  }

  final int f(E paramE, boolean paramBoolean)
  {
    dc localdc = this.c;
    Object localObject = an.a(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean);
    for (ju localju = ju.c; ; localju = ju.d)
      return jp.a(localdc, localObject, localComparator, localju, jq.b);
  }

  final dc<E> f()
  {
    return new dw(this, this.c);
  }

  public final E first()
  {
    return this.c.get(0);
  }

  public final E floor(E paramE)
  {
    int i = -1 + e(paramE, true);
    if (i == -1)
      return null;
    return this.c.get(i);
  }

  public final E higher(E paramE)
  {
    int i = f(paramE, false);
    if (i == size())
      return null;
    return this.c.get(i);
  }

  public final boolean isEmpty()
  {
    return false;
  }

  public final E last()
  {
    return this.c.get(-1 + size());
  }

  public final E lower(E paramE)
  {
    int i = -1 + e(paramE, false);
    if (i == -1)
      return null;
    return this.c.get(i);
  }

  public final int size()
  {
    return this.c.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.it
 * JD-Core Version:    0.6.2
 */
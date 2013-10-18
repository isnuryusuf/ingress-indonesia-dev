package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class dc<E> extends ct<E>
  implements List<E>, RandomAccess
{
  private static final dc<Object> a = new ik(ig.a);

  public static <E> dc<E> a(Iterable<? extends E> paramIterable)
  {
    an.a(paramIterable);
    if ((paramIterable instanceof Collection))
      return a(as.a(paramIterable));
    Iterator localIterator = paramIterable.iterator();
    if (!localIterator.hasNext())
      return a;
    Object localObject = localIterator.next();
    if (!localIterator.hasNext())
      return a(localObject);
    return new de().c(localObject).b(localIterator).a();
  }

  public static <E> dc<E> a(E paramE)
  {
    return new jk(paramE);
  }

  public static <E> dc<E> a(E paramE1, E paramE2)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2, paramE3 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10)
  {
    Object[] arrayOfObject = ig.a(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9, paramE10 });
    return b(arrayOfObject, arrayOfObject.length);
  }

  public static <E> dc<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10, E paramE11, E paramE12, E[] paramArrayOfE)
  {
    Object[] arrayOfObject1 = new Object[12 + paramArrayOfE.length];
    arrayOfObject1[0] = paramE1;
    arrayOfObject1[1] = paramE2;
    arrayOfObject1[2] = paramE3;
    arrayOfObject1[3] = paramE4;
    arrayOfObject1[4] = paramE5;
    arrayOfObject1[5] = paramE6;
    arrayOfObject1[6] = paramE7;
    arrayOfObject1[7] = paramE8;
    arrayOfObject1[8] = paramE9;
    arrayOfObject1[9] = paramE10;
    arrayOfObject1[10] = paramE11;
    arrayOfObject1[11] = paramE12;
    System.arraycopy(paramArrayOfE, 0, arrayOfObject1, 12, paramArrayOfE.length);
    Object[] arrayOfObject2 = ig.a(arrayOfObject1);
    return b(arrayOfObject2, arrayOfObject2.length);
  }

  public static <E> dc<E> a(Collection<? extends E> paramCollection)
  {
    if ((paramCollection instanceof ct))
    {
      dc localdc = ((ct)paramCollection).a();
      if (localdc.e())
      {
        Object[] arrayOfObject2 = localdc.toArray();
        localdc = b(arrayOfObject2, arrayOfObject2.length);
      }
      return localdc;
    }
    Object[] arrayOfObject1 = ig.a(paramCollection.toArray());
    return b(arrayOfObject1, arrayOfObject1.length);
  }

  static <E> dc<E> a(Object[] paramArrayOfObject)
  {
    return b(paramArrayOfObject, paramArrayOfObject.length);
  }

  static <E> dc<E> b(Object[] paramArrayOfObject, int paramInt)
  {
    switch (paramInt)
    {
    default:
      if (paramInt < paramArrayOfObject.length)
        paramArrayOfObject = ig.b(paramArrayOfObject, paramInt);
      return new ik(paramArrayOfObject);
    case 0:
      return a;
    case 1:
    }
    return new jk(paramArrayOfObject[0]);
  }

  public static <E> dc<E> d()
  {
    return a;
  }

  public static <E> de<E> h()
  {
    return new de();
  }

  int a(Object[] paramArrayOfObject, int paramInt)
  {
    int i = size();
    for (int j = 0; j < i; j++)
      paramArrayOfObject[(paramInt + j)] = get(j);
    return paramInt + i;
  }

  public final dc<E> a()
  {
    return this;
  }

  public dc<E> a(int paramInt1, int paramInt2)
  {
    an.a(paramInt1, paramInt2, size());
    switch (paramInt2 - paramInt1)
    {
    default:
      return b(paramInt1, paramInt2);
    case 0:
      return a;
    case 1:
    }
    return a(get(paramInt1));
  }

  public lk<E> a(int paramInt)
  {
    return new dd(this, size(), paramInt);
  }

  @Deprecated
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  dc<E> b(int paramInt1, int paramInt2)
  {
    return new dg(this, paramInt1, paramInt2 - paramInt1);
  }

  public lj<E> b()
  {
    return a(0);
  }

  public boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == an.a(this));
    List localList;
    do
    {
      return true;
      if (!(paramObject instanceof List))
        break;
      localList = (List)paramObject;
    }
    while ((size() == localList.size()) && (eg.a(iterator(), localList.iterator())));
    return false;
  }

  public dc<E> g()
  {
    return new df(this);
  }

  public int hashCode()
  {
    int i = 1;
    int j = size();
    for (int k = 0; k < j; k++)
      i = 0xFFFFFFFF ^ (0xFFFFFFFF ^ i * 31 + get(k).hashCode());
    return i;
  }

  public int indexOf(Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator();
      while (localListIterator.hasNext())
        if (ag.a(paramObject, localListIterator.next()))
          return localListIterator.previousIndex();
    }
    return -1;
  }

  public int lastIndexOf(Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator(size());
      while (localListIterator.hasPrevious())
        if (ag.a(paramObject, localListIterator.previous()))
          return localListIterator.nextIndex();
    }
    return -1;
  }

  @Deprecated
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dc
 * JD-Core Version:    0.6.2
 */
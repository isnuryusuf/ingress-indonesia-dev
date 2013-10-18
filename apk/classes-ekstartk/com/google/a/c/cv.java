package com.google.a.c;

import java.util.Iterator;

public abstract class cv<E>
{
  static int a(int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0)
      throw new AssertionError("cannot store more than MAX_VALUE elements");
    int i = 1 + (paramInt1 + (paramInt1 >> 1));
    if (i < paramInt2)
      i = Integer.highestOneBit(paramInt2 - 1) << 1;
    if (i < 0)
      i = 2147483647;
    return i;
  }

  public cv<E> a(Iterable<? extends E> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      b(localIterator.next());
    return this;
  }

  public cv<E> a(Iterator<? extends E> paramIterator)
  {
    while (paramIterator.hasNext())
      b(paramIterator.next());
    return this;
  }

  public cv<E> a(E[] paramArrayOfE)
  {
    int i = paramArrayOfE.length;
    for (int j = 0; j < i; j++)
      b(paramArrayOfE[j]);
    return this;
  }

  public abstract cv<E> b(E paramE);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cv
 * JD-Core Version:    0.6.2
 */
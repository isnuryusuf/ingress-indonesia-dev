package com.google.a.c;

import com.google.a.a.an;
import com.google.a.h.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

public final class eq
{
  public static <E> ArrayList<E> a()
  {
    return new ArrayList();
  }

  public static <E> ArrayList<E> a(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return new ArrayList(paramInt);
    }
  }

  public static <E> ArrayList<E> a(Iterable<? extends E> paramIterable)
  {
    an.a(paramIterable);
    if ((paramIterable instanceof Collection))
      return new ArrayList(as.a(paramIterable));
    return a(paramIterable.iterator());
  }

  public static <E> ArrayList<E> a(Iterator<? extends E> paramIterator)
  {
    ArrayList localArrayList = new ArrayList();
    eg.a(localArrayList, paramIterator);
    return localArrayList;
  }

  public static <E> ArrayList<E> a(E[] paramArrayOfE)
  {
    an.a(paramArrayOfE);
    ArrayList localArrayList = new ArrayList(c(paramArrayOfE.length));
    Collections.addAll(localArrayList, paramArrayOfE);
    return localArrayList;
  }

  public static <E> ArrayList<E> b(int paramInt)
  {
    return new ArrayList(c(paramInt));
  }

  public static <E> LinkedList<E> b()
  {
    return new LinkedList();
  }

  public static <E> LinkedList<E> b(Iterable<? extends E> paramIterable)
  {
    LinkedList localLinkedList = new LinkedList();
    ee.a(localLinkedList, paramIterable);
    return localLinkedList;
  }

  public static <E> LinkedList<E> b(E[] paramArrayOfE)
  {
    LinkedList localLinkedList = new LinkedList();
    Collections.addAll(localLinkedList, paramArrayOfE);
    return localLinkedList;
  }

  private static int c(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return a.a(5L + paramInt + paramInt / 10);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.eq
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

public final class ii
{
  public static <E> ArrayDeque<E> a()
  {
    return new ArrayDeque();
  }

  public static <E> ConcurrentLinkedQueue<E> a(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new ConcurrentLinkedQueue(as.a(paramIterable));
    ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    ee.a(localConcurrentLinkedQueue, paramIterable);
    return localConcurrentLinkedQueue;
  }

  public static <E> LinkedBlockingQueue<E> b()
  {
    return new LinkedBlockingQueue();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ii
 * JD-Core Version:    0.6.2
 */
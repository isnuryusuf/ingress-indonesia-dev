package com.badlogic.gdx.utils;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;

public class AtomicQueue<T>
{
  private final AtomicReferenceArray<T> queue;
  private final AtomicInteger readIndex = new AtomicInteger();
  private final AtomicInteger writeIndex = new AtomicInteger();

  public AtomicQueue(int paramInt)
  {
    this.queue = new AtomicReferenceArray(paramInt);
  }

  private int next(int paramInt)
  {
    return paramInt + 1 & -1 + this.queue.length();
  }

  public T poll()
  {
    int i = this.readIndex.get();
    if (i == this.writeIndex.get())
      return null;
    Object localObject = this.queue.get(i);
    this.readIndex.set(next(i));
    return localObject;
  }

  public boolean put(T paramT)
  {
    int i = this.writeIndex.get();
    int j = this.readIndex.get();
    int k = next(i);
    if (k == j)
      return false;
    this.queue.set(i, paramT);
    this.writeIndex.set(k);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.AtomicQueue
 * JD-Core Version:    0.6.2
 */
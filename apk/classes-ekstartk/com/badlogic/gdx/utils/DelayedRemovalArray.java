package com.badlogic.gdx.utils;

import java.util.Comparator;

public class DelayedRemovalArray<T> extends Array<T>
{
  private boolean iterating;
  private IntArray remove = new IntArray(0);

  public DelayedRemovalArray()
  {
  }

  public DelayedRemovalArray(int paramInt)
  {
    super(paramInt);
  }

  public DelayedRemovalArray(Array paramArray)
  {
    super(paramArray);
  }

  public DelayedRemovalArray(Class<T> paramClass)
  {
    super(paramClass);
  }

  public DelayedRemovalArray(boolean paramBoolean, int paramInt)
  {
    super(paramBoolean, paramInt);
  }

  public DelayedRemovalArray(boolean paramBoolean, int paramInt, Class<T> paramClass)
  {
    super(paramBoolean, paramInt, paramClass);
  }

  public DelayedRemovalArray(boolean paramBoolean, T[] paramArrayOfT)
  {
    super(paramBoolean, paramArrayOfT);
  }

  public DelayedRemovalArray(T[] paramArrayOfT)
  {
    super(paramArrayOfT);
  }

  private void remove(int paramInt)
  {
    int i = 0;
    int j = this.remove.size;
    while (i < j)
    {
      int k = this.remove.get(i);
      if (paramInt == k)
        return;
      if (paramInt < k)
      {
        this.remove.insert(i, paramInt);
        return;
      }
      i++;
    }
    this.remove.add(paramInt);
  }

  public void begin()
  {
    this.iterating = true;
  }

  public void clear()
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.clear();
  }

  public void end()
  {
    int i = 0;
    this.iterating = false;
    int j = this.remove.size;
    while (i < j)
    {
      removeIndex(this.remove.pop());
      i++;
    }
  }

  public void insert(int paramInt, T paramT)
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.insert(paramInt, paramT);
  }

  public T pop()
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    return super.pop();
  }

  public T removeIndex(int paramInt)
  {
    if (this.iterating)
    {
      remove(paramInt);
      return get(paramInt);
    }
    return super.removeIndex(paramInt);
  }

  public boolean removeValue(T paramT, boolean paramBoolean)
  {
    if (this.iterating)
    {
      int i = indexOf(paramT, paramBoolean);
      if (i == -1)
        return false;
      remove(i);
      return true;
    }
    return super.removeValue(paramT, paramBoolean);
  }

  public void reverse()
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.reverse();
  }

  public void set(int paramInt, T paramT)
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.set(paramInt, paramT);
  }

  public void shuffle()
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.shuffle();
  }

  public void sort()
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.sort();
  }

  public void sort(Comparator<T> paramComparator)
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.sort(paramComparator);
  }

  public void swap(int paramInt1, int paramInt2)
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.swap(paramInt1, paramInt2);
  }

  public void truncate(int paramInt)
  {
    if (this.iterating)
      throw new IllegalStateException("Invalid between begin/end.");
    super.truncate(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.DelayedRemovalArray
 * JD-Core Version:    0.6.2
 */
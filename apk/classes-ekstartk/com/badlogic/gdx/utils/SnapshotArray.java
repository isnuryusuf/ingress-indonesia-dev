package com.badlogic.gdx.utils;

import java.util.Comparator;

public class SnapshotArray<T> extends Array<T>
{
  private T[] recycled;
  private T[] snapshot;
  private int snapshots;

  public SnapshotArray()
  {
  }

  public SnapshotArray(int paramInt)
  {
    super(paramInt);
  }

  public SnapshotArray(Array paramArray)
  {
    super(paramArray);
  }

  public SnapshotArray(Class<T> paramClass)
  {
    super(paramClass);
  }

  public SnapshotArray(boolean paramBoolean, int paramInt)
  {
    super(paramBoolean, paramInt);
  }

  public SnapshotArray(boolean paramBoolean, int paramInt, Class<T> paramClass)
  {
    super(paramBoolean, paramInt, paramClass);
  }

  public SnapshotArray(boolean paramBoolean, T[] paramArrayOfT)
  {
    super(paramBoolean, paramArrayOfT);
  }

  public SnapshotArray(T[] paramArrayOfT)
  {
    super(paramArrayOfT);
  }

  private void modified()
  {
    if ((this.snapshot == null) || (this.snapshot != this.items))
      return;
    if ((this.recycled != null) && (this.recycled.length >= this.size))
    {
      System.arraycopy(this.items, 0, this.recycled, 0, this.size);
      this.items = this.recycled;
      this.recycled = null;
      return;
    }
    resize(this.items.length);
  }

  public T[] begin()
  {
    this.snapshot = this.items;
    this.snapshots = (1 + this.snapshots);
    return this.items;
  }

  public void clear()
  {
    modified();
    super.clear();
  }

  public void end()
  {
    int i = 0;
    this.snapshots = Math.max(0, -1 + this.snapshots);
    if (this.snapshot == null)
      return;
    if ((this.snapshot != this.items) && (this.snapshots == 0))
    {
      this.recycled = this.snapshot;
      int j = this.recycled.length;
      while (i < j)
      {
        this.recycled[i] = null;
        i++;
      }
    }
    this.snapshot = null;
  }

  public void insert(int paramInt, T paramT)
  {
    modified();
    super.insert(paramInt, paramT);
  }

  public T pop()
  {
    modified();
    return super.pop();
  }

  public T removeIndex(int paramInt)
  {
    modified();
    return super.removeIndex(paramInt);
  }

  public boolean removeValue(T paramT, boolean paramBoolean)
  {
    modified();
    return super.removeValue(paramT, paramBoolean);
  }

  public void reverse()
  {
    modified();
    super.reverse();
  }

  public void set(int paramInt, T paramT)
  {
    modified();
    super.set(paramInt, paramT);
  }

  public void shuffle()
  {
    modified();
    super.shuffle();
  }

  public void sort()
  {
    modified();
    super.sort();
  }

  public void sort(Comparator<T> paramComparator)
  {
    modified();
    super.sort(paramComparator);
  }

  public void swap(int paramInt1, int paramInt2)
  {
    modified();
    super.swap(paramInt1, paramInt2);
  }

  public void truncate(int paramInt)
  {
    modified();
    super.truncate(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SnapshotArray
 * JD-Core Version:    0.6.2
 */
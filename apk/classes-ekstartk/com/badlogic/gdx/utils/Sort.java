package com.badlogic.gdx.utils;

import java.util.Comparator;

public class Sort
{
  private static Sort instance;
  private ComparableTimSort comparableTimSort;
  private TimSort timSort;

  public static Sort instance()
  {
    if (instance == null)
      instance = new Sort();
    return instance;
  }

  public <T> void sort(Array<T> paramArray)
  {
    if (this.comparableTimSort == null)
      this.comparableTimSort = new ComparableTimSort();
    this.comparableTimSort.doSort(paramArray.items, 0, paramArray.size);
  }

  public <T> void sort(Array<T> paramArray, Comparator<T> paramComparator)
  {
    if (this.timSort == null)
      this.timSort = new TimSort();
    this.timSort.doSort(paramArray.items, paramComparator, 0, paramArray.size);
  }

  public <T> void sort(T[] paramArrayOfT)
  {
    if (this.comparableTimSort == null)
      this.comparableTimSort = new ComparableTimSort();
    this.comparableTimSort.doSort(paramArrayOfT, 0, paramArrayOfT.length);
  }

  public <T> void sort(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    if (this.comparableTimSort == null)
      this.comparableTimSort = new ComparableTimSort();
    this.comparableTimSort.doSort(paramArrayOfT, paramInt1, paramInt2);
  }

  public <T> void sort(T[] paramArrayOfT, Comparator<T> paramComparator)
  {
    if (this.timSort == null)
      this.timSort = new TimSort();
    this.timSort.doSort(paramArrayOfT, paramComparator, 0, paramArrayOfT.length);
  }

  public <T> void sort(T[] paramArrayOfT, Comparator<T> paramComparator, int paramInt1, int paramInt2)
  {
    if (this.timSort == null)
      this.timSort = new TimSort();
    this.timSort.doSort(paramArrayOfT, paramComparator, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Sort
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;

public class LongArray
{
  public long[] items;
  public boolean ordered;
  public int size;

  public LongArray()
  {
    this(true, 16);
  }

  public LongArray(int paramInt)
  {
    this(true, paramInt);
  }

  public LongArray(LongArray paramLongArray)
  {
    this.ordered = paramLongArray.ordered;
    this.size = paramLongArray.size;
    this.items = new long[this.size];
    System.arraycopy(paramLongArray.items, 0, this.items, 0, this.size);
  }

  public LongArray(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.items = new long[paramInt];
  }

  public LongArray(boolean paramBoolean, long[] paramArrayOfLong)
  {
    this(paramBoolean, paramArrayOfLong.length);
    this.size = paramArrayOfLong.length;
    System.arraycopy(paramArrayOfLong, 0, this.items, 0, this.size);
  }

  public LongArray(long[] paramArrayOfLong)
  {
    this(true, paramArrayOfLong);
  }

  public void add(long paramLong)
  {
    long[] arrayOfLong = this.items;
    if (this.size == arrayOfLong.length)
      arrayOfLong = resize(Math.max(8, (int)(1.75F * this.size)));
    int i = this.size;
    this.size = (i + 1);
    arrayOfLong[i] = paramLong;
  }

  public void addAll(LongArray paramLongArray)
  {
    addAll(paramLongArray, 0, paramLongArray.size);
  }

  public void addAll(LongArray paramLongArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramLongArray.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramLongArray.size);
    addAll(paramLongArray.items, paramInt1, paramInt2);
  }

  public void addAll(long[] paramArrayOfLong)
  {
    addAll(paramArrayOfLong, 0, paramArrayOfLong.length);
  }

  public void addAll(long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    long[] arrayOfLong = this.items;
    int i = paramInt2 + this.size - paramInt1;
    if (i >= arrayOfLong.length)
      arrayOfLong = resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayOfLong, paramInt1, arrayOfLong, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    this.size = 0;
  }

  public boolean contains(long paramLong)
  {
    int i = -1 + this.size;
    long[] arrayOfLong = this.items;
    while (true)
    {
      int j;
      if (i >= 0)
      {
        j = i - 1;
        if (arrayOfLong[i] == paramLong)
          return true;
      }
      else
      {
        return false;
      }
      i = j;
    }
  }

  public long[] ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.items.length)
      resize(Math.max(8, i));
    return this.items;
  }

  public long first()
  {
    return this.items[0];
  }

  public long get(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.items[paramInt];
  }

  public int indexOf(long paramLong)
  {
    long[] arrayOfLong = this.items;
    int i = 0;
    int j = this.size;
    while (i < j)
    {
      if (arrayOfLong[i] == paramLong)
        return i;
      i++;
    }
    return -1;
  }

  public void insert(int paramInt, long paramLong)
  {
    long[] arrayOfLong = this.items;
    if (this.size == arrayOfLong.length)
      arrayOfLong = resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
      System.arraycopy(arrayOfLong, paramInt, arrayOfLong, paramInt + 1, this.size - paramInt);
    while (true)
    {
      this.size = (1 + this.size);
      arrayOfLong[paramInt] = paramLong;
      return;
      arrayOfLong[this.size] = arrayOfLong[paramInt];
    }
  }

  public int lastIndexOf(char paramChar)
  {
    long[] arrayOfLong = this.items;
    for (int i = -1 + this.size; i >= 0; i--)
      if (arrayOfLong[i] == paramChar)
        return i;
    return -1;
  }

  public long peek()
  {
    return this.items[(-1 + this.size)];
  }

  public long pop()
  {
    long[] arrayOfLong = this.items;
    int i = -1 + this.size;
    this.size = i;
    return arrayOfLong[i];
  }

  public long random()
  {
    if (this.size == 0)
      return 0L;
    return this.items[MathUtils.random(0, -1 + this.size)];
  }

  public long removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    long[] arrayOfLong = this.items;
    long l = arrayOfLong[paramInt];
    this.size = (-1 + this.size);
    if (this.ordered)
    {
      System.arraycopy(arrayOfLong, paramInt + 1, arrayOfLong, paramInt, this.size - paramInt);
      return l;
    }
    arrayOfLong[paramInt] = arrayOfLong[this.size];
    return l;
  }

  public boolean removeValue(long paramLong)
  {
    long[] arrayOfLong = this.items;
    int i = this.size;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfLong[j] == paramLong)
        {
          removeIndex(j);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  protected long[] resize(int paramInt)
  {
    long[] arrayOfLong = new long[paramInt];
    System.arraycopy(this.items, 0, arrayOfLong, 0, Math.min(this.size, arrayOfLong.length));
    this.items = arrayOfLong;
    return arrayOfLong;
  }

  public void reverse()
  {
    int i = 0;
    int j = -1 + this.size;
    int k = this.size / 2;
    while (i < k)
    {
      int m = j - i;
      long l = this.items[i];
      this.items[i] = this.items[m];
      this.items[m] = l;
      i++;
    }
  }

  public void set(int paramInt, long paramLong)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.items[paramInt] = paramLong;
  }

  public void shrink()
  {
    resize(this.size);
  }

  public void shuffle()
  {
    for (int i = -1 + this.size; i >= 0; i--)
    {
      int j = MathUtils.random(i);
      long l = this.items[i];
      this.items[i] = this.items[j];
      this.items[j] = l;
    }
  }

  public void sort()
  {
    Arrays.sort(this.items, 0, this.size);
  }

  public void swap(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt1));
    if (paramInt2 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt2));
    long[] arrayOfLong = this.items;
    long l = arrayOfLong[paramInt1];
    arrayOfLong[paramInt1] = arrayOfLong[paramInt2];
    arrayOfLong[paramInt2] = l;
  }

  public long[] toArray()
  {
    long[] arrayOfLong = new long[this.size];
    System.arraycopy(this.items, 0, arrayOfLong, 0, this.size);
    return arrayOfLong;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    long[] arrayOfLong = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfLong[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfLong[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public String toString(String paramString)
  {
    if (this.size == 0)
      return "";
    long[] arrayOfLong = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(arrayOfLong[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(arrayOfLong[i]);
    }
    return localStringBuilder.toString();
  }

  public void truncate(int paramInt)
  {
    if (this.size > paramInt)
      this.size = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.LongArray
 * JD-Core Version:    0.6.2
 */
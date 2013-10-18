package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;

public class BooleanArray
{
  public boolean[] items;
  public boolean ordered;
  public int size;

  public BooleanArray()
  {
    this(true, 16);
  }

  public BooleanArray(int paramInt)
  {
    this(true, paramInt);
  }

  public BooleanArray(BooleanArray paramBooleanArray)
  {
    this.ordered = paramBooleanArray.ordered;
    this.size = paramBooleanArray.size;
    this.items = new boolean[this.size];
    System.arraycopy(paramBooleanArray.items, 0, this.items, 0, this.size);
  }

  public BooleanArray(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.items = new boolean[paramInt];
  }

  public BooleanArray(boolean paramBoolean, boolean[] paramArrayOfBoolean)
  {
    this(paramBoolean, paramArrayOfBoolean.length);
    this.size = paramArrayOfBoolean.length;
    System.arraycopy(paramArrayOfBoolean, 0, this.items, 0, this.size);
  }

  public BooleanArray(boolean[] paramArrayOfBoolean)
  {
    this(true, paramArrayOfBoolean);
  }

  public void add(boolean paramBoolean)
  {
    boolean[] arrayOfBoolean = this.items;
    if (this.size == arrayOfBoolean.length)
      arrayOfBoolean = resize(Math.max(8, (int)(1.75F * this.size)));
    int i = this.size;
    this.size = (i + 1);
    arrayOfBoolean[i] = paramBoolean;
  }

  public void addAll(BooleanArray paramBooleanArray)
  {
    addAll(paramBooleanArray, 0, paramBooleanArray.size);
  }

  public void addAll(BooleanArray paramBooleanArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramBooleanArray.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramBooleanArray.size);
    addAll(paramBooleanArray.items, paramInt1, paramInt2);
  }

  public void addAll(boolean[] paramArrayOfBoolean)
  {
    addAll(paramArrayOfBoolean, 0, paramArrayOfBoolean.length);
  }

  public void addAll(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2)
  {
    boolean[] arrayOfBoolean = this.items;
    int i = paramInt2 + this.size - paramInt1;
    if (i >= arrayOfBoolean.length)
      arrayOfBoolean = resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayOfBoolean, paramInt1, arrayOfBoolean, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    this.size = 0;
  }

  public boolean[] ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.items.length)
      resize(Math.max(8, i));
    return this.items;
  }

  public boolean first()
  {
    return this.items[0];
  }

  public boolean get(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.items[paramInt];
  }

  public void insert(int paramInt, boolean paramBoolean)
  {
    boolean[] arrayOfBoolean = this.items;
    if (this.size == arrayOfBoolean.length)
      arrayOfBoolean = resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
      System.arraycopy(arrayOfBoolean, paramInt, arrayOfBoolean, paramInt + 1, this.size - paramInt);
    while (true)
    {
      this.size = (1 + this.size);
      arrayOfBoolean[paramInt] = paramBoolean;
      return;
      arrayOfBoolean[this.size] = arrayOfBoolean[paramInt];
    }
  }

  public boolean peek()
  {
    return this.items[(-1 + this.size)];
  }

  public boolean pop()
  {
    boolean[] arrayOfBoolean = this.items;
    int i = -1 + this.size;
    this.size = i;
    return arrayOfBoolean[i];
  }

  public boolean random()
  {
    if (this.size == 0)
      return false;
    return this.items[MathUtils.random(0, -1 + this.size)];
  }

  public boolean removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    boolean[] arrayOfBoolean = this.items;
    int i = arrayOfBoolean[paramInt];
    this.size = (-1 + this.size);
    if (this.ordered)
    {
      System.arraycopy(arrayOfBoolean, paramInt + 1, arrayOfBoolean, paramInt, this.size - paramInt);
      return i;
    }
    arrayOfBoolean[paramInt] = arrayOfBoolean[this.size];
    return i;
  }

  protected boolean[] resize(int paramInt)
  {
    boolean[] arrayOfBoolean = new boolean[paramInt];
    System.arraycopy(this.items, 0, arrayOfBoolean, 0, Math.min(this.size, arrayOfBoolean.length));
    this.items = arrayOfBoolean;
    return arrayOfBoolean;
  }

  public void reverse()
  {
    int i = 0;
    int j = -1 + this.size;
    int k = this.size / 2;
    while (i < k)
    {
      int m = j - i;
      int n = this.items[i];
      this.items[i] = this.items[m];
      this.items[m] = n;
      i++;
    }
  }

  public void set(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.items[paramInt] = paramBoolean;
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
      int k = this.items[i];
      this.items[i] = this.items[j];
      this.items[j] = k;
    }
  }

  public void swap(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt1));
    if (paramInt2 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt2));
    boolean[] arrayOfBoolean = this.items;
    int i = arrayOfBoolean[paramInt1];
    arrayOfBoolean[paramInt1] = arrayOfBoolean[paramInt2];
    arrayOfBoolean[paramInt2] = i;
  }

  public boolean[] toArray()
  {
    boolean[] arrayOfBoolean = new boolean[this.size];
    System.arraycopy(this.items, 0, arrayOfBoolean, 0, this.size);
    return arrayOfBoolean;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    boolean[] arrayOfBoolean = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfBoolean[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfBoolean[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public String toString(String paramString)
  {
    if (this.size == 0)
      return "";
    boolean[] arrayOfBoolean = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(arrayOfBoolean[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(arrayOfBoolean[i]);
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
 * Qualified Name:     com.badlogic.gdx.utils.BooleanArray
 * JD-Core Version:    0.6.2
 */
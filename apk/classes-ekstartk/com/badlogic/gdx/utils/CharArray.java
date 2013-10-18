package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;

public class CharArray
{
  public char[] items;
  public boolean ordered;
  public int size;

  public CharArray()
  {
    this(true, 16);
  }

  public CharArray(int paramInt)
  {
    this(true, paramInt);
  }

  public CharArray(CharArray paramCharArray)
  {
    this.ordered = paramCharArray.ordered;
    this.size = paramCharArray.size;
    this.items = new char[this.size];
    System.arraycopy(paramCharArray.items, 0, this.items, 0, this.size);
  }

  public CharArray(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.items = new char[paramInt];
  }

  public CharArray(boolean paramBoolean, char[] paramArrayOfChar)
  {
    this(paramBoolean, paramArrayOfChar.length);
    this.size = paramArrayOfChar.length;
    System.arraycopy(paramArrayOfChar, 0, this.items, 0, this.size);
  }

  public CharArray(char[] paramArrayOfChar)
  {
    this(true, paramArrayOfChar);
  }

  public void add(char paramChar)
  {
    char[] arrayOfChar = this.items;
    if (this.size == arrayOfChar.length)
      arrayOfChar = resize(Math.max(8, (int)(1.75F * this.size)));
    int i = this.size;
    this.size = (i + 1);
    arrayOfChar[i] = paramChar;
  }

  public void addAll(CharArray paramCharArray)
  {
    addAll(paramCharArray, 0, paramCharArray.size);
  }

  public void addAll(CharArray paramCharArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramCharArray.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramCharArray.size);
    addAll(paramCharArray.items, paramInt1, paramInt2);
  }

  public void addAll(char[] paramArrayOfChar)
  {
    addAll(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  public void addAll(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = this.items;
    int i = paramInt2 + this.size - paramInt1;
    if (i >= arrayOfChar.length)
      arrayOfChar = resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayOfChar, paramInt1, arrayOfChar, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    this.size = 0;
  }

  public boolean contains(char paramChar)
  {
    int i = -1 + this.size;
    char[] arrayOfChar = this.items;
    while (true)
    {
      int j;
      if (i >= 0)
      {
        j = i - 1;
        if (arrayOfChar[i] == paramChar)
          return true;
      }
      else
      {
        return false;
      }
      i = j;
    }
  }

  public char[] ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.items.length)
      resize(Math.max(8, i));
    return this.items;
  }

  public char first()
  {
    return this.items[0];
  }

  public char get(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.items[paramInt];
  }

  public int indexOf(char paramChar)
  {
    char[] arrayOfChar = this.items;
    int i = 0;
    int j = this.size;
    while (i < j)
    {
      if (arrayOfChar[i] == paramChar)
        return i;
      i++;
    }
    return -1;
  }

  public void insert(int paramInt, char paramChar)
  {
    char[] arrayOfChar = this.items;
    if (this.size == arrayOfChar.length)
      arrayOfChar = resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
      System.arraycopy(arrayOfChar, paramInt, arrayOfChar, paramInt + 1, this.size - paramInt);
    while (true)
    {
      this.size = (1 + this.size);
      arrayOfChar[paramInt] = paramChar;
      return;
      arrayOfChar[this.size] = arrayOfChar[paramInt];
    }
  }

  public int lastIndexOf(char paramChar)
  {
    char[] arrayOfChar = this.items;
    for (int i = -1 + this.size; i >= 0; i--)
      if (arrayOfChar[i] == paramChar)
        return i;
    return -1;
  }

  public char peek()
  {
    return this.items[(-1 + this.size)];
  }

  public char pop()
  {
    char[] arrayOfChar = this.items;
    int i = -1 + this.size;
    this.size = i;
    return arrayOfChar[i];
  }

  public char random()
  {
    if (this.size == 0)
      return '\000';
    return this.items[MathUtils.random(0, -1 + this.size)];
  }

  public char removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    char[] arrayOfChar = this.items;
    char c = arrayOfChar[paramInt];
    this.size = (-1 + this.size);
    if (this.ordered)
    {
      System.arraycopy(arrayOfChar, paramInt + 1, arrayOfChar, paramInt, this.size - paramInt);
      return c;
    }
    arrayOfChar[paramInt] = arrayOfChar[this.size];
    return c;
  }

  public boolean removeValue(char paramChar)
  {
    char[] arrayOfChar = this.items;
    int i = this.size;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfChar[j] == paramChar)
        {
          removeIndex(j);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  protected char[] resize(int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    System.arraycopy(this.items, 0, arrayOfChar, 0, Math.min(this.size, arrayOfChar.length));
    this.items = arrayOfChar;
    return arrayOfChar;
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

  public void set(int paramInt, char paramChar)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.items[paramInt] = paramChar;
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
    char[] arrayOfChar = this.items;
    int i = arrayOfChar[paramInt1];
    arrayOfChar[paramInt1] = arrayOfChar[paramInt2];
    arrayOfChar[paramInt2] = i;
  }

  public char[] toArray()
  {
    char[] arrayOfChar = new char[this.size];
    System.arraycopy(this.items, 0, arrayOfChar, 0, this.size);
    return arrayOfChar;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    char[] arrayOfChar = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfChar[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfChar[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public String toString(String paramString)
  {
    if (this.size == 0)
      return "";
    char[] arrayOfChar = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(arrayOfChar[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(arrayOfChar[i]);
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
 * Qualified Name:     com.badlogic.gdx.utils.CharArray
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;

public class FloatArray
{
  public float[] items;
  public boolean ordered;
  public int size;

  public FloatArray()
  {
    this(true, 16);
  }

  public FloatArray(int paramInt)
  {
    this(true, paramInt);
  }

  public FloatArray(FloatArray paramFloatArray)
  {
    this.ordered = paramFloatArray.ordered;
    this.size = paramFloatArray.size;
    this.items = new float[this.size];
    System.arraycopy(paramFloatArray.items, 0, this.items, 0, this.size);
  }

  public FloatArray(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.items = new float[paramInt];
  }

  public FloatArray(boolean paramBoolean, float[] paramArrayOfFloat)
  {
    this(paramBoolean, paramArrayOfFloat.length);
    this.size = paramArrayOfFloat.length;
    System.arraycopy(paramArrayOfFloat, 0, this.items, 0, this.size);
  }

  public FloatArray(float[] paramArrayOfFloat)
  {
    this(true, paramArrayOfFloat);
  }

  public void add(float paramFloat)
  {
    float[] arrayOfFloat = this.items;
    if (this.size == arrayOfFloat.length)
      arrayOfFloat = resize(Math.max(8, (int)(1.75F * this.size)));
    int i = this.size;
    this.size = (i + 1);
    arrayOfFloat[i] = paramFloat;
  }

  public void addAll(FloatArray paramFloatArray)
  {
    addAll(paramFloatArray, 0, paramFloatArray.size);
  }

  public void addAll(FloatArray paramFloatArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramFloatArray.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramFloatArray.size);
    addAll(paramFloatArray.items, paramInt1, paramInt2);
  }

  public void addAll(float[] paramArrayOfFloat)
  {
    addAll(paramArrayOfFloat, 0, paramArrayOfFloat.length);
  }

  public void addAll(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    float[] arrayOfFloat = this.items;
    int i = paramInt2 + this.size - paramInt1;
    if (i >= arrayOfFloat.length)
      arrayOfFloat = resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayOfFloat, paramInt1, arrayOfFloat, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    this.size = 0;
  }

  public boolean contains(float paramFloat)
  {
    int i = -1 + this.size;
    float[] arrayOfFloat = this.items;
    while (true)
    {
      int j;
      if (i >= 0)
      {
        j = i - 1;
        if (arrayOfFloat[i] == paramFloat)
          return true;
      }
      else
      {
        return false;
      }
      i = j;
    }
  }

  public float[] ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.items.length)
      resize(Math.max(8, i));
    return this.items;
  }

  public float first()
  {
    return this.items[0];
  }

  public float get(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.items[paramInt];
  }

  public int indexOf(float paramFloat)
  {
    float[] arrayOfFloat = this.items;
    int i = 0;
    int j = this.size;
    while (i < j)
    {
      if (arrayOfFloat[i] == paramFloat)
        return i;
      i++;
    }
    return -1;
  }

  public void insert(int paramInt, float paramFloat)
  {
    float[] arrayOfFloat = this.items;
    if (this.size == arrayOfFloat.length)
      arrayOfFloat = resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
      System.arraycopy(arrayOfFloat, paramInt, arrayOfFloat, paramInt + 1, this.size - paramInt);
    while (true)
    {
      this.size = (1 + this.size);
      arrayOfFloat[paramInt] = paramFloat;
      return;
      arrayOfFloat[this.size] = arrayOfFloat[paramInt];
    }
  }

  public int lastIndexOf(char paramChar)
  {
    float[] arrayOfFloat = this.items;
    for (int i = -1 + this.size; i >= 0; i--)
      if (arrayOfFloat[i] == paramChar)
        return i;
    return -1;
  }

  public float peek()
  {
    return this.items[(-1 + this.size)];
  }

  public float pop()
  {
    float[] arrayOfFloat = this.items;
    int i = -1 + this.size;
    this.size = i;
    return arrayOfFloat[i];
  }

  public float random()
  {
    if (this.size == 0)
      return 0.0F;
    return this.items[MathUtils.random(0, -1 + this.size)];
  }

  public float removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    float[] arrayOfFloat = this.items;
    float f = arrayOfFloat[paramInt];
    this.size = (-1 + this.size);
    if (this.ordered)
    {
      System.arraycopy(arrayOfFloat, paramInt + 1, arrayOfFloat, paramInt, this.size - paramInt);
      return f;
    }
    arrayOfFloat[paramInt] = arrayOfFloat[this.size];
    return f;
  }

  public boolean removeValue(float paramFloat)
  {
    float[] arrayOfFloat = this.items;
    int i = this.size;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfFloat[j] == paramFloat)
        {
          removeIndex(j);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  protected float[] resize(int paramInt)
  {
    float[] arrayOfFloat = new float[paramInt];
    System.arraycopy(this.items, 0, arrayOfFloat, 0, Math.min(this.size, arrayOfFloat.length));
    this.items = arrayOfFloat;
    return arrayOfFloat;
  }

  public void reverse()
  {
    int i = 0;
    int j = -1 + this.size;
    int k = this.size / 2;
    while (i < k)
    {
      int m = j - i;
      float f = this.items[i];
      this.items[i] = this.items[m];
      this.items[m] = f;
      i++;
    }
  }

  public void set(int paramInt, float paramFloat)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.items[paramInt] = paramFloat;
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
      float f = this.items[i];
      this.items[i] = this.items[j];
      this.items[j] = f;
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
    float[] arrayOfFloat = this.items;
    float f = arrayOfFloat[paramInt1];
    arrayOfFloat[paramInt1] = arrayOfFloat[paramInt2];
    arrayOfFloat[paramInt2] = f;
  }

  public float[] toArray()
  {
    float[] arrayOfFloat = new float[this.size];
    System.arraycopy(this.items, 0, arrayOfFloat, 0, this.size);
    return arrayOfFloat;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    float[] arrayOfFloat = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfFloat[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfFloat[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public String toString(String paramString)
  {
    if (this.size == 0)
      return "";
    float[] arrayOfFloat = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(arrayOfFloat[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(arrayOfFloat[i]);
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
 * Qualified Name:     com.badlogic.gdx.utils.FloatArray
 * JD-Core Version:    0.6.2
 */
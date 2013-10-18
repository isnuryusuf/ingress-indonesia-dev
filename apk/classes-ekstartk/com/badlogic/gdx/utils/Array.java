package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Comparator;
import java.util.Iterator;

public class Array<T>
  implements Iterable<T>
{
  public T[] items;
  private Array.ArrayIterator iterator;
  public boolean ordered;
  public int size;

  public Array()
  {
    this(true, 16);
  }

  public Array(int paramInt)
  {
    this(true, paramInt);
  }

  public Array(Array paramArray)
  {
    this(paramArray.ordered, paramArray.size, paramArray.items.getClass().getComponentType());
    this.size = paramArray.size;
    System.arraycopy(paramArray.items, 0, this.items, 0, this.size);
  }

  public Array(Class<T> paramClass)
  {
    this(true, 16, paramClass);
  }

  public Array(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.items = ((Object[])new Object[paramInt]);
  }

  public Array(boolean paramBoolean, int paramInt, Class<T> paramClass)
  {
    this.ordered = paramBoolean;
    this.items = ((Object[])java.lang.reflect.Array.newInstance(paramClass, paramInt));
  }

  public Array(boolean paramBoolean, T[] paramArrayOfT)
  {
    this(paramBoolean, paramArrayOfT.length, paramArrayOfT.getClass().getComponentType());
    this.size = paramArrayOfT.length;
    System.arraycopy(paramArrayOfT, 0, this.items, 0, this.size);
  }

  public Array(T[] paramArrayOfT)
  {
    this(true, paramArrayOfT);
  }

  public void add(T paramT)
  {
    Object[] arrayOfObject = this.items;
    if (this.size == arrayOfObject.length)
      arrayOfObject = resize(Math.max(8, (int)(1.75F * this.size)));
    int i = this.size;
    this.size = (i + 1);
    arrayOfObject[i] = paramT;
  }

  public void addAll(Array paramArray)
  {
    addAll(paramArray, 0, paramArray.size);
  }

  public void addAll(Array paramArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramArray.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramArray.size);
    addAll((Object[])paramArray.items, paramInt1, paramInt2);
  }

  public void addAll(T[] paramArrayOfT)
  {
    addAll(paramArrayOfT, 0, paramArrayOfT.length);
  }

  public void addAll(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = this.items;
    int i = paramInt2 + this.size;
    if (i > arrayOfObject.length)
      arrayOfObject = resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayOfT, paramInt1, arrayOfObject, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    Object[] arrayOfObject = this.items;
    int i = this.size;
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = null;
    this.size = 0;
  }

  public boolean contains(T paramT, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.items;
    int i = -1 + this.size;
    if ((paramBoolean) || (paramT == null));
    while (true)
    {
      int j;
      if (i >= 0)
      {
        j = i - 1;
        if (arrayOfObject[i] == paramT)
        {
          return true;
          do
          {
            i = k;
            if (i < 0)
              break;
            int k = i - 1;
          }
          while (!paramT.equals(arrayOfObject[i]));
          return true;
        }
      }
      else
      {
        return false;
      }
      i = j;
    }
  }

  public T[] ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.items.length)
      resize(Math.max(8, i));
    return this.items;
  }

  public T first()
  {
    return this.items[0];
  }

  public T get(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.items[paramInt];
  }

  public int indexOf(T paramT, boolean paramBoolean)
  {
    int i = 0;
    Object[] arrayOfObject = this.items;
    int j;
    if ((paramBoolean) || (paramT == null))
      j = this.size;
    while (i < j)
    {
      if (arrayOfObject[i] == paramT)
        return i;
      i++;
      continue;
      int k = this.size;
      while (true)
      {
        if (i >= k)
          break label73;
        if (paramT.equals(arrayOfObject[i]))
          break;
        i++;
      }
    }
    label73: return -1;
  }

  public void insert(int paramInt, T paramT)
  {
    Object[] arrayOfObject = this.items;
    if (this.size == arrayOfObject.length)
      arrayOfObject = resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
      System.arraycopy(arrayOfObject, paramInt, arrayOfObject, paramInt + 1, this.size - paramInt);
    while (true)
    {
      this.size = (1 + this.size);
      arrayOfObject[paramInt] = paramT;
      return;
      arrayOfObject[this.size] = arrayOfObject[paramInt];
    }
  }

  public Iterator<T> iterator()
  {
    if (this.iterator == null)
      this.iterator = new Array.ArrayIterator(this);
    while (true)
    {
      return this.iterator;
      this.iterator.index = 0;
    }
  }

  public int lastIndexOf(T paramT, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.items;
    int i;
    if ((paramBoolean) || (paramT == null))
      i = -1 + this.size;
    while (i >= 0)
    {
      if (arrayOfObject[i] == paramT)
        return i;
      i--;
      continue;
      for (i = -1 + this.size; ; i--)
      {
        if (i < 0)
          break label73;
        if (paramT.equals(arrayOfObject[i]))
          break;
      }
    }
    label73: return -1;
  }

  public T peek()
  {
    return this.items[(-1 + this.size)];
  }

  public T pop()
  {
    this.size = (-1 + this.size);
    Object localObject = this.items[this.size];
    this.items[this.size] = null;
    return localObject;
  }

  public T random()
  {
    if (this.size == 0)
      return null;
    return this.items[MathUtils.random(0, -1 + this.size)];
  }

  public T removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    Object[] arrayOfObject = this.items;
    Object localObject = arrayOfObject[paramInt];
    this.size = (-1 + this.size);
    if (this.ordered)
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, this.size - paramInt);
    while (true)
    {
      arrayOfObject[this.size] = null;
      return localObject;
      arrayOfObject[paramInt] = arrayOfObject[this.size];
    }
  }

  public boolean removeValue(T paramT, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.items;
    int i;
    int j;
    if ((paramBoolean) || (paramT == null))
    {
      i = this.size;
      j = 0;
    }
    while (j < i)
    {
      if (arrayOfObject[j] == paramT)
      {
        removeIndex(j);
        return true;
      }
      j++;
      continue;
      int k = this.size;
      for (int m = 0; m < k; m++)
        if (paramT.equals(arrayOfObject[m]))
        {
          removeIndex(m);
          return true;
        }
    }
    return false;
  }

  protected T[] resize(int paramInt)
  {
    Object[] arrayOfObject1 = this.items;
    Object[] arrayOfObject2 = (Object[])java.lang.reflect.Array.newInstance(arrayOfObject1.getClass().getComponentType(), paramInt);
    System.arraycopy(arrayOfObject1, 0, arrayOfObject2, 0, Math.min(this.size, arrayOfObject2.length));
    this.items = arrayOfObject2;
    return arrayOfObject2;
  }

  public void reverse()
  {
    int i = 0;
    int j = -1 + this.size;
    int k = this.size / 2;
    while (i < k)
    {
      int m = j - i;
      Object localObject = this.items[i];
      this.items[i] = this.items[m];
      this.items[m] = localObject;
      i++;
    }
  }

  public void set(int paramInt, T paramT)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.items[paramInt] = paramT;
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
      Object localObject = this.items[i];
      this.items[i] = this.items[j];
      this.items[j] = localObject;
    }
  }

  public void sort()
  {
    Sort.instance().sort(this.items, 0, this.size);
  }

  public void sort(Comparator<T> paramComparator)
  {
    Sort.instance().sort(this.items, paramComparator, 0, this.size);
  }

  public void swap(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt1));
    if (paramInt2 >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt2));
    Object[] arrayOfObject = this.items;
    Object localObject = arrayOfObject[paramInt1];
    arrayOfObject[paramInt1] = arrayOfObject[paramInt2];
    arrayOfObject[paramInt2] = localObject;
  }

  public T[] toArray()
  {
    return (Object[])toArray(this.items.getClass().getComponentType());
  }

  public <V> V[] toArray(Class<V> paramClass)
  {
    Object[] arrayOfObject = (Object[])java.lang.reflect.Array.newInstance(paramClass, this.size);
    System.arraycopy(this.items, 0, arrayOfObject, 0, this.size);
    return arrayOfObject;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    Object[] arrayOfObject = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfObject[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfObject[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public String toString(String paramString)
  {
    if (this.size == 0)
      return "";
    Object[] arrayOfObject = this.items;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(arrayOfObject[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(arrayOfObject[i]);
    }
    return localStringBuilder.toString();
  }

  public void truncate(int paramInt)
  {
    if (this.size <= paramInt)
      return;
    for (int i = paramInt; i < this.size; i++)
      this.items[i] = null;
    this.size = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Array
 * JD-Core Version:    0.6.2
 */
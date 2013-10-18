package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.lang.reflect.Array;

public class ArrayMap<K, V>
{
  private ArrayMap.Entries entries;
  public K[] keys;
  private ArrayMap.Keys keysIter;
  public boolean ordered;
  public int size;
  public V[] values;
  private ArrayMap.Values valuesIter;

  public ArrayMap()
  {
    this(true, 16);
  }

  public ArrayMap(int paramInt)
  {
    this(true, paramInt);
  }

  public ArrayMap(ArrayMap paramArrayMap)
  {
    this(paramArrayMap.ordered, paramArrayMap.size, paramArrayMap.keys.getClass().getComponentType(), paramArrayMap.values.getClass().getComponentType());
    this.size = paramArrayMap.size;
    System.arraycopy(paramArrayMap.keys, 0, this.keys, 0, this.size);
    System.arraycopy(paramArrayMap.values, 0, this.values, 0, this.size);
  }

  public ArrayMap(Class<K> paramClass, Class<V> paramClass1)
  {
    this(false, 16, paramClass, paramClass1);
  }

  public ArrayMap(boolean paramBoolean, int paramInt)
  {
    this.ordered = paramBoolean;
    this.keys = ((Object[])new Object[paramInt]);
    this.values = ((Object[])new Object[paramInt]);
  }

  public ArrayMap(boolean paramBoolean, int paramInt, Class<K> paramClass, Class<V> paramClass1)
  {
    this.ordered = paramBoolean;
    this.keys = ((Object[])Array.newInstance(paramClass, paramInt));
    this.values = ((Object[])Array.newInstance(paramClass1, paramInt));
  }

  public void addAll(ArrayMap paramArrayMap)
  {
    addAll(paramArrayMap, 0, paramArrayMap.size);
  }

  public void addAll(ArrayMap paramArrayMap, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 > paramArrayMap.size)
      throw new IllegalArgumentException("offset + length must be <= size: " + paramInt1 + " + " + paramInt2 + " <= " + paramArrayMap.size);
    int i = paramInt2 + this.size - paramInt1;
    if (i >= this.keys.length)
      resize(Math.max(8, (int)(1.75F * i)));
    System.arraycopy(paramArrayMap.keys, paramInt1, this.keys, this.size, paramInt2);
    System.arraycopy(paramArrayMap.values, paramInt1, this.values, this.size, paramInt2);
    this.size = (paramInt2 + this.size);
  }

  public void clear()
  {
    Object[] arrayOfObject1 = this.keys;
    Object[] arrayOfObject2 = this.values;
    int i = this.size;
    for (int j = 0; j < i; j++)
    {
      arrayOfObject1[j] = null;
      arrayOfObject2[j] = null;
    }
    this.size = 0;
  }

  public boolean containsKey(K paramK)
  {
    Object[] arrayOfObject = this.keys;
    int i = -1 + this.size;
    if (paramK == null);
    while (true)
    {
      int k;
      if (i >= 0)
      {
        k = i - 1;
        if (arrayOfObject[i] == paramK)
        {
          return true;
          do
          {
            i = j;
            if (i < 0)
              break;
            int j = i - 1;
          }
          while (!paramK.equals(arrayOfObject[i]));
          return true;
        }
      }
      else
      {
        return false;
      }
      i = k;
    }
  }

  public boolean containsValue(V paramV, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.values;
    int i = -1 + this.size;
    if ((paramBoolean) || (paramV == null));
    while (true)
    {
      int j;
      if (i >= 0)
      {
        j = i - 1;
        if (arrayOfObject[i] == paramV)
        {
          return true;
          do
          {
            i = k;
            if (i < 0)
              break;
            int k = i - 1;
          }
          while (!paramV.equals(arrayOfObject[i]));
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

  public void ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.keys.length)
      resize(Math.max(8, i));
  }

  public ArrayMap.Entries<K, V> entries()
  {
    if (this.entries == null)
      this.entries = new ArrayMap.Entries(this);
    while (true)
    {
      return this.entries;
      this.entries.reset();
    }
  }

  public V get(K paramK)
  {
    Object[] arrayOfObject = this.keys;
    int i = -1 + this.size;
    if (paramK == null)
      while (i >= 0)
      {
        if (arrayOfObject[i] == paramK)
          return this.values[i];
        i--;
      }
    do
    {
      i--;
      if (i < 0)
        break;
    }
    while (!paramK.equals(arrayOfObject[i]));
    return this.values[i];
    return null;
  }

  public K getKey(V paramV, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.values;
    int i = -1 + this.size;
    if ((paramBoolean) || (arrayOfObject == null));
    while (i >= 0)
    {
      if (arrayOfObject[i] == arrayOfObject)
        return this.keys[i];
      i--;
      continue;
      do
      {
        i--;
        if (i < 0)
          break;
      }
      while (!arrayOfObject.equals(arrayOfObject[i]));
      return this.keys[i];
    }
    return null;
  }

  public K getKeyAt(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.keys[paramInt];
  }

  public V getValueAt(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    return this.values[paramInt];
  }

  public int indexOfKey(K paramK)
  {
    int i = 0;
    Object[] arrayOfObject = this.keys;
    if (paramK == null)
    {
      int k = this.size;
      while (i < k)
      {
        if (arrayOfObject[i] == paramK)
          return i;
        i++;
      }
    }
    int j = this.size;
    while (true)
    {
      if (i >= j)
        break label66;
      if (paramK.equals(arrayOfObject[i]))
        break;
      i++;
    }
    label66: return -1;
  }

  public int indexOfValue(V paramV, boolean paramBoolean)
  {
    int i = 0;
    Object[] arrayOfObject = this.values;
    int j;
    if ((paramBoolean) || (paramV == null))
      j = this.size;
    while (i < j)
    {
      if (arrayOfObject[i] == paramV)
        return i;
      i++;
      continue;
      int k = this.size;
      while (true)
      {
        if (i >= k)
          break label73;
        if (paramV.equals(arrayOfObject[i]))
          break;
        i++;
      }
    }
    label73: return -1;
  }

  public void insert(int paramInt, K paramK, V paramV)
  {
    if (this.size == this.keys.length)
      resize(Math.max(8, (int)(1.75F * this.size)));
    if (this.ordered)
    {
      System.arraycopy(this.keys, paramInt, this.keys, paramInt + 1, this.size - paramInt);
      System.arraycopy(this.values, paramInt, this.values, paramInt + 1, this.size - paramInt);
    }
    while (true)
    {
      this.size = (1 + this.size);
      this.keys[paramInt] = paramK;
      this.values[paramInt] = paramV;
      return;
      this.keys[this.size] = this.keys[paramInt];
      this.values[this.size] = this.values[paramInt];
    }
  }

  public ArrayMap.Keys<K> keys()
  {
    if (this.keysIter == null)
      this.keysIter = new ArrayMap.Keys(this);
    while (true)
    {
      return this.keysIter;
      this.keysIter.reset();
    }
  }

  public K peekKey()
  {
    return this.keys[(-1 + this.size)];
  }

  public V peekValue()
  {
    return this.values[(-1 + this.size)];
  }

  public void put(K paramK, V paramV)
  {
    if (this.size == this.keys.length)
      resize(Math.max(8, (int)(1.75F * this.size)));
    int i = indexOfKey(paramK);
    if (i == -1)
    {
      i = this.size;
      this.size = (i + 1);
    }
    this.keys[i] = paramK;
    this.values[i] = paramV;
  }

  public void put(K paramK, V paramV, int paramInt)
  {
    if (this.size == this.keys.length)
      resize(Math.max(8, (int)(1.75F * this.size)));
    int i = indexOfKey(paramK);
    if (i != -1)
      removeIndex(i);
    System.arraycopy(this.keys, paramInt, this.keys, paramInt + 1, this.size - paramInt);
    System.arraycopy(this.values, paramInt, this.values, paramInt + 1, this.size - paramInt);
    this.keys[paramInt] = paramK;
    this.values[paramInt] = paramV;
    this.size = (1 + this.size);
  }

  public void removeIndex(int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    Object[] arrayOfObject = this.keys;
    this.size = (-1 + this.size);
    if (this.ordered)
    {
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, this.size - paramInt);
      System.arraycopy(this.values, paramInt + 1, this.values, paramInt, this.size - paramInt);
    }
    while (true)
    {
      arrayOfObject[this.size] = null;
      this.values[this.size] = null;
      return;
      arrayOfObject[paramInt] = arrayOfObject[this.size];
      this.values[paramInt] = this.values[this.size];
    }
  }

  public V removeKey(K paramK)
  {
    Object[] arrayOfObject = this.keys;
    if (paramK == null)
    {
      int k = this.size;
      for (int m = 0; m < k; m++)
        if (arrayOfObject[m] == paramK)
        {
          Object localObject2 = this.values[m];
          removeIndex(m);
          return localObject2;
        }
    }
    int i = this.size;
    for (int j = 0; j < i; j++)
      if (paramK.equals(arrayOfObject[j]))
      {
        Object localObject1 = this.values[j];
        removeIndex(j);
        return localObject1;
      }
    return null;
  }

  public boolean removeValue(V paramV, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.values;
    int i;
    int j;
    if ((paramBoolean) || (paramV == null))
    {
      i = this.size;
      j = 0;
    }
    while (j < i)
    {
      if (arrayOfObject[j] == paramV)
      {
        removeIndex(j);
        return true;
      }
      j++;
      continue;
      int k = this.size;
      for (int m = 0; m < k; m++)
        if (paramV.equals(arrayOfObject[m]))
        {
          removeIndex(m);
          return true;
        }
    }
    return false;
  }

  protected void resize(int paramInt)
  {
    Object[] arrayOfObject1 = (Object[])Array.newInstance(this.keys.getClass().getComponentType(), paramInt);
    System.arraycopy(this.keys, 0, arrayOfObject1, 0, Math.min(this.keys.length, arrayOfObject1.length));
    this.keys = arrayOfObject1;
    Object[] arrayOfObject2 = (Object[])Array.newInstance(this.values.getClass().getComponentType(), paramInt);
    System.arraycopy(this.values, 0, arrayOfObject2, 0, Math.min(this.values.length, arrayOfObject2.length));
    this.values = arrayOfObject2;
  }

  public void reverse()
  {
    int i = 0;
    int j = -1 + this.size;
    int k = this.size / 2;
    while (i < k)
    {
      int m = j - i;
      Object localObject1 = this.keys[i];
      this.keys[i] = this.keys[m];
      this.keys[m] = localObject1;
      Object localObject2 = this.values[i];
      this.values[i] = this.values[m];
      this.values[m] = localObject2;
      i++;
    }
  }

  public void setKey(int paramInt, K paramK)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.keys[paramInt] = paramK;
  }

  public void setValue(int paramInt, V paramV)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException(String.valueOf(paramInt));
    this.values[paramInt] = paramV;
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
      Object localObject1 = this.keys[i];
      this.keys[i] = this.keys[j];
      this.keys[j] = localObject1;
      Object localObject2 = this.values[i];
      this.values[i] = this.values[j];
      this.values[j] = localObject2;
    }
  }

  public String toString()
  {
    if (this.size == 0)
      return "{}";
    Object[] arrayOfObject1 = this.keys;
    Object[] arrayOfObject2 = this.values;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('{');
    localStringBuilder.append(arrayOfObject1[0]);
    localStringBuilder.append('=');
    localStringBuilder.append(arrayOfObject2[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfObject1[i]);
      localStringBuilder.append('=');
      localStringBuilder.append(arrayOfObject2[i]);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  public void truncate(int paramInt)
  {
    if (this.size <= paramInt)
      return;
    for (int i = paramInt; i < this.size; i++)
    {
      this.keys[i] = null;
      this.values[i] = null;
    }
    this.size = paramInt;
  }

  public ArrayMap.Values<V> values()
  {
    if (this.valuesIter == null)
      this.valuesIter = new ArrayMap.Values(this);
    while (true)
    {
      return this.valuesIter;
      this.valuesIter.reset();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ArrayMap
 * JD-Core Version:    0.6.2
 */
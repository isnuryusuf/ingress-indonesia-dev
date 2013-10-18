package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Iterator;

public class ObjectIntMap<K>
{
  private static final int PRIME1 = -1105259343;
  private static final int PRIME2 = -1262997959;
  private static final int PRIME3 = -825114047;
  int capacity;
  private ObjectIntMap.Entries entries;
  private int hashShift;
  K[] keyTable;
  private ObjectIntMap.Keys keys;
  private float loadFactor;
  private int mask;
  private int pushIterations;
  public int size;
  private int stashCapacity;
  int stashSize;
  private int threshold;
  int[] valueTable;
  private ObjectIntMap.Values values;

  public ObjectIntMap()
  {
    this(32, 0.8F);
  }

  public ObjectIntMap(int paramInt)
  {
    this(paramInt, 0.8F);
  }

  public ObjectIntMap(int paramInt, float paramFloat)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("initialCapacity must be >= 0: " + paramInt);
    if (this.capacity > 1073741824)
      throw new IllegalArgumentException("initialCapacity is too large: " + paramInt);
    this.capacity = MathUtils.nextPowerOfTwo(paramInt);
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException("loadFactor must be > 0: " + paramFloat);
    this.loadFactor = paramFloat;
    this.threshold = ((int)(paramFloat * this.capacity));
    this.mask = (-1 + this.capacity);
    this.hashShift = (31 - Integer.numberOfTrailingZeros(this.capacity));
    this.stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(this.capacity)));
    this.pushIterations = Math.max(Math.min(this.capacity, 8), (int)Math.sqrt(this.capacity) / 8);
    this.keyTable = ((Object[])new Object[this.capacity + this.stashCapacity]);
    this.valueTable = new int[this.keyTable.length];
  }

  private boolean containsKeyStash(K paramK)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (i < j)
    {
      if (paramK.equals(arrayOfObject[i]))
        return true;
      i++;
    }
    return false;
  }

  private int getAndIncrementStash(K paramK, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (i < j)
    {
      if (paramK.equals(arrayOfObject[i]))
      {
        int k = this.valueTable[i];
        this.valueTable[i] = (k + paramInt2);
        return k;
      }
      i++;
    }
    put(paramK, paramInt1 + paramInt2);
    return paramInt1;
  }

  private int getStash(K paramK, int paramInt)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (true)
    {
      if (i < j)
      {
        if (paramK.equals(arrayOfObject[i]))
          paramInt = this.valueTable[i];
      }
      else
        return paramInt;
      i++;
    }
  }

  private int hash2(int paramInt)
  {
    int i = -1262997959 * paramInt;
    return (i ^ i >>> this.hashShift) & this.mask;
  }

  private int hash3(int paramInt)
  {
    int i = -825114047 * paramInt;
    return (i ^ i >>> this.hashShift) & this.mask;
  }

  private void push(K paramK1, int paramInt1, int paramInt2, K paramK2, int paramInt3, K paramK3, int paramInt4, K paramK4)
  {
    Object[] arrayOfObject = this.keyTable;
    int[] arrayOfInt = this.valueTable;
    int i = this.mask;
    int j = 0;
    int k = this.pushIterations;
    label263: label329: 
    do
    {
      int n;
      switch (MathUtils.random(2))
      {
      default:
        int i5 = arrayOfInt[paramInt4];
        arrayOfObject[paramInt4] = paramK1;
        arrayOfInt[paramInt4] = paramInt1;
        paramInt1 = i5;
        paramK1 = paramK4;
        n = paramK1.hashCode();
        paramInt2 = n & i;
        paramK2 = arrayOfObject[paramInt2];
        if (paramK2 == null)
        {
          arrayOfObject[paramInt2] = paramK1;
          arrayOfInt[paramInt2] = paramInt1;
          int i3 = this.size;
          this.size = (i3 + 1);
          if (i3 >= this.threshold)
            resize(this.capacity << 1);
        }
        break;
      case 0:
      case 1:
      }
      int i1;
      do
      {
        int i2;
        do
        {
          return;
          int i4 = arrayOfInt[paramInt2];
          arrayOfObject[paramInt2] = paramK1;
          arrayOfInt[paramInt2] = paramInt1;
          paramInt1 = i4;
          paramK1 = paramK2;
          break;
          int m = arrayOfInt[paramInt3];
          arrayOfObject[paramInt3] = paramK1;
          arrayOfInt[paramInt3] = paramInt1;
          paramInt1 = m;
          paramK1 = paramK3;
          break;
          paramInt3 = hash2(n);
          paramK3 = arrayOfObject[paramInt3];
          if (paramK3 != null)
            break label263;
          arrayOfObject[paramInt3] = paramK1;
          arrayOfInt[paramInt3] = paramInt1;
          i2 = this.size;
          this.size = (i2 + 1);
        }
        while (i2 < this.threshold);
        resize(this.capacity << 1);
        return;
        paramInt4 = hash3(n);
        paramK4 = arrayOfObject[paramInt4];
        if (paramK4 != null)
          break label329;
        arrayOfObject[paramInt4] = paramK1;
        arrayOfInt[paramInt4] = paramInt1;
        i1 = this.size;
        this.size = (i1 + 1);
      }
      while (i1 < this.threshold);
      resize(this.capacity << 1);
      return;
      j++;
    }
    while (j != k);
    putStash(paramK1, paramInt1);
  }

  private void putResize(K paramK, int paramInt)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    Object localObject1 = this.keyTable[j];
    if (localObject1 == null)
    {
      this.keyTable[j] = paramK;
      this.valueTable[j] = paramInt;
      int i2 = this.size;
      this.size = (i2 + 1);
      if (i2 >= this.threshold)
        resize(this.capacity << 1);
    }
    int k;
    Object localObject2;
    int m;
    Object localObject3;
    int n;
    do
    {
      int i1;
      do
      {
        return;
        k = hash2(i);
        localObject2 = this.keyTable[k];
        if (localObject2 != null)
          break;
        this.keyTable[k] = paramK;
        this.valueTable[k] = paramInt;
        i1 = this.size;
        this.size = (i1 + 1);
      }
      while (i1 < this.threshold);
      resize(this.capacity << 1);
      return;
      m = hash3(i);
      localObject3 = this.keyTable[m];
      if (localObject3 != null)
        break;
      this.keyTable[m] = paramK;
      this.valueTable[m] = paramInt;
      n = this.size;
      this.size = (n + 1);
    }
    while (n < this.threshold);
    resize(this.capacity << 1);
    return;
    push(paramK, paramInt, j, localObject1, k, localObject2, m, localObject3);
  }

  private void putStash(K paramK, int paramInt)
  {
    if (this.stashSize == this.stashCapacity)
    {
      resize(this.capacity << 1);
      put(paramK, paramInt);
      return;
    }
    int i = this.capacity + this.stashSize;
    this.keyTable[i] = paramK;
    this.valueTable[i] = paramInt;
    this.stashSize = (1 + this.stashSize);
    this.size = (1 + this.size);
  }

  private void resize(int paramInt)
  {
    int i = this.capacity + this.stashSize;
    this.capacity = paramInt;
    this.threshold = ((int)(paramInt * this.loadFactor));
    this.mask = (paramInt - 1);
    this.hashShift = (31 - Integer.numberOfTrailingZeros(paramInt));
    this.stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(paramInt)));
    this.pushIterations = Math.max(Math.min(paramInt, 8), (int)Math.sqrt(paramInt) / 8);
    Object[] arrayOfObject = this.keyTable;
    int[] arrayOfInt = this.valueTable;
    this.keyTable = ((Object[])new Object[paramInt + this.stashCapacity]);
    this.valueTable = new int[paramInt + this.stashCapacity];
    this.size = 0;
    this.stashSize = 0;
    for (int j = 0; j < i; j++)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != null)
        putResize(localObject, arrayOfInt[j]);
    }
  }

  public void clear()
  {
    Object[] arrayOfObject = this.keyTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        break;
      arrayOfObject[j] = null;
    }
    this.size = 0;
    this.stashSize = 0;
  }

  public boolean containsKey(K paramK)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    if (!paramK.equals(this.keyTable[j]))
    {
      int k = hash2(i);
      if (!paramK.equals(this.keyTable[k]))
      {
        int m = hash3(i);
        if (!paramK.equals(this.keyTable[m]))
          return containsKeyStash(paramK);
      }
    }
    return true;
  }

  public boolean containsValue(int paramInt)
  {
    int[] arrayOfInt = this.valueTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        if (arrayOfInt[j] == paramInt)
          return true;
      }
      else
        return false;
    }
  }

  public void ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.threshold)
      resize(MathUtils.nextPowerOfTwo((int)(i / this.loadFactor)));
  }

  public ObjectIntMap.Entries<K> entries()
  {
    if (this.entries == null)
      this.entries = new ObjectIntMap.Entries(this);
    while (true)
    {
      return this.entries;
      this.entries.reset();
    }
  }

  public K findKey(int paramInt)
  {
    int[] arrayOfInt = this.valueTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        if (arrayOfInt[j] == paramInt)
          return this.keyTable[j];
      }
      else
        return null;
    }
  }

  public int get(K paramK, int paramInt)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    if (!paramK.equals(this.keyTable[j]))
    {
      j = hash2(i);
      if (!paramK.equals(this.keyTable[j]))
      {
        j = hash3(i);
        if (!paramK.equals(this.keyTable[j]))
          return getStash(paramK, paramInt);
      }
    }
    return this.valueTable[j];
  }

  public int getAndIncrement(K paramK, int paramInt1, int paramInt2)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    if (!paramK.equals(this.keyTable[j]))
    {
      j = hash2(i);
      if (!paramK.equals(this.keyTable[j]))
      {
        j = hash3(i);
        if (!paramK.equals(this.keyTable[j]))
          return getAndIncrementStash(paramK, paramInt1, paramInt2);
      }
    }
    int k = this.valueTable[j];
    this.valueTable[j] = (k + paramInt2);
    return k;
  }

  public ObjectIntMap.Keys<K> keys()
  {
    if (this.keys == null)
      this.keys = new ObjectIntMap.Keys(this);
    while (true)
    {
      return this.keys;
      this.keys.reset();
    }
  }

  public void put(K paramK, int paramInt)
  {
    if (paramK == null)
      throw new IllegalArgumentException("key cannot be null.");
    Object[] arrayOfObject = this.keyTable;
    int i = paramK.hashCode();
    int j = i & this.mask;
    Object localObject1 = arrayOfObject[j];
    if (paramK.equals(localObject1))
      this.valueTable[j] = paramInt;
    int k;
    Object localObject2;
    int m;
    Object localObject3;
    int i2;
    do
    {
      int i3;
      do
      {
        int i4;
        do
        {
          return;
          k = hash2(i);
          localObject2 = arrayOfObject[k];
          if (paramK.equals(localObject2))
          {
            this.valueTable[k] = paramInt;
            return;
          }
          m = hash3(i);
          localObject3 = arrayOfObject[m];
          if (paramK.equals(localObject3))
          {
            this.valueTable[m] = paramInt;
            return;
          }
          int n = this.capacity;
          int i1 = n + this.stashSize;
          while (n < i1)
          {
            if (paramK.equals(arrayOfObject[n]))
            {
              this.valueTable[n] = paramInt;
              return;
            }
            n++;
          }
          if (localObject1 != null)
            break;
          arrayOfObject[j] = paramK;
          this.valueTable[j] = paramInt;
          i4 = this.size;
          this.size = (i4 + 1);
        }
        while (i4 < this.threshold);
        resize(this.capacity << 1);
        return;
        if (localObject2 != null)
          break;
        arrayOfObject[k] = paramK;
        this.valueTable[k] = paramInt;
        i3 = this.size;
        this.size = (i3 + 1);
      }
      while (i3 < this.threshold);
      resize(this.capacity << 1);
      return;
      if (localObject3 != null)
        break;
      arrayOfObject[m] = paramK;
      this.valueTable[m] = paramInt;
      i2 = this.size;
      this.size = (i2 + 1);
    }
    while (i2 < this.threshold);
    resize(this.capacity << 1);
    return;
    push(paramK, paramInt, j, localObject1, k, localObject2, m, localObject3);
  }

  public void putAll(ObjectIntMap<K> paramObjectIntMap)
  {
    Iterator localIterator = paramObjectIntMap.entries().iterator();
    while (localIterator.hasNext())
    {
      ObjectIntMap.Entry localEntry = (ObjectIntMap.Entry)localIterator.next();
      put(localEntry.key, localEntry.value);
    }
  }

  public int remove(K paramK, int paramInt)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    if (paramK.equals(this.keyTable[j]))
    {
      this.keyTable[j] = null;
      int i2 = this.valueTable[j];
      this.size = (-1 + this.size);
      return i2;
    }
    int k = hash2(i);
    if (paramK.equals(this.keyTable[k]))
    {
      this.keyTable[k] = null;
      int i1 = this.valueTable[k];
      this.size = (-1 + this.size);
      return i1;
    }
    int m = hash3(i);
    if (paramK.equals(this.keyTable[m]))
    {
      this.keyTable[m] = null;
      int n = this.valueTable[m];
      this.size = (-1 + this.size);
      return n;
    }
    return removeStash(paramK, paramInt);
  }

  int removeStash(K paramK, int paramInt)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (true)
    {
      if (i < j)
      {
        if (paramK.equals(arrayOfObject[i]))
        {
          paramInt = this.valueTable[i];
          removeStashIndex(i);
          this.size = (-1 + this.size);
        }
      }
      else
        return paramInt;
      i++;
    }
  }

  void removeStashIndex(int paramInt)
  {
    this.stashSize = (-1 + this.stashSize);
    int i = this.capacity + this.stashSize;
    if (paramInt < i)
    {
      this.keyTable[paramInt] = this.keyTable[i];
      this.valueTable[paramInt] = this.valueTable[i];
    }
  }

  public String toString()
  {
    if (this.size == 0)
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('{');
    Object[] arrayOfObject = this.keyTable;
    int[] arrayOfInt = this.valueTable;
    int j;
    for (int i = arrayOfObject.length; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        Object localObject2 = arrayOfObject[j];
        if (localObject2 != null)
        {
          localStringBuilder.append(localObject2);
          localStringBuilder.append('=');
          localStringBuilder.append(arrayOfInt[j]);
        }
      }
      else
      {
        while (true)
        {
          int k = j - 1;
          if (j > 0)
          {
            Object localObject1 = arrayOfObject[k];
            if (localObject1 != null)
            {
              localStringBuilder.append(", ");
              localStringBuilder.append(localObject1);
              localStringBuilder.append('=');
              localStringBuilder.append(arrayOfInt[k]);
              j = k;
            }
          }
          else
          {
            localStringBuilder.append('}');
            return localStringBuilder.toString();
            j = k;
          }
        }
      }
    }
  }

  public ObjectIntMap.Values values()
  {
    if (this.values == null)
      this.values = new ObjectIntMap.Values(this);
    while (true)
    {
      return this.values;
      this.values.reset();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectIntMap
 * JD-Core Version:    0.6.2
 */
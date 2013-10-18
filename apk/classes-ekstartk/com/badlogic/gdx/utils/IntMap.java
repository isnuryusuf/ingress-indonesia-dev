package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Iterator;

public class IntMap<V>
{
  private static final int EMPTY = 0;
  private static final int PRIME1 = -1105259343;
  private static final int PRIME2 = -1262997959;
  private static final int PRIME3 = -825114047;
  int capacity;
  private IntMap.Entries entries;
  boolean hasZeroValue;
  private int hashShift;
  int[] keyTable;
  private IntMap.Keys keys;
  private float loadFactor;
  private int mask;
  private int pushIterations;
  public int size;
  private int stashCapacity;
  int stashSize;
  private int threshold;
  V[] valueTable;
  private IntMap.Values values;
  V zeroValue;

  public IntMap()
  {
    this(32, 0.8F);
  }

  public IntMap(int paramInt)
  {
    this(paramInt, 0.8F);
  }

  public IntMap(int paramInt, float paramFloat)
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
    this.keyTable = new int[this.capacity + this.stashCapacity];
    this.valueTable = ((Object[])new Object[this.keyTable.length]);
  }

  private boolean containsKeyStash(int paramInt)
  {
    int[] arrayOfInt = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (i < j)
    {
      if (arrayOfInt[i] == paramInt)
        return true;
      i++;
    }
    return false;
  }

  private V getStash(int paramInt, V paramV)
  {
    int[] arrayOfInt = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (true)
    {
      if (i < j)
      {
        if (arrayOfInt[i] == paramInt)
          paramV = this.valueTable[i];
      }
      else
        return paramV;
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

  private void push(int paramInt1, V paramV, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    int[] arrayOfInt = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int i = this.mask;
    int j = 0;
    int k = this.pushIterations;
    label255: 
    do
    {
      switch (MathUtils.random(2))
      {
      default:
        Object localObject3 = arrayOfObject[paramInt6];
        arrayOfInt[paramInt6] = paramInt1;
        arrayOfObject[paramInt6] = paramV;
        paramV = localObject3;
        paramInt1 = paramInt7;
        paramInt2 = paramInt1 & i;
        paramInt3 = arrayOfInt[paramInt2];
        if (paramInt3 == 0)
        {
          arrayOfInt[paramInt2] = paramInt1;
          arrayOfObject[paramInt2] = paramV;
          int i1 = this.size;
          this.size = (i1 + 1);
          if (i1 >= this.threshold)
            resize(this.capacity << 1);
        }
        break;
      case 0:
      case 1:
      }
      int m;
      do
      {
        int n;
        do
        {
          return;
          Object localObject2 = arrayOfObject[paramInt2];
          arrayOfInt[paramInt2] = paramInt1;
          arrayOfObject[paramInt2] = paramV;
          paramV = localObject2;
          paramInt1 = paramInt3;
          break;
          Object localObject1 = arrayOfObject[paramInt4];
          arrayOfInt[paramInt4] = paramInt1;
          arrayOfObject[paramInt4] = paramV;
          paramV = localObject1;
          paramInt1 = paramInt5;
          break;
          paramInt4 = hash2(paramInt1);
          paramInt5 = arrayOfInt[paramInt4];
          if (paramInt5 != 0)
            break label255;
          arrayOfInt[paramInt4] = paramInt1;
          arrayOfObject[paramInt4] = paramV;
          n = this.size;
          this.size = (n + 1);
        }
        while (n < this.threshold);
        resize(this.capacity << 1);
        return;
        paramInt6 = hash3(paramInt1);
        paramInt7 = arrayOfInt[paramInt6];
        if (paramInt7 != 0)
          break label320;
        arrayOfInt[paramInt6] = paramInt1;
        arrayOfObject[paramInt6] = paramV;
        m = this.size;
        this.size = (m + 1);
      }
      while (m < this.threshold);
      resize(this.capacity << 1);
      return;
      j++;
    }
    while (j != k);
    label320: putStash(paramInt1, paramV);
  }

  private void putResize(int paramInt, V paramV)
  {
    if (paramInt == 0)
    {
      this.zeroValue = paramV;
      this.hasZeroValue = true;
    }
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
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
          i = paramInt & this.mask;
          j = this.keyTable[i];
          if (j != 0)
            break;
          this.keyTable[i] = paramInt;
          this.valueTable[i] = paramV;
          i4 = this.size;
          this.size = (i4 + 1);
        }
        while (i4 < this.threshold);
        resize(this.capacity << 1);
        return;
        k = hash2(paramInt);
        m = this.keyTable[k];
        if (m != 0)
          break;
        this.keyTable[k] = paramInt;
        this.valueTable[k] = paramV;
        i3 = this.size;
        this.size = (i3 + 1);
      }
      while (i3 < this.threshold);
      resize(this.capacity << 1);
      return;
      n = hash3(paramInt);
      i1 = this.keyTable[n];
      if (i1 != 0)
        break;
      this.keyTable[n] = paramInt;
      this.valueTable[n] = paramV;
      i2 = this.size;
      this.size = (i2 + 1);
    }
    while (i2 < this.threshold);
    resize(this.capacity << 1);
    return;
    push(paramInt, paramV, i, j, k, m, n, i1);
  }

  private void putStash(int paramInt, V paramV)
  {
    if (this.stashSize == this.stashCapacity)
    {
      resize(this.capacity << 1);
      put(paramInt, paramV);
      return;
    }
    int i = this.capacity + this.stashSize;
    this.keyTable[i] = paramInt;
    this.valueTable[i] = paramV;
    this.stashSize = (1 + this.stashSize);
    this.size = (1 + this.size);
  }

  private void resize(int paramInt)
  {
    int i = 0;
    int j = this.capacity + this.stashSize;
    this.capacity = paramInt;
    this.threshold = ((int)(paramInt * this.loadFactor));
    this.mask = (paramInt - 1);
    this.hashShift = (31 - Integer.numberOfTrailingZeros(paramInt));
    this.stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(paramInt)));
    this.pushIterations = Math.max(Math.min(paramInt, 8), (int)Math.sqrt(paramInt) / 8);
    int[] arrayOfInt = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    this.keyTable = new int[paramInt + this.stashCapacity];
    this.valueTable = ((Object[])new Object[paramInt + this.stashCapacity]);
    if (this.hasZeroValue);
    for (int k = 1; ; k = 0)
    {
      this.size = k;
      this.stashSize = 0;
      while (i < j)
      {
        int m = arrayOfInt[i];
        if (m != 0)
          putResize(m, arrayOfObject[i]);
        i++;
      }
    }
  }

  public void clear()
  {
    int[] arrayOfInt = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        break;
      arrayOfInt[j] = 0;
      arrayOfObject[j] = null;
    }
    this.size = 0;
    this.stashSize = 0;
    this.zeroValue = null;
    this.hasZeroValue = false;
  }

  public boolean containsKey(int paramInt)
  {
    if (paramInt == 0)
      return this.hasZeroValue;
    int i = paramInt & this.mask;
    if (this.keyTable[i] != paramInt)
    {
      int j = hash2(paramInt);
      if (this.keyTable[j] != paramInt)
      {
        int k = hash3(paramInt);
        if (this.keyTable[k] != paramInt)
          return containsKeyStash(paramInt);
      }
    }
    return true;
  }

  public boolean containsValue(Object paramObject, boolean paramBoolean)
  {
    Object[] arrayOfObject = this.valueTable;
    if (paramObject == null)
      if ((!this.hasZeroValue) || (this.zeroValue != null));
    do
    {
      do
      {
        return true;
        int[] arrayOfInt = this.keyTable;
        int i1;
        for (int n = this.capacity + this.stashSize; ; n = i1)
        {
          i1 = n - 1;
          if (n <= 0)
            break label182;
          if ((arrayOfInt[i1] != 0) && (arrayOfObject[i1] == null))
            break;
        }
        if (!paramBoolean)
          break;
      }
      while (paramObject == this.zeroValue);
      int m;
      for (int k = this.capacity + this.stashSize; ; k = m)
      {
        m = k - 1;
        if (k <= 0)
          break label182;
        if (arrayOfObject[m] == paramObject)
          break;
      }
    }
    while ((this.hasZeroValue) && (paramObject.equals(this.zeroValue)));
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        break label182;
      if (paramObject.equals(arrayOfObject[j]))
        break;
    }
    label182: return false;
  }

  public void ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.threshold)
      resize(MathUtils.nextPowerOfTwo((int)(i / this.loadFactor)));
  }

  public IntMap.Entries<V> entries()
  {
    if (this.entries == null)
      this.entries = new IntMap.Entries(this);
    while (true)
    {
      return this.entries;
      this.entries.reset();
    }
  }

  public int findKey(Object paramObject, boolean paramBoolean, int paramInt)
  {
    Object[] arrayOfObject = this.valueTable;
    int[] arrayOfInt;
    if (paramObject == null)
    {
      if ((this.hasZeroValue) && (this.zeroValue == null))
      {
        paramInt = 0;
        return paramInt;
      }
      arrayOfInt = this.keyTable;
    }
    int i1;
    for (int n = this.capacity + this.stashSize; ; n = i1)
    {
      i1 = n - 1;
      if (n <= 0)
        break;
      if ((arrayOfInt[i1] != 0) && (arrayOfObject[i1] == null))
      {
        return arrayOfInt[i1];
        if (paramBoolean)
          if (paramObject == this.zeroValue)
            return 0;
        int m;
        for (int k = this.capacity + this.stashSize; ; k = m)
        {
          m = k - 1;
          if (k <= 0)
            break;
          if (arrayOfObject[m] == paramObject)
          {
            return this.keyTable[m];
            if ((this.hasZeroValue) && (paramObject.equals(this.zeroValue)))
              return 0;
            int j;
            for (int i = this.capacity + this.stashSize; ; i = j)
            {
              j = i - 1;
              if (i <= 0)
                break;
              if (paramObject.equals(arrayOfObject[j]))
                return this.keyTable[j];
            }
          }
        }
      }
    }
  }

  public V get(int paramInt)
  {
    if (paramInt == 0)
      return this.zeroValue;
    int i = paramInt & this.mask;
    if (this.keyTable[i] != paramInt)
    {
      i = hash2(paramInt);
      if (this.keyTable[i] != paramInt)
      {
        i = hash3(paramInt);
        if (this.keyTable[i] != paramInt)
          return getStash(paramInt, null);
      }
    }
    return this.valueTable[i];
  }

  public V get(int paramInt, V paramV)
  {
    if (paramInt == 0)
      return this.zeroValue;
    int i = paramInt & this.mask;
    if (this.keyTable[i] != paramInt)
    {
      i = hash2(paramInt);
      if (this.keyTable[i] != paramInt)
      {
        i = hash3(paramInt);
        if (this.keyTable[i] != paramInt)
          return getStash(paramInt, paramV);
      }
    }
    return this.valueTable[i];
  }

  public IntMap.Keys keys()
  {
    if (this.keys == null)
      this.keys = new IntMap.Keys(this);
    while (true)
    {
      return this.keys;
      this.keys.reset();
    }
  }

  public V put(int paramInt, V paramV)
  {
    if (paramInt == 0)
    {
      Object localObject5 = this.zeroValue;
      this.zeroValue = paramV;
      if (!this.hasZeroValue)
      {
        this.hasZeroValue = true;
        this.size = (1 + this.size);
      }
      return localObject5;
    }
    int[] arrayOfInt = this.keyTable;
    int i = paramInt & this.mask;
    int j = arrayOfInt[i];
    if (j == paramInt)
    {
      Object localObject4 = this.valueTable[i];
      this.valueTable[i] = paramV;
      return localObject4;
    }
    int k = hash2(paramInt);
    int m = arrayOfInt[k];
    if (m == paramInt)
    {
      Object localObject3 = this.valueTable[k];
      this.valueTable[k] = paramV;
      return localObject3;
    }
    int n = hash3(paramInt);
    int i1 = arrayOfInt[n];
    if (i1 == paramInt)
    {
      Object localObject2 = this.valueTable[n];
      this.valueTable[n] = paramV;
      return localObject2;
    }
    int i2 = this.capacity;
    int i3 = i2 + this.stashSize;
    for (int i4 = i2; i4 < i3; i4++)
      if (arrayOfInt[i4] == paramInt)
      {
        Object localObject1 = this.valueTable[i4];
        this.valueTable[i4] = paramV;
        return localObject1;
      }
    if (j == 0)
    {
      arrayOfInt[i] = paramInt;
      this.valueTable[i] = paramV;
      int i7 = this.size;
      this.size = (i7 + 1);
      if (i7 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (m == 0)
    {
      arrayOfInt[k] = paramInt;
      this.valueTable[k] = paramV;
      int i6 = this.size;
      this.size = (i6 + 1);
      if (i6 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (i1 == 0)
    {
      arrayOfInt[n] = paramInt;
      this.valueTable[n] = paramV;
      int i5 = this.size;
      this.size = (i5 + 1);
      if (i5 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    push(paramInt, paramV, i, j, k, m, n, i1);
    return null;
  }

  public void putAll(IntMap<V> paramIntMap)
  {
    Iterator localIterator = paramIntMap.entries().iterator();
    while (localIterator.hasNext())
    {
      IntMap.Entry localEntry = (IntMap.Entry)localIterator.next();
      put(localEntry.key, localEntry.value);
    }
  }

  public V remove(int paramInt)
  {
    if (paramInt == 0)
    {
      if (!this.hasZeroValue)
        return null;
      Object localObject4 = this.zeroValue;
      this.zeroValue = null;
      this.hasZeroValue = false;
      this.size = (-1 + this.size);
      return localObject4;
    }
    int i = paramInt & this.mask;
    if (this.keyTable[i] == paramInt)
    {
      this.keyTable[i] = 0;
      Object localObject3 = this.valueTable[i];
      this.valueTable[i] = null;
      this.size = (-1 + this.size);
      return localObject3;
    }
    int j = hash2(paramInt);
    if (this.keyTable[j] == paramInt)
    {
      this.keyTable[j] = 0;
      Object localObject2 = this.valueTable[j];
      this.valueTable[j] = null;
      this.size = (-1 + this.size);
      return localObject2;
    }
    int k = hash3(paramInt);
    if (this.keyTable[k] == paramInt)
    {
      this.keyTable[k] = 0;
      Object localObject1 = this.valueTable[k];
      this.valueTable[k] = null;
      this.size = (-1 + this.size);
      return localObject1;
    }
    return removeStash(paramInt);
  }

  V removeStash(int paramInt)
  {
    int[] arrayOfInt = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    for (int k = i; k < j; k++)
      if (arrayOfInt[k] == paramInt)
      {
        Object localObject = this.valueTable[k];
        removeStashIndex(k);
        this.size = (-1 + this.size);
        return localObject;
      }
    return null;
  }

  void removeStashIndex(int paramInt)
  {
    this.stashSize = (-1 + this.stashSize);
    int i = this.capacity + this.stashSize;
    if (paramInt < i)
    {
      this.keyTable[paramInt] = this.keyTable[i];
      this.valueTable[paramInt] = this.valueTable[i];
      this.valueTable[i] = null;
      return;
    }
    this.valueTable[paramInt] = null;
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    int[] arrayOfInt = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int j;
    for (int i = arrayOfInt.length; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        int n = arrayOfInt[j];
        if (n != 0)
        {
          localStringBuilder.append(n);
          localStringBuilder.append('=');
          localStringBuilder.append(arrayOfObject[j]);
        }
      }
      else
      {
        while (true)
        {
          int k = j - 1;
          if (j > 0)
          {
            int m = arrayOfInt[k];
            if (m != 0)
            {
              localStringBuilder.append(", ");
              localStringBuilder.append(m);
              localStringBuilder.append('=');
              localStringBuilder.append(arrayOfObject[k]);
              j = k;
            }
          }
          else
          {
            localStringBuilder.append(']');
            return localStringBuilder.toString();
            j = k;
          }
        }
      }
    }
  }

  public IntMap.Values<V> values()
  {
    if (this.values == null)
      this.values = new IntMap.Values(this);
    while (true)
    {
      return this.values;
      this.values.reset();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IntMap
 * JD-Core Version:    0.6.2
 */
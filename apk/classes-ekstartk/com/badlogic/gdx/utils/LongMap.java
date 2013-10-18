package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Iterator;

public class LongMap<V>
{
  private static final int EMPTY = 0;
  private static final int PRIME1 = -1105259343;
  private static final int PRIME2 = -1262997959;
  private static final int PRIME3 = -825114047;
  int capacity;
  private LongMap.Entries entries;
  boolean hasZeroValue;
  private int hashShift;
  long[] keyTable;
  private LongMap.Keys keys;
  private float loadFactor;
  private int mask;
  private int pushIterations;
  public int size;
  private int stashCapacity;
  int stashSize;
  private int threshold;
  V[] valueTable;
  private LongMap.Values values;
  V zeroValue;

  public LongMap()
  {
    this(32, 0.8F);
  }

  public LongMap(int paramInt)
  {
    this(paramInt, 0.8F);
  }

  public LongMap(int paramInt, float paramFloat)
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
    this.hashShift = (63 - Long.numberOfTrailingZeros(this.capacity));
    this.stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(this.capacity)));
    this.pushIterations = Math.max(Math.min(this.capacity, 8), (int)Math.sqrt(this.capacity) / 8);
    this.keyTable = new long[this.capacity + this.stashCapacity];
    this.valueTable = ((Object[])new Object[this.keyTable.length]);
  }

  private boolean containsKeyStash(long paramLong)
  {
    long[] arrayOfLong = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (i < j)
    {
      if (arrayOfLong[i] == paramLong)
        return true;
      i++;
    }
    return false;
  }

  private V getStash(long paramLong, V paramV)
  {
    long[] arrayOfLong = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (true)
    {
      if (i < j)
      {
        if (arrayOfLong[i] == paramLong)
          paramV = this.valueTable[i];
      }
      else
        return paramV;
      i++;
    }
  }

  private int hash2(long paramLong)
  {
    long l = -1262997959L * paramLong;
    return (int)((l ^ l >>> this.hashShift) & this.mask);
  }

  private int hash3(long paramLong)
  {
    long l = -825114047L * paramLong;
    return (int)((l ^ l >>> this.hashShift) & this.mask);
  }

  private void push(long paramLong1, V paramV, int paramInt1, long paramLong2, int paramInt2, long paramLong3, int paramInt3, long paramLong4)
  {
    long[] arrayOfLong = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int i = this.mask;
    int j = 0;
    int k = this.pushIterations;
    label268: label335: 
    do
    {
      switch (MathUtils.random(2))
      {
      default:
        Object localObject3 = arrayOfObject[paramInt3];
        arrayOfLong[paramInt3] = paramLong1;
        arrayOfObject[paramInt3] = paramV;
        paramV = localObject3;
        paramLong1 = paramLong4;
        paramInt1 = (int)(paramLong1 & i);
        paramLong2 = arrayOfLong[paramInt1];
        if (paramLong2 == 0L)
        {
          arrayOfLong[paramInt1] = paramLong1;
          arrayOfObject[paramInt1] = paramV;
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
          Object localObject2 = arrayOfObject[paramInt1];
          arrayOfLong[paramInt1] = paramLong1;
          arrayOfObject[paramInt1] = paramV;
          paramV = localObject2;
          paramLong1 = paramLong2;
          break;
          Object localObject1 = arrayOfObject[paramInt2];
          arrayOfLong[paramInt2] = paramLong1;
          arrayOfObject[paramInt2] = paramV;
          paramV = localObject1;
          paramLong1 = paramLong3;
          break;
          paramInt2 = hash2(paramLong1);
          paramLong3 = arrayOfLong[paramInt2];
          if (paramLong3 != 0L)
            break label268;
          arrayOfLong[paramInt2] = paramLong1;
          arrayOfObject[paramInt2] = paramV;
          n = this.size;
          this.size = (n + 1);
        }
        while (n < this.threshold);
        resize(this.capacity << 1);
        return;
        paramInt3 = hash3(paramLong1);
        paramLong4 = arrayOfLong[paramInt3];
        if (paramLong4 != 0L)
          break label335;
        arrayOfLong[paramInt3] = paramLong1;
        arrayOfObject[paramInt3] = paramV;
        m = this.size;
        this.size = (m + 1);
      }
      while (m < this.threshold);
      resize(this.capacity << 1);
      return;
      j++;
    }
    while (j != k);
    putStash(paramLong1, paramV);
  }

  private void putResize(long paramLong, V paramV)
  {
    if (paramLong == 0L)
    {
      this.zeroValue = paramV;
      this.hasZeroValue = true;
    }
    int i;
    long l1;
    int j;
    long l2;
    int k;
    long l3;
    int m;
    do
    {
      int n;
      do
      {
        int i1;
        do
        {
          return;
          i = (int)(paramLong & this.mask);
          l1 = this.keyTable[i];
          if (l1 != 0L)
            break;
          this.keyTable[i] = paramLong;
          this.valueTable[i] = paramV;
          i1 = this.size;
          this.size = (i1 + 1);
        }
        while (i1 < this.threshold);
        resize(this.capacity << 1);
        return;
        j = hash2(paramLong);
        l2 = this.keyTable[j];
        if (l2 != 0L)
          break;
        this.keyTable[j] = paramLong;
        this.valueTable[j] = paramV;
        n = this.size;
        this.size = (n + 1);
      }
      while (n < this.threshold);
      resize(this.capacity << 1);
      return;
      k = hash3(paramLong);
      l3 = this.keyTable[k];
      if (l3 != 0L)
        break;
      this.keyTable[k] = paramLong;
      this.valueTable[k] = paramV;
      m = this.size;
      this.size = (m + 1);
    }
    while (m < this.threshold);
    resize(this.capacity << 1);
    return;
    push(paramLong, paramV, i, l1, j, l2, k, l3);
  }

  private void putStash(long paramLong, V paramV)
  {
    if (this.stashSize == this.stashCapacity)
    {
      resize(this.capacity << 1);
      put(paramLong, paramV);
      return;
    }
    int i = this.capacity + this.stashSize;
    this.keyTable[i] = paramLong;
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
    this.hashShift = (63 - Long.numberOfTrailingZeros(paramInt));
    this.stashCapacity = Math.max(3, 2 * (int)Math.ceil(Math.log(paramInt)));
    this.pushIterations = Math.max(Math.min(paramInt, 8), (int)Math.sqrt(paramInt) / 8);
    long[] arrayOfLong = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    this.keyTable = new long[paramInt + this.stashCapacity];
    this.valueTable = ((Object[])new Object[paramInt + this.stashCapacity]);
    if (this.hasZeroValue);
    for (int k = 1; ; k = 0)
    {
      this.size = k;
      this.stashSize = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        if (l != 0L)
          putResize(l, arrayOfObject[i]);
        i++;
      }
    }
  }

  public void clear()
  {
    long[] arrayOfLong = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        break;
      arrayOfLong[j] = 0L;
      arrayOfObject[j] = null;
    }
    this.size = 0;
    this.stashSize = 0;
    this.zeroValue = null;
    this.hasZeroValue = false;
  }

  public boolean containsKey(long paramLong)
  {
    if (paramLong == 0L)
      return this.hasZeroValue;
    int i = (int)(paramLong & this.mask);
    if (this.keyTable[i] != paramLong)
    {
      int j = hash2(paramLong);
      if (this.keyTable[j] != paramLong)
      {
        int k = hash3(paramLong);
        if (this.keyTable[k] != paramLong)
          return containsKeyStash(paramLong);
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
        long[] arrayOfLong = this.keyTable;
        int i1;
        for (int n = this.capacity + this.stashSize; ; n = i1)
        {
          i1 = n - 1;
          if (n <= 0)
            break label184;
          if ((arrayOfLong[i1] != 0L) && (arrayOfObject[i1] == null))
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
          break label184;
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
        break label184;
      if (paramObject.equals(arrayOfObject[j]))
        break;
    }
    label184: return false;
  }

  public void ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.threshold)
      resize(MathUtils.nextPowerOfTwo((int)(i / this.loadFactor)));
  }

  public LongMap.Entries<V> entries()
  {
    if (this.entries == null)
      this.entries = new LongMap.Entries(this);
    while (true)
    {
      return this.entries;
      this.entries.reset();
    }
  }

  public long findKey(Object paramObject, boolean paramBoolean, long paramLong)
  {
    Object[] arrayOfObject = this.valueTable;
    long[] arrayOfLong;
    if (paramObject == null)
    {
      if ((this.hasZeroValue) && (this.zeroValue == null))
      {
        paramLong = 0L;
        return paramLong;
      }
      arrayOfLong = this.keyTable;
    }
    int i1;
    for (int n = this.capacity + this.stashSize; ; n = i1)
    {
      i1 = n - 1;
      if (n <= 0)
        break;
      if ((arrayOfLong[i1] != 0L) && (arrayOfObject[i1] == null))
      {
        return arrayOfLong[i1];
        if (paramBoolean)
          if (paramObject == this.zeroValue)
            return 0L;
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
              return 0L;
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

  public V get(long paramLong)
  {
    if (paramLong == 0L)
      return this.zeroValue;
    int i = (int)(paramLong & this.mask);
    if (this.keyTable[i] != paramLong)
    {
      i = hash2(paramLong);
      if (this.keyTable[i] != paramLong)
      {
        i = hash3(paramLong);
        if (this.keyTable[i] != paramLong)
          return getStash(paramLong, null);
      }
    }
    return this.valueTable[i];
  }

  public V get(long paramLong, V paramV)
  {
    if (paramLong == 0L)
      return this.zeroValue;
    int i = (int)(paramLong & this.mask);
    if (this.keyTable[i] != paramLong)
    {
      i = hash2(paramLong);
      if (this.keyTable[i] != paramLong)
      {
        i = hash3(paramLong);
        if (this.keyTable[i] != paramLong)
          return getStash(paramLong, paramV);
      }
    }
    return this.valueTable[i];
  }

  public LongMap.Keys keys()
  {
    if (this.keys == null)
      this.keys = new LongMap.Keys(this);
    while (true)
    {
      return this.keys;
      this.keys.reset();
    }
  }

  public V put(long paramLong, V paramV)
  {
    if (paramLong == 0L)
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
    long[] arrayOfLong = this.keyTable;
    int i = (int)(paramLong & this.mask);
    long l1 = arrayOfLong[i];
    if (l1 == paramLong)
    {
      Object localObject4 = this.valueTable[i];
      this.valueTable[i] = paramV;
      return localObject4;
    }
    int j = hash2(paramLong);
    long l2 = arrayOfLong[j];
    if (l2 == paramLong)
    {
      Object localObject3 = this.valueTable[j];
      this.valueTable[j] = paramV;
      return localObject3;
    }
    int k = hash3(paramLong);
    long l3 = arrayOfLong[k];
    if (l3 == paramLong)
    {
      Object localObject2 = this.valueTable[k];
      this.valueTable[k] = paramV;
      return localObject2;
    }
    int m = this.capacity;
    int n = m + this.stashSize;
    for (int i1 = m; i1 < n; i1++)
      if (arrayOfLong[i1] == paramLong)
      {
        Object localObject1 = this.valueTable[i1];
        this.valueTable[i1] = paramV;
        return localObject1;
      }
    if (l1 == 0L)
    {
      arrayOfLong[i] = paramLong;
      this.valueTable[i] = paramV;
      int i4 = this.size;
      this.size = (i4 + 1);
      if (i4 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (l2 == 0L)
    {
      arrayOfLong[j] = paramLong;
      this.valueTable[j] = paramV;
      int i3 = this.size;
      this.size = (i3 + 1);
      if (i3 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (l3 == 0L)
    {
      arrayOfLong[k] = paramLong;
      this.valueTable[k] = paramV;
      int i2 = this.size;
      this.size = (i2 + 1);
      if (i2 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    push(paramLong, paramV, i, l1, j, l2, k, l3);
    return null;
  }

  public void putAll(LongMap<V> paramLongMap)
  {
    Iterator localIterator = paramLongMap.entries().iterator();
    while (localIterator.hasNext())
    {
      LongMap.Entry localEntry = (LongMap.Entry)localIterator.next();
      put(localEntry.key, localEntry.value);
    }
  }

  public V remove(long paramLong)
  {
    if (paramLong == 0L)
    {
      if (!this.hasZeroValue)
        return null;
      Object localObject4 = this.zeroValue;
      this.zeroValue = null;
      this.hasZeroValue = false;
      this.size = (-1 + this.size);
      return localObject4;
    }
    int i = (int)(paramLong & this.mask);
    if (this.keyTable[i] == paramLong)
    {
      this.keyTable[i] = 0L;
      Object localObject3 = this.valueTable[i];
      this.valueTable[i] = null;
      this.size = (-1 + this.size);
      return localObject3;
    }
    int j = hash2(paramLong);
    if (this.keyTable[j] == paramLong)
    {
      this.keyTable[j] = 0L;
      Object localObject2 = this.valueTable[j];
      this.valueTable[j] = null;
      this.size = (-1 + this.size);
      return localObject2;
    }
    int k = hash3(paramLong);
    if (this.keyTable[k] == paramLong)
    {
      this.keyTable[k] = 0L;
      Object localObject1 = this.valueTable[k];
      this.valueTable[k] = null;
      this.size = (-1 + this.size);
      return localObject1;
    }
    return removeStash(paramLong);
  }

  V removeStash(long paramLong)
  {
    long[] arrayOfLong = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    for (int k = i; k < j; k++)
      if (arrayOfLong[k] == paramLong)
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
    long[] arrayOfLong = this.keyTable;
    Object[] arrayOfObject = this.valueTable;
    int j;
    for (int i = arrayOfLong.length; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        long l2 = arrayOfLong[j];
        if (l2 != 0L)
        {
          localStringBuilder.append(l2);
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
            long l1 = arrayOfLong[k];
            if (l1 != 0L)
            {
              localStringBuilder.append(", ");
              localStringBuilder.append(l1);
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

  public LongMap.Values<V> values()
  {
    if (this.values == null)
      this.values = new LongMap.Values(this);
    while (true)
    {
      return this.values;
      this.values.reset();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.LongMap
 * JD-Core Version:    0.6.2
 */
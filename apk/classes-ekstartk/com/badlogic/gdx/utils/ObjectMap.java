package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Iterator;

public class ObjectMap<K, V>
{
  private static final int PRIME1 = -1105259343;
  private static final int PRIME2 = -1262997959;
  private static final int PRIME3 = -825114047;
  int capacity;
  private ObjectMap.Entries entries;
  private int hashShift;
  K[] keyTable;
  private ObjectMap.Keys keys;
  private float loadFactor;
  private int mask;
  private int pushIterations;
  public int size;
  private int stashCapacity;
  int stashSize;
  private int threshold;
  V[] valueTable;
  private ObjectMap.Values values;

  public ObjectMap()
  {
    this(32, 0.8F);
  }

  public ObjectMap(int paramInt)
  {
    this(paramInt, 0.8F);
  }

  public ObjectMap(int paramInt, float paramFloat)
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
    this.valueTable = ((Object[])new Object[this.keyTable.length]);
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

  private V getStash(K paramK)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    while (i < j)
    {
      if (paramK.equals(arrayOfObject[i]))
        return this.valueTable[i];
      i++;
    }
    return null;
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

  private void push(K paramK1, V paramV, int paramInt1, K paramK2, int paramInt2, K paramK3, int paramInt3, K paramK4)
  {
    Object[] arrayOfObject1 = this.keyTable;
    Object[] arrayOfObject2 = this.valueTable;
    int i = this.mask;
    int j = 0;
    int k = this.pushIterations;
    label263: label329: 
    do
    {
      int m;
      switch (MathUtils.random(2))
      {
      default:
        Object localObject3 = arrayOfObject2[paramInt3];
        arrayOfObject1[paramInt3] = paramK1;
        arrayOfObject2[paramInt3] = paramV;
        paramV = localObject3;
        paramK1 = paramK4;
        m = paramK1.hashCode();
        paramInt1 = m & i;
        paramK2 = arrayOfObject1[paramInt1];
        if (paramK2 == null)
        {
          arrayOfObject1[paramInt1] = paramK1;
          arrayOfObject2[paramInt1] = paramV;
          int i2 = this.size;
          this.size = (i2 + 1);
          if (i2 >= this.threshold)
            resize(this.capacity << 1);
        }
        break;
      case 0:
      case 1:
      }
      int n;
      do
      {
        int i1;
        do
        {
          return;
          Object localObject2 = arrayOfObject2[paramInt1];
          arrayOfObject1[paramInt1] = paramK1;
          arrayOfObject2[paramInt1] = paramV;
          paramV = localObject2;
          paramK1 = paramK2;
          break;
          Object localObject1 = arrayOfObject2[paramInt2];
          arrayOfObject1[paramInt2] = paramK1;
          arrayOfObject2[paramInt2] = paramV;
          paramV = localObject1;
          paramK1 = paramK3;
          break;
          paramInt2 = hash2(m);
          paramK3 = arrayOfObject1[paramInt2];
          if (paramK3 != null)
            break label263;
          arrayOfObject1[paramInt2] = paramK1;
          arrayOfObject2[paramInt2] = paramV;
          i1 = this.size;
          this.size = (i1 + 1);
        }
        while (i1 < this.threshold);
        resize(this.capacity << 1);
        return;
        paramInt3 = hash3(m);
        paramK4 = arrayOfObject1[paramInt3];
        if (paramK4 != null)
          break label329;
        arrayOfObject1[paramInt3] = paramK1;
        arrayOfObject2[paramInt3] = paramV;
        n = this.size;
        this.size = (n + 1);
      }
      while (n < this.threshold);
      resize(this.capacity << 1);
      return;
      j++;
    }
    while (j != k);
    putStash(paramK1, paramV);
  }

  private void putResize(K paramK, V paramV)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    Object localObject1 = this.keyTable[j];
    if (localObject1 == null)
    {
      this.keyTable[j] = paramK;
      this.valueTable[j] = paramV;
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
        this.valueTable[k] = paramV;
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
      this.valueTable[m] = paramV;
      n = this.size;
      this.size = (n + 1);
    }
    while (n < this.threshold);
    resize(this.capacity << 1);
    return;
    push(paramK, paramV, j, localObject1, k, localObject2, m, localObject3);
  }

  private void putStash(K paramK, V paramV)
  {
    if (this.stashSize == this.stashCapacity)
    {
      resize(this.capacity << 1);
      put_internal(paramK, paramV);
      return;
    }
    int i = this.capacity + this.stashSize;
    this.keyTable[i] = paramK;
    this.valueTable[i] = paramV;
    this.stashSize = (1 + this.stashSize);
    this.size = (1 + this.size);
  }

  private V put_internal(K paramK, V paramV)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = paramK.hashCode();
    int j = i & this.mask;
    Object localObject1 = arrayOfObject[j];
    if (paramK.equals(localObject1))
    {
      Object localObject7 = this.valueTable[j];
      this.valueTable[j] = paramV;
      return localObject7;
    }
    int k = hash2(i);
    Object localObject2 = arrayOfObject[k];
    if (paramK.equals(localObject2))
    {
      Object localObject6 = this.valueTable[k];
      this.valueTable[k] = paramV;
      return localObject6;
    }
    int m = hash3(i);
    Object localObject3 = arrayOfObject[m];
    if (paramK.equals(localObject3))
    {
      Object localObject5 = this.valueTable[m];
      this.valueTable[m] = paramV;
      return localObject5;
    }
    int n = this.capacity;
    int i1 = n + this.stashSize;
    for (int i2 = n; i2 < i1; i2++)
      if (paramK.equals(arrayOfObject[i2]))
      {
        Object localObject4 = this.valueTable[i2];
        this.valueTable[i2] = paramV;
        return localObject4;
      }
    if (localObject1 == null)
    {
      arrayOfObject[j] = paramK;
      this.valueTable[j] = paramV;
      int i5 = this.size;
      this.size = (i5 + 1);
      if (i5 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (localObject2 == null)
    {
      arrayOfObject[k] = paramK;
      this.valueTable[k] = paramV;
      int i4 = this.size;
      this.size = (i4 + 1);
      if (i4 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    if (localObject3 == null)
    {
      arrayOfObject[m] = paramK;
      this.valueTable[m] = paramV;
      int i3 = this.size;
      this.size = (i3 + 1);
      if (i3 >= this.threshold)
        resize(this.capacity << 1);
      return null;
    }
    push(paramK, paramV, j, localObject1, k, localObject2, m, localObject3);
    return null;
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
    Object[] arrayOfObject1 = this.keyTable;
    Object[] arrayOfObject2 = this.valueTable;
    this.keyTable = ((Object[])new Object[paramInt + this.stashCapacity]);
    this.valueTable = ((Object[])new Object[paramInt + this.stashCapacity]);
    this.size = 0;
    this.stashSize = 0;
    for (int j = 0; j < i; j++)
    {
      Object localObject = arrayOfObject1[j];
      if (localObject != null)
        putResize(localObject, arrayOfObject2[j]);
    }
  }

  public void clear()
  {
    Object[] arrayOfObject1 = this.keyTable;
    Object[] arrayOfObject2 = this.valueTable;
    int j;
    for (int i = this.capacity + this.stashSize; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        break;
      arrayOfObject1[j] = null;
      arrayOfObject2[j] = null;
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

  public boolean containsValue(Object paramObject, boolean paramBoolean)
  {
    Object[] arrayOfObject1 = this.valueTable;
    Object[] arrayOfObject2;
    if (paramObject == null)
      arrayOfObject2 = this.keyTable;
    int i1;
    for (int n = this.capacity + this.stashSize; ; n = i1)
    {
      i1 = n - 1;
      if (n > 0)
      {
        if ((arrayOfObject2[i1] != null) && (arrayOfObject1[i1] == null))
        {
          return true;
          if (paramBoolean)
          {
            int m;
            for (int k = this.capacity + this.stashSize; ; k = m)
            {
              m = k - 1;
              if (k <= 0)
                break label135;
              if (arrayOfObject1[m] == paramObject)
                break;
            }
          }
          int j;
          for (int i = this.capacity + this.stashSize; ; i = j)
          {
            j = i - 1;
            if (i <= 0)
              break label135;
            if (paramObject.equals(arrayOfObject1[j]))
              break;
          }
        }
      }
      else
        label135: return false;
    }
  }

  public void ensureCapacity(int paramInt)
  {
    int i = paramInt + this.size;
    if (i >= this.threshold)
      resize(MathUtils.nextPowerOfTwo((int)(i / this.loadFactor)));
  }

  public ObjectMap.Entries<K, V> entries()
  {
    if (this.entries == null)
      this.entries = new ObjectMap.Entries(this);
    while (true)
    {
      return this.entries;
      this.entries.reset();
    }
  }

  public K findKey(Object paramObject, boolean paramBoolean)
  {
    Object[] arrayOfObject1 = this.valueTable;
    Object[] arrayOfObject2;
    if (paramObject == null)
      arrayOfObject2 = this.keyTable;
    int i1;
    for (int n = this.capacity + this.stashSize; ; n = i1)
    {
      i1 = n - 1;
      if (n > 0)
      {
        if ((arrayOfObject2[i1] == null) || (arrayOfObject1[i1] != null))
          continue;
        return arrayOfObject2[i1];
        if (!paramBoolean);
      }
      int m;
      for (int k = this.capacity + this.stashSize; ; k = m)
      {
        m = k - 1;
        if (k > 0)
        {
          if (arrayOfObject1[m] == paramObject)
            return this.keyTable[m];
        }
        else
        {
          int j;
          for (int i = this.capacity + this.stashSize; ; i = j)
          {
            j = i - 1;
            if (i > 0)
            {
              if (paramObject.equals(arrayOfObject1[j]))
                return this.keyTable[j];
            }
            else
              return null;
          }
        }
      }
    }
  }

  public V get(K paramK)
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
          return getStash(paramK);
      }
    }
    return this.valueTable[j];
  }

  public ObjectMap.Keys<K> keys()
  {
    if (this.keys == null)
      this.keys = new ObjectMap.Keys(this);
    while (true)
    {
      return this.keys;
      this.keys.reset();
    }
  }

  public V put(K paramK, V paramV)
  {
    if (paramK == null)
      throw new IllegalArgumentException("key cannot be null.");
    return put_internal(paramK, paramV);
  }

  public void putAll(ObjectMap<K, V> paramObjectMap)
  {
    Iterator localIterator = paramObjectMap.entries().iterator();
    while (localIterator.hasNext())
    {
      ObjectMap.Entry localEntry = (ObjectMap.Entry)localIterator.next();
      put(localEntry.key, localEntry.value);
    }
  }

  public V remove(K paramK)
  {
    int i = paramK.hashCode();
    int j = i & this.mask;
    if (paramK.equals(this.keyTable[j]))
    {
      this.keyTable[j] = null;
      Object localObject3 = this.valueTable[j];
      this.valueTable[j] = null;
      this.size = (-1 + this.size);
      return localObject3;
    }
    int k = hash2(i);
    if (paramK.equals(this.keyTable[k]))
    {
      this.keyTable[k] = null;
      Object localObject2 = this.valueTable[k];
      this.valueTable[k] = null;
      this.size = (-1 + this.size);
      return localObject2;
    }
    int m = hash3(i);
    if (paramK.equals(this.keyTable[m]))
    {
      this.keyTable[m] = null;
      Object localObject1 = this.valueTable[m];
      this.valueTable[m] = null;
      this.size = (-1 + this.size);
      return localObject1;
    }
    return removeStash(paramK);
  }

  V removeStash(K paramK)
  {
    Object[] arrayOfObject = this.keyTable;
    int i = this.capacity;
    int j = i + this.stashSize;
    for (int k = i; k < j; k++)
      if (paramK.equals(arrayOfObject[k]))
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
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('{');
    Object[] arrayOfObject1 = this.keyTable;
    Object[] arrayOfObject2 = this.valueTable;
    int j;
    for (int i = arrayOfObject1.length; ; i = j)
    {
      j = i - 1;
      if (i > 0)
      {
        Object localObject2 = arrayOfObject1[j];
        if (localObject2 != null)
        {
          localStringBuilder.append(localObject2);
          localStringBuilder.append('=');
          localStringBuilder.append(arrayOfObject2[j]);
        }
      }
      else
      {
        while (true)
        {
          int k = j - 1;
          if (j > 0)
          {
            Object localObject1 = arrayOfObject1[k];
            if (localObject1 != null)
            {
              localStringBuilder.append(", ");
              localStringBuilder.append(localObject1);
              localStringBuilder.append('=');
              localStringBuilder.append(arrayOfObject2[k]);
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

  public ObjectMap.Values<V> values()
  {
    if (this.values == null)
      this.values = new ObjectMap.Values(this);
    while (true)
    {
      return this.values;
      this.values.reset();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectMap
 * JD-Core Version:    0.6.2
 */
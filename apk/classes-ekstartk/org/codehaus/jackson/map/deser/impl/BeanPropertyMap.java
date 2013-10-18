package org.codehaus.jackson.map.deser.impl;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public final class BeanPropertyMap
{
  private final BeanPropertyMap.Bucket[] _buckets;
  private final int _hashMask;
  private final int _size;

  public BeanPropertyMap(Collection<SettableBeanProperty> paramCollection)
  {
    this._size = paramCollection.size();
    int i = findSize(this._size);
    this._hashMask = (i - 1);
    BeanPropertyMap.Bucket[] arrayOfBucket = new BeanPropertyMap.Bucket[i];
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)localIterator.next();
      String str = localSettableBeanProperty.getName();
      int j = str.hashCode() & this._hashMask;
      arrayOfBucket[j] = new BeanPropertyMap.Bucket(arrayOfBucket[j], str, localSettableBeanProperty);
    }
    this._buckets = arrayOfBucket;
  }

  private SettableBeanProperty _findWithEquals(String paramString, int paramInt)
  {
    for (BeanPropertyMap.Bucket localBucket = this._buckets[paramInt]; localBucket != null; localBucket = localBucket.next)
      if (paramString.equals(localBucket.key))
        return localBucket.value;
    return null;
  }

  private static final int findSize(int paramInt)
  {
    if (paramInt <= 32);
    int j;
    for (int i = paramInt + paramInt; ; i = paramInt + (paramInt >> 2))
    {
      j = 2;
      while (j < i)
        j += j;
    }
    return j;
  }

  public final Iterator<SettableBeanProperty> allProperties()
  {
    return new BeanPropertyMap.IteratorImpl(this._buckets);
  }

  public final void assignIndexes()
  {
    BeanPropertyMap.Bucket[] arrayOfBucket = this._buckets;
    int i = arrayOfBucket.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      BeanPropertyMap.Bucket localBucket = arrayOfBucket[j];
      while (localBucket != null)
      {
        SettableBeanProperty localSettableBeanProperty = localBucket.value;
        int m = k + 1;
        localSettableBeanProperty.assignIndex(k);
        localBucket = localBucket.next;
        k = m;
      }
      j++;
    }
  }

  public final SettableBeanProperty find(String paramString)
  {
    int i = paramString.hashCode() & this._hashMask;
    BeanPropertyMap.Bucket localBucket = this._buckets[i];
    if (localBucket == null)
      return null;
    if (localBucket.key == paramString)
      return localBucket.value;
    do
    {
      localBucket = localBucket.next;
      if (localBucket == null)
        break;
    }
    while (localBucket.key != paramString);
    return localBucket.value;
    return _findWithEquals(paramString, i);
  }

  public final void remove(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = paramSettableBeanProperty.getName();
    int i = str.hashCode() & -1 + this._buckets.length;
    BeanPropertyMap.Bucket localBucket1 = this._buckets[i];
    int j = 0;
    BeanPropertyMap.Bucket localBucket2 = null;
    if (localBucket1 != null)
    {
      if ((j == 0) && (localBucket1.key.equals(str)))
        j = 1;
      while (true)
      {
        localBucket1 = localBucket1.next;
        break;
        localBucket2 = new BeanPropertyMap.Bucket(localBucket2, localBucket1.key, localBucket1.value);
      }
    }
    if (j == 0)
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't remove");
    this._buckets[i] = localBucket2;
  }

  public final void replace(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = paramSettableBeanProperty.getName();
    int i = str.hashCode() & -1 + this._buckets.length;
    BeanPropertyMap.Bucket localBucket1 = this._buckets[i];
    int j = 0;
    BeanPropertyMap.Bucket localBucket2 = null;
    if (localBucket1 != null)
    {
      if ((j == 0) && (localBucket1.key.equals(str)))
        j = 1;
      while (true)
      {
        localBucket1 = localBucket1.next;
        break;
        localBucket2 = new BeanPropertyMap.Bucket(localBucket2, localBucket1.key, localBucket1.value);
      }
    }
    if (j == 0)
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't replace");
    this._buckets[i] = new BeanPropertyMap.Bucket(localBucket2, str, paramSettableBeanProperty);
  }

  public final int size()
  {
    return this._size;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.BeanPropertyMap
 * JD-Core Version:    0.6.2
 */
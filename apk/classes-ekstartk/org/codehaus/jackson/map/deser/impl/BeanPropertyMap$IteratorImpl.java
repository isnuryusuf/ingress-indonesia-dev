package org.codehaus.jackson.map.deser.impl;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class BeanPropertyMap$IteratorImpl
  implements Iterator<SettableBeanProperty>
{
  private final BeanPropertyMap.Bucket[] _buckets;
  private BeanPropertyMap.Bucket _currentBucket;
  private int _nextBucketIndex;

  public BeanPropertyMap$IteratorImpl(BeanPropertyMap.Bucket[] paramArrayOfBucket)
  {
    this._buckets = paramArrayOfBucket;
    int i = 0;
    int j = this._buckets.length;
    int k;
    if (i < j)
    {
      BeanPropertyMap.Bucket[] arrayOfBucket = this._buckets;
      k = i + 1;
      BeanPropertyMap.Bucket localBucket = arrayOfBucket[i];
      if (localBucket != null)
        this._currentBucket = localBucket;
    }
    while (true)
    {
      this._nextBucketIndex = k;
      return;
      i = k;
      break;
      k = i;
    }
  }

  public final boolean hasNext()
  {
    return this._currentBucket != null;
  }

  public final SettableBeanProperty next()
  {
    BeanPropertyMap.Bucket localBucket1 = this._currentBucket;
    if (localBucket1 == null)
      throw new NoSuchElementException();
    BeanPropertyMap.Bucket[] arrayOfBucket;
    int i;
    for (BeanPropertyMap.Bucket localBucket2 = localBucket1.next; (localBucket2 == null) && (this._nextBucketIndex < this._buckets.length); localBucket2 = arrayOfBucket[i])
    {
      arrayOfBucket = this._buckets;
      i = this._nextBucketIndex;
      this._nextBucketIndex = (i + 1);
    }
    this._currentBucket = localBucket2;
    return localBucket1.value;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.BeanPropertyMap.IteratorImpl
 * JD-Core Version:    0.6.2
 */
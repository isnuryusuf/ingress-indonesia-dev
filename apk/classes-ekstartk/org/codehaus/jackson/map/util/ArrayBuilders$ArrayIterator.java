package org.codehaus.jackson.map.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ArrayBuilders$ArrayIterator<T>
  implements Iterable<T>, Iterator<T>
{
  private final T[] _array;
  private int _index;

  public ArrayBuilders$ArrayIterator(T[] paramArrayOfT)
  {
    this._array = paramArrayOfT;
    this._index = 0;
  }

  public final boolean hasNext()
  {
    return this._index < this._array.length;
  }

  public final Iterator<T> iterator()
  {
    return this;
  }

  public final T next()
  {
    if (this._index >= this._array.length)
      throw new NoSuchElementException();
    Object[] arrayOfObject = this._array;
    int i = this._index;
    this._index = (i + 1);
    return arrayOfObject[i];
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ArrayBuilders.ArrayIterator
 * JD-Core Version:    0.6.2
 */
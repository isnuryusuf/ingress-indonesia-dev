package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class Array$ArrayIterator<T>
  implements Iterator<T>
{
  private final Array<T> array;
  int index;

  public Array$ArrayIterator(Array<T> paramArray)
  {
    this.array = paramArray;
  }

  public boolean hasNext()
  {
    return this.index < this.array.size;
  }

  public T next()
  {
    if (this.index >= this.array.size)
      throw new NoSuchElementException(String.valueOf(this.index));
    Object[] arrayOfObject = this.array.items;
    int i = this.index;
    this.index = (i + 1);
    return arrayOfObject[i];
  }

  public void remove()
  {
    this.index = (-1 + this.index);
    this.array.removeIndex(this.index);
  }

  public void reset()
  {
    this.index = 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Array.ArrayIterator
 * JD-Core Version:    0.6.2
 */
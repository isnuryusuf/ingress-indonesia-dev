package com.badlogic.gdx.utils;

import java.util.Iterator;

public class Array$ArrayIterable<T>
  implements Iterable<T>
{
  private Array.ArrayIterator<T> iterator;

  public Array$ArrayIterable(Array<T> paramArray)
  {
    this.iterator = new Array.ArrayIterator(paramArray);
  }

  public Iterator<T> iterator()
  {
    this.iterator.reset();
    return this.iterator;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Array.ArrayIterable
 * JD-Core Version:    0.6.2
 */
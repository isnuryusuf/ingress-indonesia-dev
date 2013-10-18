package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayMap$Values<V>
  implements Iterable<V>, Iterator<V>
{
  int index;
  private final ArrayMap<Object, V> map;

  public ArrayMap$Values(ArrayMap<Object, V> paramArrayMap)
  {
    this.map = paramArrayMap;
  }

  public boolean hasNext()
  {
    return this.index < this.map.size;
  }

  public Iterator<V> iterator()
  {
    return this;
  }

  public V next()
  {
    if (this.index >= this.map.size)
      throw new NoSuchElementException(String.valueOf(this.index));
    Object[] arrayOfObject = this.map.values;
    int i = this.index;
    this.index = (i + 1);
    return arrayOfObject[i];
  }

  public void remove()
  {
    this.index = (-1 + this.index);
    this.map.removeIndex(this.index);
  }

  public void reset()
  {
    this.index = 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ArrayMap.Values
 * JD-Core Version:    0.6.2
 */
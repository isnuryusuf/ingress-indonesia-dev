package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayMap$Keys<K>
  implements Iterable<K>, Iterator<K>
{
  int index;
  private final ArrayMap<K, Object> map;

  public ArrayMap$Keys(ArrayMap<K, Object> paramArrayMap)
  {
    this.map = paramArrayMap;
  }

  public boolean hasNext()
  {
    return this.index < this.map.size;
  }

  public Iterator<K> iterator()
  {
    return this;
  }

  public K next()
  {
    if (this.index >= this.map.size)
      throw new NoSuchElementException(String.valueOf(this.index));
    Object[] arrayOfObject = this.map.keys;
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
 * Qualified Name:     com.badlogic.gdx.utils.ArrayMap.Keys
 * JD-Core Version:    0.6.2
 */
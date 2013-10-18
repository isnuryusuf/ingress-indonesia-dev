package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayMap$Entries<K, V>
  implements Iterable<ObjectMap.Entry<K, V>>, Iterator<ObjectMap.Entry<K, V>>
{
  ObjectMap.Entry<K, V> entry = new ObjectMap.Entry();
  int index;
  private final ArrayMap<K, V> map;

  public ArrayMap$Entries(ArrayMap<K, V> paramArrayMap)
  {
    this.map = paramArrayMap;
  }

  public boolean hasNext()
  {
    return this.index < this.map.size;
  }

  public Iterator<ObjectMap.Entry<K, V>> iterator()
  {
    return this;
  }

  public ObjectMap.Entry<K, V> next()
  {
    if (this.index >= this.map.size)
      throw new NoSuchElementException(String.valueOf(this.index));
    this.entry.key = this.map.keys[this.index];
    ObjectMap.Entry localEntry = this.entry;
    Object[] arrayOfObject = this.map.values;
    int i = this.index;
    this.index = (i + 1);
    localEntry.value = arrayOfObject[i];
    return this.entry;
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
 * Qualified Name:     com.badlogic.gdx.utils.ArrayMap.Entries
 * JD-Core Version:    0.6.2
 */
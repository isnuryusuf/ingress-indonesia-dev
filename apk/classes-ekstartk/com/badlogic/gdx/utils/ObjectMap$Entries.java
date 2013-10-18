package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ObjectMap$Entries<K, V> extends ObjectMap.MapIterator<K, V>
  implements Iterable<ObjectMap.Entry<K, V>>, Iterator<ObjectMap.Entry<K, V>>
{
  ObjectMap.Entry<K, V> entry = new ObjectMap.Entry();

  public ObjectMap$Entries(ObjectMap<K, V> paramObjectMap)
  {
    super(paramObjectMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<ObjectMap.Entry<K, V>> iterator()
  {
    return this;
  }

  public ObjectMap.Entry<K, V> next()
  {
    if (!this.hasNext)
      throw new NoSuchElementException();
    Object[] arrayOfObject = this.map.keyTable;
    this.entry.key = arrayOfObject[this.nextIndex];
    this.entry.value = this.map.valueTable[this.nextIndex];
    this.currentIndex = this.nextIndex;
    advance();
    return this.entry;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectMap.Entries
 * JD-Core Version:    0.6.2
 */
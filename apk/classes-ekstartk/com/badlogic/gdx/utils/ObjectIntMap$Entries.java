package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ObjectIntMap$Entries<K> extends ObjectIntMap.MapIterator<K>
  implements Iterable<ObjectIntMap.Entry<K>>, Iterator<ObjectIntMap.Entry<K>>
{
  private ObjectIntMap.Entry<K> entry = new ObjectIntMap.Entry();

  public ObjectIntMap$Entries(ObjectIntMap<K> paramObjectIntMap)
  {
    super(paramObjectIntMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<ObjectIntMap.Entry<K>> iterator()
  {
    return this;
  }

  public ObjectIntMap.Entry<K> next()
  {
    if (!this.hasNext)
      throw new NoSuchElementException();
    Object[] arrayOfObject = this.map.keyTable;
    this.entry.key = arrayOfObject[this.nextIndex];
    this.entry.value = this.map.valueTable[this.nextIndex];
    this.currentIndex = this.nextIndex;
    findNextIndex();
    return this.entry;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectIntMap.Entries
 * JD-Core Version:    0.6.2
 */
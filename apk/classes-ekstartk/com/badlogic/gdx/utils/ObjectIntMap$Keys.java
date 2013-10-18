package com.badlogic.gdx.utils;

import java.util.Iterator;

public class ObjectIntMap$Keys<K> extends ObjectIntMap.MapIterator<K>
  implements Iterable<K>, Iterator<K>
{
  public ObjectIntMap$Keys(ObjectIntMap<K> paramObjectIntMap)
  {
    super(paramObjectIntMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<K> iterator()
  {
    return this;
  }

  public K next()
  {
    Object localObject = this.map.keyTable[this.nextIndex];
    this.currentIndex = this.nextIndex;
    findNextIndex();
    return localObject;
  }

  public Array<K> toArray()
  {
    Array localArray = new Array(true, this.map.size);
    while (this.hasNext)
      localArray.add(next());
    return localArray;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectIntMap.Keys
 * JD-Core Version:    0.6.2
 */
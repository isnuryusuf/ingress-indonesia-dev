package com.badlogic.gdx.utils;

import java.util.Iterator;

public class IdentityMap$Keys<K> extends IdentityMap.MapIterator<K, Object>
  implements Iterable<K>, Iterator<K>
{
  public IdentityMap$Keys(IdentityMap<K, ?> paramIdentityMap)
  {
    super(paramIdentityMap);
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
 * Qualified Name:     com.badlogic.gdx.utils.IdentityMap.Keys
 * JD-Core Version:    0.6.2
 */
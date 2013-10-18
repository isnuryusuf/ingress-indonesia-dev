package com.badlogic.gdx.utils;

import java.util.Iterator;

public class IdentityMap$Values<V> extends IdentityMap.MapIterator<Object, V>
  implements Iterable<V>, Iterator<V>
{
  public IdentityMap$Values(IdentityMap<?, V> paramIdentityMap)
  {
    super(paramIdentityMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<V> iterator()
  {
    return this;
  }

  public V next()
  {
    Object localObject = this.map.valueTable[this.nextIndex];
    this.currentIndex = this.nextIndex;
    findNextIndex();
    return localObject;
  }

  public Array<V> toArray()
  {
    Array localArray = new Array(true, this.map.size);
    while (this.hasNext)
      localArray.add(next());
    return localArray;
  }

  public void toArray(Array<V> paramArray)
  {
    while (this.hasNext)
      paramArray.add(next());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IdentityMap.Values
 * JD-Core Version:    0.6.2
 */
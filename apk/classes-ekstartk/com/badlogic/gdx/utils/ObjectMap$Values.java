package com.badlogic.gdx.utils;

import java.util.Iterator;

public class ObjectMap$Values<V> extends ObjectMap.MapIterator<Object, V>
  implements Iterable<V>, Iterator<V>
{
  public ObjectMap$Values(ObjectMap<?, V> paramObjectMap)
  {
    super(paramObjectMap);
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
    advance();
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
 * Qualified Name:     com.badlogic.gdx.utils.ObjectMap.Values
 * JD-Core Version:    0.6.2
 */
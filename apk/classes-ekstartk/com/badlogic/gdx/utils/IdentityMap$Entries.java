package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class IdentityMap$Entries<K, V> extends IdentityMap.MapIterator<K, V>
  implements Iterable<IdentityMap.Entry<K, V>>, Iterator<IdentityMap.Entry<K, V>>
{
  private IdentityMap.Entry<K, V> entry = new IdentityMap.Entry();

  public IdentityMap$Entries(IdentityMap<K, V> paramIdentityMap)
  {
    super(paramIdentityMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<IdentityMap.Entry<K, V>> iterator()
  {
    return this;
  }

  public IdentityMap.Entry<K, V> next()
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
 * Qualified Name:     com.badlogic.gdx.utils.IdentityMap.Entries
 * JD-Core Version:    0.6.2
 */
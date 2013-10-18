package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class IntMap$Entries<V> extends IntMap.MapIterator<V>
  implements Iterable<IntMap.Entry<V>>, Iterator<IntMap.Entry<V>>
{
  private IntMap.Entry<V> entry = new IntMap.Entry();

  public IntMap$Entries(IntMap paramIntMap)
  {
    super(paramIntMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<IntMap.Entry<V>> iterator()
  {
    return this;
  }

  public IntMap.Entry<V> next()
  {
    if (!this.hasNext)
      throw new NoSuchElementException();
    int[] arrayOfInt = this.map.keyTable;
    if (this.nextIndex == -1)
      this.entry.key = 0;
    for (this.entry.value = this.map.zeroValue; ; this.entry.value = this.map.valueTable[this.nextIndex])
    {
      this.currentIndex = this.nextIndex;
      findNextIndex();
      return this.entry;
      this.entry.key = arrayOfInt[this.nextIndex];
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IntMap.Entries
 * JD-Core Version:    0.6.2
 */
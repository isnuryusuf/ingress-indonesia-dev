package com.badlogic.gdx.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class LongMap$Entries<V> extends LongMap.MapIterator<V>
  implements Iterable<LongMap.Entry<V>>, Iterator<LongMap.Entry<V>>
{
  private LongMap.Entry<V> entry = new LongMap.Entry();

  public LongMap$Entries(LongMap paramLongMap)
  {
    super(paramLongMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Iterator<LongMap.Entry<V>> iterator()
  {
    return this;
  }

  public LongMap.Entry<V> next()
  {
    if (!this.hasNext)
      throw new NoSuchElementException();
    long[] arrayOfLong = this.map.keyTable;
    if (this.nextIndex == -1)
      this.entry.key = 0L;
    for (this.entry.value = this.map.zeroValue; ; this.entry.value = this.map.valueTable[this.nextIndex])
    {
      this.currentIndex = this.nextIndex;
      findNextIndex();
      return this.entry;
      this.entry.key = arrayOfLong[this.nextIndex];
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.LongMap.Entries
 * JD-Core Version:    0.6.2
 */
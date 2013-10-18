package com.badlogic.gdx.utils;

public class LongMap$Keys extends LongMap.MapIterator
{
  public LongMap$Keys(LongMap paramLongMap)
  {
    super(paramLongMap);
  }

  public long next()
  {
    if (this.nextIndex == -1);
    for (long l = 0L; ; l = this.map.keyTable[this.nextIndex])
    {
      this.currentIndex = this.nextIndex;
      findNextIndex();
      return l;
    }
  }

  public LongArray toArray()
  {
    LongArray localLongArray = new LongArray(true, this.map.size);
    while (this.hasNext)
      localLongArray.add(next());
    return localLongArray;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.LongMap.Keys
 * JD-Core Version:    0.6.2
 */
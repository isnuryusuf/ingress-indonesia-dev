package com.badlogic.gdx.utils;

public class IntMap$Keys extends IntMap.MapIterator
{
  public IntMap$Keys(IntMap paramIntMap)
  {
    super(paramIntMap);
  }

  public int next()
  {
    if (this.nextIndex == -1);
    for (int i = 0; ; i = this.map.keyTable[this.nextIndex])
    {
      this.currentIndex = this.nextIndex;
      findNextIndex();
      return i;
    }
  }

  public IntArray toArray()
  {
    IntArray localIntArray = new IntArray(true, this.map.size);
    while (this.hasNext)
      localIntArray.add(next());
    return localIntArray;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IntMap.Keys
 * JD-Core Version:    0.6.2
 */
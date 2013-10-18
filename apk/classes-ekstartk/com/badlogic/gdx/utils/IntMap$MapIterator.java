package com.badlogic.gdx.utils;

class IntMap$MapIterator<V>
{
  static final int INDEX_ILLEGAL = -2;
  static final int INDEX_ZERO = -1;
  int currentIndex;
  public boolean hasNext;
  final IntMap<V> map;
  int nextIndex;

  public IntMap$MapIterator(IntMap<V> paramIntMap)
  {
    this.map = paramIntMap;
    reset();
  }

  void findNextIndex()
  {
    this.hasNext = false;
    int[] arrayOfInt = this.map.keyTable;
    int i = this.map.capacity + this.map.stashSize;
    do
    {
      int j = 1 + this.nextIndex;
      this.nextIndex = j;
      if (j >= i)
        break;
    }
    while (arrayOfInt[this.nextIndex] == 0);
    this.hasNext = true;
  }

  public void remove()
  {
    if ((this.currentIndex == -1) && (this.map.hasZeroValue))
    {
      this.map.zeroValue = null;
      this.map.hasZeroValue = false;
    }
    while (true)
    {
      this.currentIndex = -2;
      IntMap localIntMap = this.map;
      localIntMap.size = (-1 + localIntMap.size);
      return;
      if (this.currentIndex < 0)
        throw new IllegalStateException("next must be called before remove.");
      if (this.currentIndex >= this.map.capacity)
      {
        this.map.removeStashIndex(this.currentIndex);
      }
      else
      {
        this.map.keyTable[this.currentIndex] = 0;
        this.map.valueTable[this.currentIndex] = null;
      }
    }
  }

  public void reset()
  {
    this.currentIndex = -2;
    this.nextIndex = -1;
    if (this.map.hasZeroValue)
    {
      this.hasNext = true;
      return;
    }
    findNextIndex();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IntMap.MapIterator
 * JD-Core Version:    0.6.2
 */
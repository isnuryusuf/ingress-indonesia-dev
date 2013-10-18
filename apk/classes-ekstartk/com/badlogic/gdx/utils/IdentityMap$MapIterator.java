package com.badlogic.gdx.utils;

class IdentityMap$MapIterator<K, V>
{
  int currentIndex;
  public boolean hasNext;
  final IdentityMap<K, V> map;
  int nextIndex;

  public IdentityMap$MapIterator(IdentityMap<K, V> paramIdentityMap)
  {
    this.map = paramIdentityMap;
    reset();
  }

  void findNextIndex()
  {
    this.hasNext = false;
    Object[] arrayOfObject = this.map.keyTable;
    int i = this.map.capacity + this.map.stashSize;
    do
    {
      int j = 1 + this.nextIndex;
      this.nextIndex = j;
      if (j >= i)
        break;
    }
    while (arrayOfObject[this.nextIndex] == null);
    this.hasNext = true;
  }

  public void remove()
  {
    if (this.currentIndex < 0)
      throw new IllegalStateException("next must be called before remove.");
    if (this.currentIndex >= this.map.capacity)
      this.map.removeStashIndex(this.currentIndex);
    while (true)
    {
      this.currentIndex = -1;
      IdentityMap localIdentityMap = this.map;
      localIdentityMap.size = (-1 + localIdentityMap.size);
      return;
      this.map.keyTable[this.currentIndex] = null;
      this.map.valueTable[this.currentIndex] = null;
    }
  }

  public void reset()
  {
    this.currentIndex = -1;
    this.nextIndex = -1;
    findNextIndex();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.IdentityMap.MapIterator
 * JD-Core Version:    0.6.2
 */
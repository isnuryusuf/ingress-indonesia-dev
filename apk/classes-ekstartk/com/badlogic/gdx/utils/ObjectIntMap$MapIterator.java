package com.badlogic.gdx.utils;

class ObjectIntMap$MapIterator<K>
{
  int currentIndex;
  public boolean hasNext;
  final ObjectIntMap<K> map;
  int nextIndex;

  public ObjectIntMap$MapIterator(ObjectIntMap<K> paramObjectIntMap)
  {
    this.map = paramObjectIntMap;
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
      ObjectIntMap localObjectIntMap = this.map;
      localObjectIntMap.size = (-1 + localObjectIntMap.size);
      return;
      this.map.keyTable[this.currentIndex] = null;
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
 * Qualified Name:     com.badlogic.gdx.utils.ObjectIntMap.MapIterator
 * JD-Core Version:    0.6.2
 */
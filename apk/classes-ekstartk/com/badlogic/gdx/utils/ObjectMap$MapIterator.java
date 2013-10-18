package com.badlogic.gdx.utils;

class ObjectMap$MapIterator<K, V>
{
  int currentIndex;
  public boolean hasNext;
  final ObjectMap<K, V> map;
  int nextIndex;

  public ObjectMap$MapIterator(ObjectMap<K, V> paramObjectMap)
  {
    this.map = paramObjectMap;
    reset();
  }

  void advance()
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
      ObjectMap localObjectMap = this.map;
      localObjectMap.size = (-1 + localObjectMap.size);
      return;
      this.map.keyTable[this.currentIndex] = null;
      this.map.valueTable[this.currentIndex] = null;
    }
  }

  public void reset()
  {
    this.currentIndex = -1;
    this.nextIndex = -1;
    advance();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ObjectMap.MapIterator
 * JD-Core Version:    0.6.2
 */
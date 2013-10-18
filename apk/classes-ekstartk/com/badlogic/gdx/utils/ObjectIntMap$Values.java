package com.badlogic.gdx.utils;

public class ObjectIntMap$Values extends ObjectIntMap.MapIterator<Object>
{
  public ObjectIntMap$Values(ObjectIntMap<?> paramObjectIntMap)
  {
    super(paramObjectIntMap);
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public int next()
  {
    int i = this.map.valueTable[this.nextIndex];
    this.currentIndex = this.nextIndex;
    findNextIndex();
    return i;
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
 * Qualified Name:     com.badlogic.gdx.utils.ObjectIntMap.Values
 * JD-Core Version:    0.6.2
 */
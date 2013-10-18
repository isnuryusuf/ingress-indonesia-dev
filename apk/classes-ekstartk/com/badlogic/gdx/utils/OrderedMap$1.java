package com.badlogic.gdx.utils;

class OrderedMap$1 extends ObjectMap.Entries
{
  OrderedMap$1(OrderedMap paramOrderedMap, ObjectMap paramObjectMap)
  {
    super(paramObjectMap);
  }

  void advance()
  {
    this.nextIndex = (1 + this.nextIndex);
    if (this.nextIndex < this.map.size);
    for (boolean bool = true; ; bool = false)
    {
      this.hasNext = bool;
      return;
    }
  }

  public ObjectMap.Entry next()
  {
    this.entry.key = this.this$0.keys.get(this.nextIndex);
    this.entry.value = this.map.get(this.entry.key);
    advance();
    return this.entry;
  }

  public void remove()
  {
    this.map.remove(this.entry.key);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.OrderedMap.1
 * JD-Core Version:    0.6.2
 */
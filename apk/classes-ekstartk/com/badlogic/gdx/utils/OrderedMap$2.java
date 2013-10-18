package com.badlogic.gdx.utils;

class OrderedMap$2 extends ObjectMap.Keys
{
  OrderedMap$2(OrderedMap paramOrderedMap, ObjectMap paramObjectMap)
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

  public K next()
  {
    Object localObject = this.this$0.keys.get(this.nextIndex);
    advance();
    return localObject;
  }

  public void remove()
  {
    this.map.remove(this.this$0.keys.get(-1 + this.nextIndex));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.OrderedMap.2
 * JD-Core Version:    0.6.2
 */
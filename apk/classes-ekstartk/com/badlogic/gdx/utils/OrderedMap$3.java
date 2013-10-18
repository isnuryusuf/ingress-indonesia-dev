package com.badlogic.gdx.utils;

class OrderedMap$3 extends ObjectMap.Values
{
  OrderedMap$3(OrderedMap paramOrderedMap, ObjectMap paramObjectMap)
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

  public V next()
  {
    Object localObject = this.map.get(this.this$0.keys.get(this.nextIndex));
    advance();
    return localObject;
  }

  public void remove()
  {
    this.map.remove(this.this$0.keys.get(-1 + this.nextIndex));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.OrderedMap.3
 * JD-Core Version:    0.6.2
 */
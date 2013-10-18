package com.badlogic.gdx.utils;

public class OrderedMap<K, V> extends ObjectMap<K, V>
{
  final Array<K> keys;

  public OrderedMap()
  {
    this.keys = new Array();
  }

  public OrderedMap(int paramInt)
  {
    super(paramInt);
    this.keys = new Array(paramInt);
  }

  public OrderedMap(int paramInt, float paramFloat)
  {
    super(paramInt, paramFloat);
    this.keys = new Array(paramInt);
  }

  public void clear()
  {
    this.keys.clear();
    super.clear();
  }

  public ObjectMap.Entries<K, V> entries()
  {
    return new OrderedMap.1(this, this);
  }

  public ObjectMap.Keys<K> keys()
  {
    return new OrderedMap.2(this, this);
  }

  public Array<K> orderedKeys()
  {
    return this.keys;
  }

  public V put(K paramK, V paramV)
  {
    if (!containsKey(paramK))
      this.keys.add(paramK);
    return super.put(paramK, paramV);
  }

  public V remove(K paramK)
  {
    this.keys.removeValue(paramK, false);
    return super.remove(paramK);
  }

  public String toString()
  {
    if (this.size == 0)
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('{');
    Array localArray = this.keys;
    int i = 0;
    int j = localArray.size;
    while (i < j)
    {
      Object localObject = localArray.get(i);
      if (i > 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(localObject);
      localStringBuilder.append('=');
      localStringBuilder.append(get(localObject));
      i++;
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }

  public ObjectMap.Values<V> values()
  {
    return new OrderedMap.3(this, this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.OrderedMap
 * JD-Core Version:    0.6.2
 */
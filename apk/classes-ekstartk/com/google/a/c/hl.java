package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class hl<K, V> extends jh<K>
{
  final Map<K, V> c;

  hl(Map<K, V> paramMap)
  {
    this.c = ((Map)an.a(paramMap));
  }

  public void clear()
  {
    this.c.clear();
  }

  public boolean contains(Object paramObject)
  {
    return this.c.containsKey(paramObject);
  }

  public boolean isEmpty()
  {
    return this.c.isEmpty();
  }

  public Iterator<K> iterator()
  {
    return hc.a(this.c.entrySet().iterator());
  }

  public boolean remove(Object paramObject)
  {
    if (contains(paramObject))
    {
      this.c.remove(paramObject);
      return true;
    }
    return false;
  }

  public int size()
  {
    return this.c.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hl
 * JD-Core Version:    0.6.2
 */
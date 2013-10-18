package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ex<K, V> extends bp<K, V>
{
  final er<? super K, ? super V> a;
  private final Map<K, V> b;
  private transient Set<Map.Entry<K, V>> c;

  ex(Map<K, V> paramMap, er<? super K, ? super V> paramer)
  {
    this.b = ((Map)an.a(paramMap));
    this.a = ((er)an.a(paramer));
  }

  protected final Map<K, V> a()
  {
    return this.b;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Object localObject = this.c;
    if (localObject == null)
    {
      localObject = new ew(this.b.entrySet(), this.a);
      this.c = ((Set)localObject);
    }
    return localObject;
  }

  public V put(K paramK, V paramV)
  {
    this.a.a(paramK, paramV);
    return this.b.put(paramK, paramV);
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    Map localMap = this.b;
    er localer = this.a;
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(paramMap);
    Iterator localIterator = localLinkedHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localer.a(localEntry.getKey(), localEntry.getValue());
    }
    localMap.putAll(localLinkedHashMap);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ex
 * JD-Core Version:    0.6.2
 */
package com.google.a.b;

import com.google.a.a.x;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentMap;

final class ag extends o<K, V>.r<Map.Entry<K, V>>
{
  ag(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    super(paramConcurrentMap, localConcurrentMap);
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    Map.Entry localEntry;
    Object localObject2;
    do
    {
      Object localObject1;
      do
      {
        return false;
        localEntry = (Map.Entry)paramObject;
        localObject1 = localEntry.getKey();
      }
      while (localObject1 == null);
      localObject2 = this.c.get(localObject1);
    }
    while ((localObject2 == null) || (!this.c.h.a(localEntry.getValue(), localObject2)));
    return true;
  }

  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new af(this.c);
  }

  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    Map.Entry localEntry;
    Object localObject;
    do
    {
      return false;
      localEntry = (Map.Entry)paramObject;
      localObject = localEntry.getKey();
    }
    while ((localObject == null) || (!this.c.remove(localObject, localEntry.getValue())));
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ag
 * JD-Core Version:    0.6.2
 */
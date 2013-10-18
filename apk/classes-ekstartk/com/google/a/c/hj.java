package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class hj<K, V> extends jh<Map.Entry<K, V>>
{
  abstract Map<K, V> a();

  public void clear()
  {
    a().clear();
  }

  public boolean contains(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject1 = localEntry.getKey();
      Object localObject2 = a().get(localObject1);
      boolean bool3 = ag.a(localObject2, localEntry.getValue());
      bool2 = false;
      if (bool3)
        if (localObject2 == null)
        {
          boolean bool4 = a().containsKey(localObject1);
          bool2 = false;
          if (!bool4);
        }
        else
        {
          bool2 = true;
        }
    }
    return bool2;
  }

  public boolean isEmpty()
  {
    return a().isEmpty();
  }

  public boolean remove(Object paramObject)
  {
    if (contains(paramObject))
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      return a().keySet().remove(localEntry.getKey());
    }
    return false;
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool1;
    Iterator localIterator;
    try
    {
      boolean bool2 = super.removeAll((Collection)an.a(paramCollection));
      bool1 = bool2;
      return bool1;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      bool1 = true;
      localIterator = paramCollection.iterator();
    }
    while (localIterator.hasNext())
      bool1 |= remove(localIterator.next());
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = super.retainAll((Collection)an.a(paramCollection));
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      HashSet localHashSet = jc.a(paramCollection.size());
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        if (contains(localObject))
          localHashSet.add(((Map.Entry)localObject).getKey());
      }
      return a().keySet().retainAll(localHashSet);
    }
  }

  public int size()
  {
    return a().size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hj
 * JD-Core Version:    0.6.2
 */
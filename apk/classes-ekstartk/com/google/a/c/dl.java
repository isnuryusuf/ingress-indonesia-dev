package com.google.a.c;

import java.util.Map.Entry;

abstract class dl<K, V> extends du<Map.Entry<K, V>>
{
  abstract dh<K, V> a_();

  public boolean contains(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject = a_().get(localEntry.getKey());
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localObject.equals(localEntry.getValue());
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  final boolean e()
  {
    return a_().b();
  }

  public int size()
  {
    return a_().size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dl
 * JD-Core Version:    0.6.2
 */
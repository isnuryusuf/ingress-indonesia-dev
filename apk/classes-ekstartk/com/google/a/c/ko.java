package com.google.a.c;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ko extends kh<R, C, V>.kq<Map.Entry<R, Map<C, V>>>
{
  ko(kn paramkn)
  {
    super(paramkn.a, (byte)0);
  }

  public final boolean contains(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject = localEntry.getKey();
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localEntry.getValue() instanceof Map;
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = as.a(this.a.a.a.entrySet(), localEntry);
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
    }
    return bool2;
  }

  public final Iterator<Map.Entry<R, Map<C, V>>> iterator()
  {
    return hc.a(this.a.a.a.keySet(), new kp(this));
  }

  public final boolean remove(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject = localEntry.getKey();
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localEntry.getValue() instanceof Map;
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.a.a.a.entrySet().remove(localEntry);
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
    }
    return bool2;
  }

  public final int size()
  {
    return this.a.a.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ko
 * JD-Core Version:    0.6.2
 */
package a.a.a.a.b;

import a.a.a.a.c.j;
import a.a.a.a.c.l;
import a.a.a.a.c.p;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class h<V> extends g<V>
  implements bi<V>, Serializable
{
  public cl a()
  {
    return new i(this);
  }

  public j<V> b()
  {
    return new k(this);
  }

  public boolean b(long paramLong)
  {
    return a().a(paramLong);
  }

  public p<Map.Entry<Long, V>> c()
  {
    return l();
  }

  public boolean containsValue(Object paramObject)
  {
    return b().contains(paramObject);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool2;
    if (paramObject == this)
      bool2 = true;
    Map localMap;
    int i;
    int j;
    do
    {
      boolean bool1;
      do
      {
        return bool2;
        bool1 = paramObject instanceof Map;
        bool2 = false;
      }
      while (!bool1);
      localMap = (Map)paramObject;
      i = localMap.size();
      j = size();
      bool2 = false;
    }
    while (i != j);
    return c().containsAll(localMap.entrySet());
  }

  public int hashCode()
  {
    int i = size();
    l locall = c().a();
    int j = 0;
    while (true)
    {
      int k = i - 1;
      if (i == 0)
        break;
      j += ((Map.Entry)locall.next()).hashCode();
      i = k;
    }
    return j;
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  public void putAll(Map<? extends Long, ? extends V> paramMap)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.entrySet().iterator();
    if ((paramMap instanceof bi))
      while (true)
      {
        int k = i - 1;
        if (i == 0)
          break;
        bj localbj = (bj)localIterator.next();
        a(localbj.a(), localbj.getValue());
        i = k;
      }
    while (true)
    {
      int j = i - 1;
      if (i == 0)
        break;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a((Long)localEntry.getKey(), localEntry.getValue());
      i = j;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    l locall = c().a();
    int i = size();
    localStringBuilder.append("{");
    int j = i;
    int k = 1;
    while (true)
    {
      int m = j - 1;
      if (j == 0)
        break;
      if (k != 0);
      bj localbj;
      for (int n = 0; ; n = k)
      {
        localbj = (bj)locall.next();
        localStringBuilder.append(String.valueOf(localbj.a()));
        localStringBuilder.append("=>");
        if (this != localbj.getValue())
          break label131;
        localStringBuilder.append("(this map)");
        k = n;
        j = m;
        break;
        localStringBuilder.append(", ");
      }
      label131: localStringBuilder.append(String.valueOf(localbj.getValue()));
      k = n;
      j = m;
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.h
 * JD-Core Version:    0.6.2
 */
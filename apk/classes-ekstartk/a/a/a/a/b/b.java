package a.a.a.a.b;

import a.a.a.a.c.l;
import a.a.a.a.c.p;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class b extends a
  implements ad, Serializable
{
  public cl b()
  {
    return new c(this);
  }

  public boolean b(long paramLong)
  {
    return c().a(paramLong);
  }

  public cb c()
  {
    return new e(this);
  }

  public boolean c(long paramLong)
  {
    return b().a(paramLong);
  }

  public boolean containsValue(Object paramObject)
  {
    return b(((Long)paramObject).longValue());
  }

  public final p<Map.Entry<Long, Long>> d()
  {
    return e();
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
    return e().containsAll(localMap.entrySet());
  }

  public int hashCode()
  {
    int i = size();
    l locall = e().a();
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

  public void putAll(Map<? extends Long, ? extends Long> paramMap)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.entrySet().iterator();
    if ((paramMap instanceof Serializable))
      while (true)
      {
        int k = i - 1;
        if (i == 0)
          break;
        ae localae = (ae)localIterator.next();
        a(localae.a(), localae.b());
        i = k;
      }
    while (true)
    {
      int j = i - 1;
      if (i == 0)
        break;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a((Long)localEntry.getKey(), (Long)localEntry.getValue());
      i = j;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    l locall = e().a();
    int i = size();
    int j = 1;
    localStringBuilder.append("{");
    int k = i - 1;
    if (i != 0)
    {
      if (j != 0);
      for (int m = 0; ; m = j)
      {
        ae localae = (ae)locall.next();
        localStringBuilder.append(String.valueOf(localae.a()));
        localStringBuilder.append("=>");
        localStringBuilder.append(String.valueOf(localae.b()));
        j = m;
        i = k;
        break;
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.b
 * JD-Core Version:    0.6.2
 */
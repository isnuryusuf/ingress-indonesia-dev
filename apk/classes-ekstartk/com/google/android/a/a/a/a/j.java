package com.google.android.a.a.a.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

public final class j
{
  private final long a;
  private final String b;
  private final LinkedList<i> c;
  private LinkedHashMap<String, String> d;
  private boolean e;

  private static Map<String, String> a(String paramString, Map<String, String> paramMap, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    int i = paramStringBuilder1.length();
    LinkedHashMap localLinkedHashMap = null;
    if (i > 0)
    {
      localLinkedHashMap = new LinkedHashMap();
      if (paramString != null)
        localLinkedHashMap.put("action", paramString);
      if ((paramMap != null) && (!paramMap.isEmpty()))
        localLinkedHashMap.putAll(paramMap);
      paramStringBuilder1.deleteCharAt(-1 + paramStringBuilder1.length());
      localLinkedHashMap.put("it", paramStringBuilder1.toString());
      if (paramStringBuilder2.length() > 0)
      {
        paramStringBuilder2.deleteCharAt(-1 + paramStringBuilder2.length());
        localLinkedHashMap.put("irt", paramStringBuilder2.toString());
      }
    }
    return localLinkedHashMap;
  }

  public static Map<String, String> a(j[] paramArrayOfj)
  {
    Object localObject1 = null;
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i = 0;
    int j = 0;
    Object localObject2 = null;
    if (i < paramArrayOfj.length)
    {
      Map localMap1 = paramArrayOfj[i].b();
      if (localMap1 == null)
        throw new a("The report items get from ticker is null.");
      Object localObject4;
      Object localObject3;
      if (i == 0)
      {
        localObject4 = (String)localMap1.get("action");
        Map localMap3 = Collections.unmodifiableMap(paramArrayOfj[i].d);
        if (localMap1.containsKey("irt"))
        {
          j = 1;
          localStringBuilder2.append((String)localMap1.get("irt")).append(",");
        }
        localStringBuilder1.append((String)localMap1.get("it")).append(",");
        localObject3 = localMap3;
      }
      while (true)
      {
        i++;
        localObject2 = localObject4;
        localObject1 = localObject3;
        break;
        Map localMap2 = Collections.unmodifiableMap(paramArrayOfj[i].d);
        if (((!localMap1.containsKey("action")) && (localObject2 != null)) || ((localMap1.containsKey("action")) && (!((String)localMap1.get("action")).equals(localObject2))))
          throw new a("Can not get merged report items for the tickers with different action names.");
        if (((localMap2 == null) && (localObject1 != null)) || ((localMap2 != null) && (!localMap2.equals(localObject1))))
          throw new a("Can not get merged report items for the tickers with different customized parameter-value pairs.");
        if (localMap1.containsKey("irt") != j)
          throw new a("Can not get merged report items for the tickers with different latency variables.");
        localStringBuilder1.append((String)localMap1.get("it")).append(",");
        if (j != 0)
          localStringBuilder2.append((String)localMap1.get("irt")).append(",");
        localObject3 = localObject1;
        localObject4 = localObject2;
      }
    }
    return a(localObject2, localObject1, localStringBuilder1, localStringBuilder2);
  }

  private Map<String, String> b()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    Iterator localIterator = this.c.iterator();
    if (localIterator.hasNext())
    {
      i locali1 = (i)localIterator.next();
      String str = locali1.b();
      i locali2 = locali1.c();
      Long localLong = locali1.a();
      long l1;
      if ((locali2 == null) && (locali1.d() != null))
        l1 = locali1.d().longValue();
      for (long l2 = locali1.d().longValue(); ; l2 = localLong.longValue() - this.a)
      {
        localStringBuilder1.append(str).append('.').append(l1).append(',');
        if (!this.e)
          break;
        localStringBuilder2.append(l2).append(',');
        break;
        if ((locali2 == null) || (localLong.longValue() <= 0L))
          break;
        l1 = localLong.longValue() - locali2.a().longValue();
      }
    }
    return a(this.b, this.d, localStringBuilder1, localStringBuilder2);
  }

  public final String a()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.j
 * JD-Core Version:    0.6.2
 */
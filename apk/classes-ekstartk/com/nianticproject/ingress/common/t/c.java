package com.nianticproject.ingress.common.t;

import com.google.a.c.eq;
import com.google.a.c.hc;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;

public final class c
{
  static boolean a = false;
  static b b = a("Root");
  static ThreadLocal<a> c = new d();
  private static ConcurrentMap<String, b> d = hc.d();
  private static Object e = new Object();

  static a a()
  {
    return (a)c.get();
  }

  public static b a(String paramString)
  {
    b localb1 = (b)d.get(paramString);
    b localb2;
    if (localb1 == null)
    {
      localb2 = new b(paramString);
      localb1 = (b)d.putIfAbsent(paramString, localb2);
      if (localb1 == null);
    }
    else
    {
      return localb1;
    }
    return localb2;
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static void b()
  {
    if (a);
    synchronized (e)
    {
      ((a)c.get()).b();
      return;
    }
  }

  public static Collection<b> c()
  {
    return d.values();
  }

  public static String d()
  {
    ArrayList localArrayList = eq.b(d.size());
    synchronized (e)
    {
      Iterator localIterator1 = c().iterator();
      while (localIterator1.hasNext())
      {
        b localb = (b)localIterator1.next();
        if (localb != b)
          localArrayList.add(new e(localb));
      }
    }
    Collections.sort(localArrayList);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("                    __ Zone Name __ |  _In ms_    _Ex ms_  _Calls_\n");
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      e locale = (e)localIterator2.next();
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = locale.a;
      arrayOfObject[1] = Float.valueOf(locale.c);
      arrayOfObject[2] = Float.valueOf(locale.b);
      arrayOfObject[3] = Integer.valueOf(locale.e);
      localStringBuilder.append(String.format("%35s | %8.2f %8.2f %8d\n", arrayOfObject));
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.c
 * JD-Core Version:    0.6.2
 */
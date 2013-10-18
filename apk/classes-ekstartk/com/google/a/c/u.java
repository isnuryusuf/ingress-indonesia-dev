package com.google.a.c;

import com.google.a.a.an;
import com.google.a.h.a;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class u<E> extends aa<E>
  implements Serializable
{
  private transient Map<E, av> a;
  private transient long b;

  protected u(Map<E, av> paramMap)
  {
    this.a = ((Map)an.a(paramMap));
    this.b = super.size();
  }

  private static int a(av paramav, int paramInt)
  {
    if (paramav == null)
      return 0;
    return paramav.c(paramInt);
  }

  public int a(Object paramObject)
  {
    av localav = (av)hc.a(this.a, paramObject);
    if (localav == null)
      return 0;
    return localav.a();
  }

  public int a(E paramE, int paramInt)
  {
    int i = 0;
    if (paramInt == 0)
      return a(paramE);
    if (paramInt > 0);
    av localav;
    for (boolean bool1 = true; ; bool1 = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      an.a(bool1, "occurrences cannot be negative: %s", arrayOfObject1);
      localav = (av)this.a.get(paramE);
      if (localav != null)
        break;
      this.a.put(paramE, new av(paramInt));
      this.b += paramInt;
      return i;
    }
    int j = localav.a();
    long l = j + paramInt;
    if (l <= 2147483647L);
    for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(l);
      an.a(bool2, "too many occurrences: %s", arrayOfObject2);
      localav.a(paramInt);
      i = j;
      break;
    }
  }

  public int b(Object paramObject, int paramInt)
  {
    int i;
    if (paramInt == 0)
      i = a(paramObject);
    boolean bool;
    av localav;
    do
    {
      return i;
      if (paramInt <= 0)
        break;
      bool = true;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      an.a(bool, "occurrences cannot be negative: %s", arrayOfObject);
      localav = (av)this.a.get(paramObject);
      i = 0;
    }
    while (localav == null);
    int j = localav.a();
    if (j > paramInt);
    while (true)
    {
      localav.b(-paramInt);
      this.b -= paramInt;
      return j;
      bool = false;
      break;
      this.a.remove(paramObject);
      paramInt = j;
    }
  }

  final Iterator<hu<E>> b()
  {
    return new v(this, this.a.entrySet().iterator());
  }

  final int c()
  {
    return this.a.size();
  }

  public int c(E paramE, int paramInt)
  {
    hv.a(paramInt, "count");
    if (paramInt == 0);
    int i;
    for (int j = a((av)this.a.remove(paramE), paramInt); ; j = i)
    {
      this.b += paramInt - j;
      return j;
      av localav = (av)this.a.get(paramE);
      i = a(localav, paramInt);
      if (localav == null)
        this.a.put(paramE, new av(paramInt));
    }
  }

  public void clear()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
      ((av)localIterator.next()).b();
    this.a.clear();
    this.b = 0L;
  }

  public Set<hu<E>> e_()
  {
    return super.e_();
  }

  public Iterator<E> iterator()
  {
    return new x(this);
  }

  public int size()
  {
    return a.a(this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.u
 * JD-Core Version:    0.6.2
 */
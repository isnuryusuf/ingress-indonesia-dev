package com.google.a.d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public final class k
  implements ad, Iterable<j>
{
  private ArrayList<j> a = new ArrayList();

  private strictfp boolean b()
  {
    ArrayList localArrayList = new ArrayList(this.a.size());
    localArrayList.ensureCapacity(this.a.size());
    Collections.sort(this.a);
    Iterator localIterator = iterator();
    j localj1;
    while (localIterator.hasNext())
    {
      localj1 = (j)localIterator.next();
      int i = localArrayList.size();
      if ((localArrayList.isEmpty()) || (!((j)localArrayList.get(i - 1)).a(localj1)))
        while ((!localArrayList.isEmpty()) && (localj1.a((j)localArrayList.get(-1 + localArrayList.size()))))
          localArrayList.remove(-1 + localArrayList.size());
    }
    while (true)
    {
      j localj2;
      if (localArrayList.size() >= 3)
      {
        int j = localArrayList.size();
        if ((((j)localArrayList.get(j - 3)).d() ^ ((j)localArrayList.get(j - 2)).d() ^ ((j)localArrayList.get(j - 1)).d()) == localj2.d())
        {
          long l1 = localj2.p() << 1;
          long l2 = 0xFFFFFFFF ^ l1 + (l1 << 1);
          long l3 = l2 & localj2.d();
          if (((l2 & ((j)localArrayList.get(j - 3)).d()) == l3) && ((l2 & ((j)localArrayList.get(j - 2)).d()) == l3) && ((l2 & ((j)localArrayList.get(j - 1)).d()) == l3) && (!localj2.h()))
          {
            localArrayList.remove(j - 1);
            localArrayList.remove(j - 2);
            localArrayList.remove(j - 3);
            localj2 = localj2.k();
          }
        }
      }
      else
      {
        localArrayList.add(localj2);
        break;
        if (localArrayList.size() < this.a.size())
        {
          c(localArrayList);
          return true;
        }
        return false;
        localj2 = localj1;
      }
    }
  }

  private strictfp void c(ArrayList<j> paramArrayList)
  {
    this.a = new ArrayList(paramArrayList);
    paramArrayList.clear();
  }

  public final strictfp ArrayList<j> a()
  {
    return this.a;
  }

  public final strictfp void a(ArrayList<j> paramArrayList)
  {
    this.a = paramArrayList;
    b();
  }

  public final strictfp boolean a(i parami)
  {
    j localj = parami.a();
    int i = Collections.binarySearch(this.a, localj);
    if (i < 0);
    for (int j = -1 + -i; ; j = i)
    {
      if ((j < this.a.size()) && (((j)this.a.get(j)).i().c(localj)))
        return true;
      return (j != 0) && (((j)this.a.get(j - 1)).j().d(localj));
    }
  }

  public final strictfp void b(ArrayList<j> paramArrayList)
  {
    c(paramArrayList);
    b();
  }

  public final strictfp boolean b(i parami)
  {
    j localj = parami.a();
    int i = Collections.binarySearch(this.a, localj);
    if (i < 0);
    for (int j = -1 + -i; ; j = i)
    {
      if ((j < this.a.size()) && (((j)this.a.get(j)).i().c(localj.j())))
        return true;
      return (j != 0) && (((j)this.a.get(j - 1)).j().d(localj.i()));
    }
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof k))
      return false;
    k localk = (k)paramObject;
    return this.a.equals(localk.a);
  }

  public final strictfp h f()
  {
    Object localObject;
    if (this.a.isEmpty())
    {
      localObject = h.a();
      return localObject;
    }
    y localy1 = y.a;
    Iterator localIterator1 = iterator();
    j localj;
    double d;
    for (y localy2 = localy1; localIterator1.hasNext(); localy2 = y.c(localy2, y.a(localj.b(), d)))
    {
      localj = (j)localIterator1.next();
      d = i.d(localj.f());
    }
    if (localy2.f(y.a));
    for (y localy3 = y.b; ; localy3 = y.d(localy2))
    {
      h localh = h.a(localy3, 0.0D);
      Iterator localIterator2 = iterator();
      for (localObject = localh; localIterator2.hasNext(); localObject = ((h)localObject).a(new i((j)localIterator2.next()).f()));
      break;
    }
  }

  public final strictfp int hashCode()
  {
    Iterator localIterator = iterator();
    j localj;
    for (int i = 17; localIterator.hasNext(); i = i * 37 + localj.hashCode())
      localj = (j)localIterator.next();
    return i;
  }

  public final strictfp Iterator<j> iterator()
  {
    return this.a.iterator();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.k
 * JD-Core Version:    0.6.2
 */
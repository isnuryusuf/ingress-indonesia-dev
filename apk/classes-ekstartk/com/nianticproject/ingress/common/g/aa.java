package com.nianticproject.ingress.common.g;

import a.a.a.a.b.ap;
import a.a.a.a.b.bv;
import a.a.a.a.c.l;
import com.google.a.a.an;
import com.google.a.c.eq;
import java.util.Collection;
import java.util.Iterator;

public final class aa<Indexed>
{
  final int a;
  final long b;
  final bv<Collection<Indexed>> c = new ap();

  public aa()
  {
    an.a(true);
    this.a = 18;
    this.b = com.google.a.d.j.e(18);
  }

  public final int a(Collection<com.google.a.d.j> paramCollection, Collection<Indexed> paramCollection1)
  {
    Iterator localIterator = paramCollection.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      com.google.a.d.j localj = (com.google.a.d.j)localIterator.next();
      l locall = this.c.b(localj.i().d(), 1L + localj.j().d()).b().a();
      while (locall.hasNext())
      {
        Collection localCollection = (Collection)locall.next();
        if (paramCollection1.addAll(localCollection))
          i += localCollection.size();
      }
    }
    return i;
  }

  final long a(com.google.a.d.j paramj)
  {
    return paramj.d() & -this.b | this.b;
  }

  public final void a()
  {
    this.c.clear();
  }

  public final void a(com.google.a.d.j paramj, Indexed paramIndexed)
  {
    long l = a(paramj);
    Object localObject = (Collection)this.c.e(l);
    if (localObject == null)
    {
      localObject = eq.a();
      this.c.a(l, localObject);
    }
    ((Collection)localObject).add(an.a(paramIndexed));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.aa
 * JD-Core Version:    0.6.2
 */
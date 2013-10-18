package com.nianticproject.ingress.common.ui.c;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.visuals.z;
import com.nianticproject.ingress.common.w.aa;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class g extends com.nianticproject.ingress.common.j.q
{
  private g(c paramc)
  {
  }

  public final boolean a(float paramFloat)
  {
    super.a(paramFloat);
    c.c(this.e).a(c.b(this.e)).rotate(0.0F, 1.0F, 0.0F, -c.a(this.e));
    a(c.b(this.e));
    if (c.d(this.e) == i.a)
    {
      if (!c.e(this.e).c())
        return true;
      c.a(this.e, i.b);
    }
    if (c.d(this.e) == i.b);
    float f;
    switch (f.a[c.f(this.e).ordinal()])
    {
    default:
      f = c.g(this.e).b();
      if (c.h(this.e) == null)
      {
        aa localaa = c.a();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = c.f(this.e).name();
        arrayOfObject2[1] = c.d(this.e).name();
        localaa.c(String.format("the damager container is null. rpcState = %s, fireState = %s", arrayOfObject2));
      }
      break;
    case 1:
    case 2:
    case 3:
    }
    for (boolean bool = true; ; bool = c.h(this.e).isEmpty())
    {
      if ((!bool) && (c.g(this.e).c()))
      {
        c.a().b("Animation has reached maximum radius but all damage has not been dealt.");
        bool = true;
      }
      if ((!bool) || (!c.g(this.e).c()))
        break label734;
      if (c.h(this.e) == null)
        break label595;
      Iterator localIterator1 = c.h(this.e).iterator();
      while (localIterator1.hasNext())
        ((q)localIterator1.next()).a(c.i(this.e), c.j(this.e), c.c(this.e).b(), f);
      return false;
      return true;
      b(c.g(this.e));
      c.a(this.e, i.c);
      break;
      if (!c.h(this.e).isEmpty())
      {
        Set localSet = c.h(this.e);
        HashSet localHashSet = jc.a(localSet.size());
        Iterator localIterator2 = localSet.iterator();
        while (localIterator2.hasNext())
        {
          q localq2 = (q)localIterator2.next();
          if (localq2.a(c.i(this.e), c.j(this.e), c.c(this.e).b(), f))
            localHashSet.add(localq2);
        }
        localSet.removeAll(localHashSet);
        Iterator localIterator3 = localHashSet.iterator();
        while (localIterator3.hasNext())
        {
          q localq1 = (q)localIterator3.next();
          if ((localq1 instanceof p))
          {
            p localp = (p)localq1;
            c.q(this.e);
            if (localp.a())
              c.r(this.e);
          }
        }
      }
    }
    label595: l locall;
    Object[] arrayOfObject1;
    if (c.l(this.e) > 0)
    {
      locall = c.m(this.e);
      arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(c.l(this.e));
      if (c.l(this.e) <= 1)
        break label727;
    }
    label727: for (String str = "s"; ; str = "")
    {
      arrayOfObject1[1] = str;
      locall.a(String.format("Destroyed %d resonator%s", arrayOfObject1));
      c.n(this.e).a(com.nianticproject.ingress.common.c.bs.aB);
      if (c.o(this.e) == 0)
        c.m(this.e).a("Missed all resonators!");
      c.i(this.e).b(c.p(this.e));
      return false;
    }
    label734: return true;
  }

  public final void dispose()
  {
    c.k(this.e).a(false);
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.g
 * JD-Core Version:    0.6.2
 */
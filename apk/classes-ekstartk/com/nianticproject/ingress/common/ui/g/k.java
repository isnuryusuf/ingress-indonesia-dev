package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.google.a.a.an;
import com.google.a.c.am;
import com.google.a.c.by;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.ui.widget.bb;
import com.nianticproject.ingress.common.w.aa;
import java.util.Iterator;
import java.util.Set;

public class k
  implements bb
{
  private static final aa a = new aa(k.class);
  private final l b;
  private final s c;
  private final am<h, Integer> d = by.b();
  private final am<h, q> e = by.b();
  private h f;

  public k(s params, l paraml)
  {
    this.b = paraml;
    this.c = params;
  }

  public final int a(Actor paramActor)
  {
    Integer localInteger = (Integer)this.d.get(paramActor);
    if (localInteger == null)
    {
      a.b("getIndexForActor failed for actor=%s", new Object[] { paramActor });
      localInteger = Integer.valueOf(-1);
    }
    return localInteger.intValue();
  }

  public final Actor a(int paramInt)
  {
    if (paramInt < this.c.b())
    {
      h localh = (h)this.d.a().get(Integer.valueOf(paramInt));
      if (localh == null)
      {
        q localq = this.c.a(paramInt);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        an.a(localq, "getUsableKey failed for index=%s", arrayOfObject);
        localh = this.b.a(localq);
        this.d.put(localh, Integer.valueOf(paramInt));
        this.e.put(localh, localq);
      }
      return localh;
    }
    if (this.f == null)
      this.f = this.b.a();
    return this.f;
  }

  public final q a(h paramh)
  {
    return (q)this.e.get(paramh);
  }

  public final h a(q paramq)
  {
    return (h)this.e.a().get(paramq);
  }

  public final h[] a()
  {
    return (h[])this.d.keySet().toArray(new h[this.d.size()]);
  }

  public final int b()
  {
    int i = this.c.b();
    if (this.c.c())
      i++;
    return i;
  }

  public final void c()
  {
    Iterator localIterator = this.d.keySet().iterator();
    while (localIterator.hasNext())
      ((h)localIterator.next()).d();
  }

  public final void d()
  {
    for (h localh : a())
    {
      localh.e();
      this.d.remove(localh);
      this.e.remove(localh);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.k
 * JD-Core Version:    0.6.2
 */
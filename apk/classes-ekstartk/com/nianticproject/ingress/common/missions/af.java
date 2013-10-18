package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.graphics.Color;
import com.google.a.c.eq;
import com.google.a.c.ii;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.elements.l;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.common.w.h;
import com.nianticproject.ingress.common.w.j;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class af
  implements ch
{
  private static final aa a = new aa(af.class);
  public static final d r = new f("MISSION_ABORT_EVENT");
  private final Set<cj> b = j.a();
  private ModalDialog c;
  private final t d;
  private b e;
  private final cj f = new ap(this);
  protected final AtomicReference<ck> h = new AtomicReference(ck.d);
  protected final cq i;
  protected final ad j;
  protected final com.nianticproject.ingress.common.model.m k;
  protected final com.nianticproject.ingress.common.h.k l;
  protected final com.nianticproject.ingress.common.scanner.k m;
  protected final com.nianticproject.ingress.common.c.e n;
  protected final com.nianticproject.ingress.common.a o;
  protected final com.nianticproject.ingress.common.ui.elements.i p;
  protected final com.nianticproject.ingress.common.model.a.e q;
  protected final h s = new ag(this, "FINISH");
  protected final h t = new ah(this, "ABORT");
  protected boolean u = false;
  protected boolean v = false;
  protected boolean w = false;
  protected boolean x = false;

  public af(cq paramcq, ad paramad, com.nianticproject.ingress.common.model.m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.ui.elements.i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    this.i = paramcq;
    this.j = paramad;
    this.k = paramm;
    this.l = paramk;
    this.m = paramk1;
    this.n = parame;
    this.o = parama;
    this.p = parami;
    this.q = parame1;
    this.d = p.a().n();
    a(this.f);
  }

  protected final z a(d paramd, String paramString)
  {
    return new aj(this, paramString, paramd);
  }

  public final void a(ci paramci)
  {
    com.nianticproject.ingress.common.a.a.a(this, paramci.toString());
    this.e.a(r);
  }

  public final void a(cj paramcj)
  {
    this.b.add(paramcj);
  }

  public void a(ck paramck)
  {
    if (paramck != ck.d);
    for (boolean bool = true; ; bool = false)
    {
      com.google.a.a.an.a(bool);
      com.nianticproject.ingress.common.x.i.a().a(new ak(this));
      if (!this.h.compareAndSet(ck.d, paramck))
        break;
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((cj)localIterator.next()).a(paramck);
    }
  }

  protected final void a(cr paramcr, bs parambs)
  {
    if (parambs != null)
      paramcr.a(this.n, parambs);
  }

  protected void a(ModalDialog paramModalDialog)
  {
    if (this.c != null)
      this.m.b(this.c);
    this.c = paramModalDialog;
    this.m.a(paramModalDialog);
  }

  protected abstract void a(c paramc);

  protected final void a(d paramd, int paramInt, TimeUnit paramTimeUnit)
  {
    al localal = new al(this, paramd);
    com.nianticproject.ingress.common.x.i.a().a(localal, TimeUnit.MILLISECONDS.convert(paramInt, paramTimeUnit));
  }

  protected final void a(String paramString, Collection<String> paramCollection1, Collection<String> paramCollection2, int paramInt1, int paramInt2)
  {
    ArrayDeque localArrayDeque1 = ii.a();
    ArrayDeque localArrayDeque2 = ii.a();
    ArrayList localArrayList = eq.a();
    Iterator localIterator1 = paramCollection1.iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      if (paramCollection2.contains(str))
      {
        if (localArrayDeque1.size() == paramInt1)
          localArrayDeque1.poll();
        com.nianticproject.ingress.common.ui.elements.i locali3 = this.p;
        locali3.getClass();
        localArrayDeque1.offer(new l(locali3, str, com.nianticproject.ingress.common.ui.elements.m.a));
      }
      else if (localArrayDeque2.size() < paramInt2)
      {
        com.nianticproject.ingress.common.ui.elements.i locali2 = this.p;
        locali2.getClass();
        localArrayDeque2.offer(new l(locali2, str, com.nianticproject.ingress.common.ui.elements.m.b));
      }
    }
    if (this.x)
    {
      com.nianticproject.ingress.common.ui.elements.i locali1 = this.p;
      locali1.getClass();
      localArrayList.add(new l(locali1, "Training Mission", Color.WHITE));
    }
    Iterator localIterator2 = localArrayDeque1.iterator();
    while (localIterator2.hasNext())
      localArrayList.add((l)localIterator2.next());
    Iterator localIterator3 = localArrayDeque2.iterator();
    while (localIterator3.hasNext())
      localArrayList.add((l)localIterator3.next());
    com.nianticproject.ingress.common.x.i.a().a(new an(this, paramString, localArrayList));
  }

  protected final void a(Collection<String> paramCollection)
  {
    a(q(), r(), paramCollection, 2147483647, 2147483647);
  }

  public final void a(boolean paramBoolean)
  {
    this.u = paramBoolean;
  }

  protected final void a_(String paramString)
  {
    com.nianticproject.ingress.common.x.i.a().a(new ai(this, paramString));
  }

  public void b()
  {
  }

  public final void b(cj paramcj)
  {
    this.b.remove(paramcj);
  }

  public final void b(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }

  public void c()
  {
    c localc = b.a();
    a(localc);
    Iterator localIterator = localc.c().iterator();
    while (localIterator.hasNext())
      localc.a((h)localIterator.next(), r, this.t);
    this.e = localc.b();
    this.e.b();
  }

  public final void c(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }

  public void h()
  {
    if (this.c != null)
    {
      this.m.b(this.c);
      this.c = null;
    }
  }

  public final void s()
  {
    this.x = true;
  }

  protected final b t()
  {
    return this.e;
  }

  protected final void u()
  {
    com.nianticproject.ingress.common.x.i.a().a(new am(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.af
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.w.j;
import java.util.Iterator;
import java.util.Set;

public final class ed
{
  private final com.nianticproject.ingress.common.w.k a;
  private final fp b;
  private final com.nianticproject.ingress.common.model.k c;
  private final eh d;
  private final Set<eg> e = j.a();
  private final Set<ScannerDestination.OnDestinationSetListener> f = j.a();
  private final Set<ef> g = j.a();
  private boolean h;
  private u i;
  private u j;
  private final com.nianticproject.ingress.common.w.a k;
  private double l;
  private double m;
  private double n;
  private final float o;
  private final l p = new ee(this);

  public ed(com.nianticproject.ingress.common.w.k paramk, eh parameh, fp paramfp, com.nianticproject.ingress.common.model.k paramk1, float paramFloat)
  {
    this.a = paramk;
    this.b = ((fp)an.a(paramfp));
    this.c = ((com.nianticproject.ingress.common.model.k)an.a(paramk1));
    this.h = false;
    this.k = new com.nianticproject.ingress.common.w.a();
    this.j = null;
    this.i = null;
    this.l = 0.0D;
    this.m = 0.0D;
    this.n = 0.0D;
    this.d = parameh;
    this.o = paramFloat;
  }

  public ed(com.nianticproject.ingress.common.w.k paramk, fp paramfp, com.nianticproject.ingress.common.model.k paramk1)
  {
    this(paramk, new eh(), paramfp, paramk1, 35.0F);
  }

  public final void a(float paramFloat)
  {
    if ((this.h) && (this.j != null))
    {
      this.l = this.j.a(this.i);
      this.m = com.nianticproject.ingress.shared.b.a.b(this.j, this.i);
      if (this.l < this.o)
        break label101;
      this.n = (5.0D * ((int)(2.5D + this.l) / 5));
      if (this.d != null)
        this.d.a(paramFloat, this.n, this.m);
    }
    return;
    label101: if (this.d != null)
      this.d.a();
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
      ((eg)localIterator.next()).a();
    b();
  }

  public final void a(Vector2 paramVector2)
  {
    a(this.b.a(paramVector2));
  }

  public final void a(u paramu)
  {
    if (this.h)
      b();
    this.i = paramu;
    ad localad = this.c.g();
    if (localad != null)
    {
      this.h = true;
      if (this.a != null)
        this.a.a(true);
      this.c.a(this.p);
      this.p.a(localad);
      a(0.0F);
      if ((this.h) && (this.d != null))
        this.d.a(this.n, this.m);
    }
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
      localIterator.next();
  }

  public final void a(ef paramef)
  {
    this.g.add(paramef);
  }

  public final void a(eg parameg)
  {
    this.e.add(parameg);
  }

  public final boolean a()
  {
    return this.h;
  }

  public final void b()
  {
    this.h = false;
    this.c.b(this.p);
    this.k.b();
    this.j = null;
    this.i = null;
    this.l = 0.0D;
    this.m = 0.0D;
    if (this.a != null)
      this.a.a(false);
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
      ((ef)localIterator.next()).a();
  }

  public final void b(ef paramef)
  {
    this.g.remove(paramef);
  }

  public final void b(eg parameg)
  {
    this.e.remove(parameg);
  }

  public final double c()
  {
    return this.l;
  }

  public final double d()
  {
    return this.n;
  }

  public final u e()
  {
    return this.i;
  }

  public final double f()
  {
    return this.m;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ed
 * JD-Core Version:    0.6.2
 */
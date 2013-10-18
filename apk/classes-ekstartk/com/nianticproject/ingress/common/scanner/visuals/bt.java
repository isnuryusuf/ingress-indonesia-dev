package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.google.a.c.eq;
import com.google.a.d.u;
import com.nianticproject.ingress.common.c.an;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.fr;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class bt extends q
  implements o
{
  public static final ad e = new bu();
  private static final ad f = new bv();
  private float A;
  private boolean B = true;
  private final eo C = new bw(this);
  private final fr D = new bx(this);
  private final l E = new by(this);
  private final cb[] F;
  private final Matrix4 g = new Matrix4();
  private final LinkedList<bz> h = eq.b();
  private final ai i;
  private final ai j;
  private final o k;
  private final com.nianticproject.ingress.common.model.k l;
  private final com.nianticproject.ingress.common.scanner.k m;
  private final fp n;
  private final an o = new an();
  private final List<PlayerDamage> p = eq.a();
  private ca q;
  private float r;
  private float s;
  private float t;
  private Color u;
  private Color v;
  private boolean w = false;
  private float x = 0.0F;
  private Rectangle y;
  private cc z = null;

  public bt(fp paramfp, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.scanner.k paramk1)
  {
    cb[] arrayOfcb = new cb[6];
    arrayOfcb[0] = new cb(this, 0.03F, 200, 0);
    arrayOfcb[1] = new cb(this, 0.05F, 500, 0);
    arrayOfcb[2] = new cb(this, 0.1F, 700, 0);
    arrayOfcb[3] = new cb(this, 0.25F, 1000, 0);
    arrayOfcb[4] = new cb(this, 0.5F, 1500, 0);
    arrayOfcb[5] = new cb(this, 1.0F, 2000, 0);
    this.F = arrayOfcb;
    this.n = paramfp;
    this.l = paramk;
    this.t = 1.0F;
    this.m = paramk1;
    this.i = ag.L;
    this.j = ag.M;
    this.k = new cd(this, (byte)0);
    b(this.k);
    this.z = new cc(this);
    paramk1.a(this.z);
    this.E.a(null, paramk.h());
    paramk.a(this.E);
    paramfp.a(this.D);
  }

  private void f()
  {
    this.B = false;
    Matrix4 localMatrix4 = this.g;
    this.C.a(localMatrix4).rotate(Vector3.Y, -this.s).scale(this.t, this.t, this.t);
    super.a(localMatrix4);
  }

  public final eo a(u paramu)
  {
    return this.n.a(paramu);
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    try
    {
      aj.a("PlayerVisuals.draw");
      Iterator localIterator = this.h.iterator();
      while (localIterator.hasNext())
        ((bz)localIterator.next()).a(paramMatrix4, paramf, paramn);
    }
    finally
    {
      aj.b();
    }
    super.a(paramMatrix4, paramf, paramn);
    this.y = this.i.a(paramf, paramMatrix4, this.t);
    aj.b();
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    if (this.r != this.l.f())
    {
      this.r = this.l.f();
      this.s = ((float)Math.toDegrees(this.r));
      this.B = true;
    }
    if (this.B)
      f();
    Iterator localIterator1 = this.h.iterator();
    while (localIterator1.hasNext())
      if (!((bz)localIterator1.next()).a(paramFloat))
        localIterator1.remove();
    u localu = this.m.D();
    Iterator localIterator2;
    label163: PlayerDamage localPlayerDamage;
    float f1;
    cb[] arrayOfcb;
    int i1;
    if (localu != null)
    {
      if (this.q == null)
        this.q = new ca(localu, this.s, this.A);
    }
    else
    {
      if (this.p.isEmpty())
        break label524;
      localIterator2 = this.p.iterator();
      do
      {
        if (!localIterator2.hasNext())
          break;
        localPlayerDamage = (PlayerDamage)localIterator2.next();
      }
      while (this.m.a(localPlayerDamage.b()));
      long l1 = localPlayerDamage.a();
      this.z.a(l1);
      f1 = (float)(l1 / (l1 + this.l.d()));
      arrayOfcb = this.F;
      i1 = arrayOfcb.length;
    }
    for (int i2 = 0; ; i2++)
      if (i2 < i1)
      {
        cb localcb = arrayOfcb[i2];
        if (f1 <= localcb.a)
        {
          Gdx.input.vibrate(localcb.b);
          this.x += localcb.c;
          this.w = true;
        }
      }
      else
      {
        ej localej = this.m.b(localPlayerDamage.b());
        if (localej != null)
        {
          com.nianticproject.ingress.gameentity.f localf = localej.e();
          if (localf.getComponent(Portal.class) != null)
          {
            ea.a(b.a(localf));
            ab localab = new ab(a(localej.c()), this.C);
            this.m.a(localab);
          }
        }
        this.o.a();
        localIterator2.remove();
        break label163;
        if ((this.A - ca.a(this.q) < 0.2F) || (a.a(localu, ca.b(this.q)) < 3.5D))
          break;
        this.h.addFirst(new bz(this, this.n, ca.b(this.q), ca.c(this.q)));
        if (this.h.size() > 15)
          this.h.removeLast();
        this.q = new ca(localu, this.s, this.A);
        break;
      }
    label524: this.A = (paramFloat + this.A);
    return super.a(paramFloat);
  }

  public final float c()
  {
    return this.s;
  }

  public final eo d()
  {
    return this.C;
  }

  public final void dispose()
  {
    super.dispose();
    this.l.b(this.E);
    this.n.b(this.D);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bt
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.a.b;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.hud.e;
import com.nianticproject.ingress.common.ui.widget.al;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.r;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ba extends ag
{
  private final Set<Resonator> A = jc.a();
  private float B;
  private GameState C;
  private Drawable D;
  private float E = 0.0F;
  private boolean F = false;
  private com.nianticproject.ingress.common.ui.a.c G;
  private com.nianticproject.ingress.common.ui.a.c H;
  private boolean I;
  protected f g;
  protected r h;
  private Portal i;
  private final com.nianticproject.ingress.common.h.l j;
  private final com.nianticproject.ingress.common.model.k k;
  private final f l;
  private ab m;
  private bd n;
  private ae o;
  private com.nianticproject.ingress.common.ui.widget.as p;
  private af q;
  private al r;
  private boolean s = false;
  private float t;
  private com.nianticproject.ingress.common.j.as u;
  private boolean v;
  private final Map<String, Double> w = hc.b();
  private final Map<String, e> x = hc.b();
  private final Map<String, r> y = hc.b();
  private final Map<r, Resonator> z = hc.a(8);

  public ba(com.nianticproject.ingress.common.scanner.k paramk, j paramj, ej paramej, Portal paramPortal, com.nianticproject.ingress.common.h.l paraml, com.nianticproject.ingress.common.model.k paramk1, ab paramab, Set<Resonator> paramSet, f paramf)
  {
    super(paramk, paramj, paramej);
    this.i = paramPortal;
    this.j = paraml;
    this.k = paramk1;
    this.A.addAll(paramSet);
    this.l = paramf;
    this.m = paramab;
    a(null);
    a(paramk1);
  }

  private static Double a(f paramf, Resonator paramResonator)
  {
    double d = paramResonator.getEnergyCapacity();
    Energy localEnergy = (Energy)paramf.getComponent(Energy.class);
    if (localEnergy != null)
      return Double.valueOf(100.0D * localEnergy.getTotal() / d);
    return null;
  }

  private static Double b(Resonator paramResonator)
  {
    if (paramResonator == null)
      return null;
    f localf = paramResonator.getEntity();
    if (localf == null)
    {
      a.a(b.a, "Orphaned Resonator");
      return null;
    }
    return a(localf, paramResonator);
  }

  private static Double c(f paramf)
  {
    if (paramf == null)
      return null;
    Resonator localResonator = (Resonator)paramf.getComponent(Resonator.class);
    com.google.a.a.an.a(localResonator);
    return a(paramf, localResonator);
  }

  private void e()
  {
    double d1 = this.k.g().a().a(((LocationE6)this.i.getEntity().getComponent(LocationE6.class)).getLatLng());
    int i1 = this.k.l();
    ae localae1 = this.o;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = com.nianticproject.ingress.common.ui.l.a((float)d1);
    localae1.a(String.format("Distance: %s", arrayOfObject1));
    double d2 = 0.0D;
    if (d1 < 250000L * i1);
    for (int i2 = 1; ; i2 = 0)
    {
      if (i2 != 0)
      {
        double d3 = 500.0D * this.k.l();
        d2 = 1.0D - d1 / 1000.0D / d3;
      }
      ae localae2 = this.o;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Double.valueOf(100.0D * d2);
      localae2.b(String.format("Range efficiency: %.1f %%", arrayOfObject2));
      this.o.b().a((float)d2, false);
      return;
    }
  }

  private void f()
  {
    this.A.clear();
    if (this.g != null)
    {
      Resonator localResonator = (Resonator)this.g.getComponent(Resonator.class);
      if (localResonator != null)
        this.A.add(localResonator);
    }
    while (true)
    {
      if (this.n != null)
      {
        bd localbd = this.n;
        this.i.getEntity();
        Set localSet = this.A;
        com.nianticproject.ingress.common.model.k localk = this.k;
        bd.a(localbd, localSet, localk);
      }
      return;
      this.A.addAll(this.z.values());
    }
  }

  private void g()
  {
    if (this.i != null);
    for (f localf = this.i.getEntity(); ; localf = null)
    {
      if ((this.r != null) && (this.C != null) && (localf != null))
      {
        this.r.a(localf, this.C);
        this.r.a(this.k.h(), localf, Color.GRAY, null, null);
        this.r.a(com.nianticproject.ingress.common.b.c.a(this.D, com.nianticproject.ingress.common.scanner.ea.H[this.i.getLevel()]));
      }
      return;
    }
  }

  private boolean h()
  {
    return (!this.F) && ((this.s) || (this.E > 0.0F));
  }

  private void i()
  {
    if (h())
      this.F = true;
  }

  private void j()
  {
    Iterator localIterator = this.z.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Resonator localResonator = (Resonator)localEntry.getValue();
      String str = localResonator.getEntityGuid();
      Double localDouble = b(localResonator);
      if (localDouble != null)
      {
        this.w.put(str, localDouble);
        this.y.put(str, localEntry.getKey());
      }
    }
  }

  protected final void a(u paramu1, u paramu2)
  {
    if (!this.a);
    do
    {
      return;
      e();
    }
    while (!ac.a(this.i.getEntity(), paramu1, paramu2));
    bd localbd = this.n;
    this.i.getEntity();
    Set localSet = this.A;
    com.nianticproject.ingress.common.model.k localk = this.k;
    bd.a(localbd, localSet, localk);
  }

  public final void a(com.nianticproject.ingress.common.j.as paramas)
  {
    this.u = paramas;
    super.a(paramas);
    this.n = new bd(this);
    this.c.a(this.n);
    j();
    this.v = false;
  }

  public final void a(GameState paramGameState)
  {
    super.a(paramGameState);
    this.C = paramGameState;
    f localf1 = (f)paramGameState.gameEntities.get(this.i.getEntityGuid());
    if (localf1 != null)
    {
      this.i = ((Portal)localf1.getComponent(Portal.class));
      if (this.i != null)
      {
        g();
        this.z.clear();
        Iterator localIterator = this.i.getLinkedResonatorGuids().f().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          f localf2 = (f)paramGameState.gameEntities.get(localEntry.getValue());
          if (localf2 != null)
          {
            Resonator localResonator = (Resonator)localf2.getComponent(Resonator.class);
            if (localResonator != null)
              this.z.put(localEntry.getKey(), localResonator);
          }
        }
        f();
        if (this.p != null)
        {
          this.p.a(this.i, paramGameState);
          if ((this.B > 0.0F) && (this.g != null) && (c(this.g).doubleValue() >= 100.0D))
            this.p.a(null);
        }
        return;
      }
    }
    c();
  }

  public final void a(f paramf)
  {
    if (paramf == null)
    {
      if ((this.i != null) && (this.i.getEntity() != null))
        a(this.c.b(this.i.getEntity().getGuid()), 192.5F, 40.0F, 0.0F, 0.1F);
      return;
    }
    a(this.c.b(paramf.getGuid()), 192.5F, 40.0F, 0.0F, 0.19F);
  }

  public final boolean a(float paramFloat)
  {
    boolean bool1 = true;
    if (this.t > 0.0F)
    {
      this.t -= paramFloat;
      if (this.t <= 0.0F)
        j();
    }
    if (this.v)
    {
      this.v = false;
      this.n.d();
    }
    if (this.B > 0.0F)
      this.B -= paramFloat;
    ab localab1 = this.m;
    ab localab2 = ab.c;
    float f1 = 0.0F;
    if (localab1 == localab2)
      f1 = 1.0F;
    float f2 = this.o.a().getColor().a;
    boolean bool2;
    label190: com.nianticproject.ingress.common.ui.a.c localc2;
    if (f2 < f1)
    {
      float f4 = Math.min(f1, f2 + 2.0F * paramFloat);
      this.o.a().getColor().a = f4;
      this.E -= paramFloat;
      if (this.I != h())
      {
        this.I = h();
        com.nianticproject.ingress.common.ui.a.c localc1 = this.G;
        if (this.I)
          break label261;
        bool2 = bool1;
        localc1.b(bool2);
        localc2 = this.H;
        if (this.I)
          break label267;
      }
    }
    while (true)
    {
      localc2.b(bool1);
      return super.a(paramFloat);
      if (f2 <= f1)
        break;
      float f3 = Math.max(f1, f2 - 2.0F * paramFloat);
      this.o.a().getColor().a = f3;
      break;
      label261: bool2 = false;
      break label190;
      label267: bool1 = false;
    }
  }

  public final boolean a(ej paramej)
  {
    if ((this.p != null) && (!h()))
      this.p.a(null);
    i();
    return true;
  }

  public final void b()
  {
    super.b();
    if (this.n != null)
    {
      this.n.e();
      this.n = null;
    }
    if (this.o != null)
    {
      this.o.e();
      this.o = null;
    }
    if (this.p != null)
    {
      this.p.a();
      this.p = null;
    }
    if (this.q != null)
    {
      this.q.e();
      this.q = null;
    }
    Iterator localIterator = this.x.values().iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      this.c.b(locale);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ba
 * JD-Core Version:    0.6.2
 */
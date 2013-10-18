package com.nianticproject.ingress.common.c;

import com.google.a.c.ct;
import com.google.a.c.dh;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.g.w;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.g;
import com.nianticproject.ingress.common.scanner.h;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.b.a;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ao
{
  private static final com.nianticproject.ingress.common.t.b a = c.a("Update Scanner Audio");
  private final List<av> b = eq.a();
  private List<au> c = eq.a();
  private long d;
  private boolean e = false;
  private ad f = null;
  private ad g = null;
  private float h = 0.0F;
  private float i = 1.0F;
  private GameState j;
  private final k k;
  private final ed l;
  private final aw m;
  private final l n = new ap(this);
  private final w o = new aq(this);
  private final h p = new ar(this);

  public ao(k paramk, ed paramed, g paramg)
  {
    this.k = paramk;
    this.l = paramed;
    this.k.a(this.n);
    while (i1 <= 0)
    {
      this.b.add(new av(this));
      i1++;
    }
    this.m = new aw(paramed);
    p.a().a(this.o);
    paramg.a(this.p);
  }

  private void c()
  {
    int i1 = 0;
    if (this.f != null)
    {
      if ((this.g == null) || (a.a(this.f.a(), this.g.a()) > 4.0D))
      {
        this.h = 0.0F;
        this.g = this.f;
      }
      this.m.a();
      for (int i2 = 0; i2 <= 0; i2++)
        ((av)this.b.get(0)).a(null);
      if ((this.f != null) && (this.j != null))
        break label104;
    }
    while (true)
    {
      return;
      label104: if (this.d != this.j.timestamp)
      {
        this.d = this.j.timestamp;
        this.c = eq.a();
        Iterator localIterator2 = this.j.gameEntities.d_().iterator();
        while (localIterator2.hasNext())
        {
          f localf = (f)localIterator2.next();
          if ((Portal)localf.getComponent(Portal.class) != null)
          {
            LocationE6 localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
            if (localLocationE6 != null)
              this.c.add(new au(this.f.a(), localLocationE6.getLatLng(), (ControllingTeam)localf.getComponent(ControllingTeam.class)));
          }
        }
      }
      Iterator localIterator1 = this.c.iterator();
      while (localIterator1.hasNext())
        ((au)localIterator1.next()).a(this.f.a());
      if (this.l.a())
        ((av)this.b.get(0)).a(this.l.e());
      if (!this.c.isEmpty())
      {
        Collections.sort(this.c, new as(this));
        int i3 = Math.min(6, this.c.size());
        while (i1 < i3)
        {
          au localau = (au)this.c.get(i1);
          if ((!this.l.a()) && (i1 <= 0))
            ((av)this.b.get(i1)).a(localau.a);
          float f1 = y.b(Math.max(0.0F, 1.25F + -0.0125F * (float)localau.c));
          ai localai = com.nianticproject.ingress.gameentity.components.b.a(localau.b);
          this.m.a(localai, f1);
          i1++;
        }
      }
    }
  }

  public final void a()
  {
    this.k.b(this.n);
    p.a().b(this.o);
  }

  public final void a(float paramFloat)
  {
    a.b();
    if (this.l.a())
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((av)localIterator.next()).a(this.f, paramFloat);
    }
    float f1 = y.b(paramFloat);
    this.h = (f1 + this.h);
    if (this.h > 10.0F)
      if (this.i > 0.15F)
        this.i -= f1 * 0.05F;
    for (this.i = Math.max(this.i, 0.15F); ; this.i = Math.min(this.i, 1.0F))
    {
      this.m.a(paramFloat);
      com.nianticproject.ingress.common.t.b.c();
      return;
      this.i += f1 * 0.15F;
    }
  }

  public final void a(GameState paramGameState)
  {
    this.j = paramGameState;
    if (this.j != null)
    {
      this.m.a();
      c();
    }
    if (this.e)
    {
      this.e = false;
      this.d = 0L;
    }
  }

  public final void b()
  {
    this.m.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.ao
 * JD-Core Version:    0.6.2
 */
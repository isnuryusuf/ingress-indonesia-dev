package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.ap;
import com.nianticproject.ingress.common.j.ar;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.elements.az;
import com.nianticproject.ingress.common.ui.elements.bc;
import com.nianticproject.ingress.common.ui.elements.bd;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment.SelectableHudStyle;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import java.util.Set;

public abstract class a extends com.nianticproject.ingress.common.ui.d.e
  implements j, com.nianticproject.ingress.common.ui.e.a
{
  protected final com.nianticproject.ingress.common.scanner.k a;
  protected final com.nianticproject.ingress.common.model.k b;
  GameState c;
  private final l f;
  private final com.nianticproject.ingress.common.j.h g;
  private final ar h;
  private final ed i;
  private float j;
  private float k;
  private as l;
  private final g m;
  private az n;
  private float o = 0.32F;

  public a(com.nianticproject.ingress.common.scanner.k paramk, l paraml, com.nianticproject.ingress.common.j.h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, g paramg)
  {
    this.a = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk));
    this.g = ((com.nianticproject.ingress.common.j.h)an.a(paramh));
    this.b = ((com.nianticproject.ingress.common.model.k)an.a(paramk1));
    this.f = ((l)an.a(paraml));
    this.i = ((ed)an.a(paramed));
    this.m = ((g)an.a(paramg));
    this.j = 1.0F;
    this.k = 0.0F;
    this.h = new b(this);
  }

  private static float d(float paramFloat)
  {
    return Math.min(3.0F, Math.max(paramFloat, 0.3F));
  }

  public final ap a(ap paramap)
  {
    float f1 = 1.570796F + this.k;
    if (com.nianticproject.ingress.common.scanner.k.u());
    for (float f2 = this.b.f(); ; f2 = 0.0F)
    {
      float f3 = f2 + f1;
      float f4 = 275.0F * (0.7F * this.j);
      float f5 = f4 * d;
      float f6 = -f4 * e;
      paramap.e.set(f6 * (float)Math.cos(f3), f5, f6 * (float)Math.sin(f3));
      paramap.d.set(paramap.e).scale(-this.o, 0.0F, -this.o);
      paramap.a = 40.0F;
      paramap.b = 15.0F;
      paramap.c = 2048.0F;
      return paramap;
    }
  }

  public void a(as paramas)
  {
    a(paramas, 0.75F);
  }

  protected final void a(as paramas, float paramFloat)
  {
    this.l = paramas;
    paramas.a(this.h, paramFloat);
  }

  public void a(GameState paramGameState)
  {
    this.c = ((GameState)an.a(paramGameState));
  }

  public boolean a(float paramFloat)
  {
    return true;
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    this.j = d(this.j / paramFloat1);
    this.k -= paramFloat2;
    g localg = this.m;
    localg.a();
    return true;
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 2);
    switch (paramInt2)
    {
    default:
      return false;
    case 1:
      this.j = d(this.j / 2.0F);
      this.l.a(this.h, 0.75F);
      return true;
    case 2:
    }
    this.j = d(2.0F * this.j);
    this.l.a(this.h, 0.75F);
    return true;
  }

  public boolean a(ej paramej)
  {
    if (paramej != null)
    {
      com.nianticproject.ingress.gameentity.f localf = paramej.e();
      if (localf.getComponent(Portal.class) != null)
      {
        o.a().a(bs.aO);
        this.m.a(paramej);
        return true;
      }
      if (localf.getComponent(Resource.class) != null)
      {
        o.a().a(bs.aO);
        this.m.b(paramej);
        return true;
      }
    }
    return false;
  }

  public boolean a(bt parambt)
  {
    this.k = 0.0F;
    g localg = this.m;
    localg.a();
    return false;
  }

  public void b()
  {
  }

  public final void b(float paramFloat)
  {
    this.k = paramFloat;
  }

  protected abstract Set<h> c();

  public final void c(float paramFloat)
  {
    this.j = paramFloat;
  }

  public final float d()
  {
    return this.k;
  }

  public void dispose()
  {
  }

  public final void e()
  {
    this.k = 0.0F;
  }

  public final float f()
  {
    return this.j;
  }

  public final void g()
  {
    this.o = -0.1F;
  }

  public boolean longPress(float paramFloat1, float paramFloat2)
  {
    Set localSet = c();
    if ((localSet == null) || (localSet.size() == 0))
      return true;
    if (this.n != null)
    {
      this.a.b(this.n);
      this.n = null;
    }
    boolean bool1 = localSet.contains(h.b);
    Object localObject1 = null;
    if (bool1)
      localObject1 = bd.a(this.b, new c(this));
    Vector2 localVector21 = Vector2.Zero.cpy();
    ej localej = this.a.a(paramFloat1, paramFloat2, localVector21);
    SelectableHudFragment localSelectableHudFragment;
    com.nianticproject.ingress.gameentity.f localf;
    LocationE6 localLocationE6;
    Portal localPortal;
    bc localbc8;
    bc localbc2;
    bc localbc3;
    bc localbc1;
    if (localej != null)
    {
      localSelectableHudFragment = new SelectableHudFragment(this.g);
      SelectableHudFragment.SelectableHudStyle localSelectableHudStyle1 = localSelectableHudFragment.b();
      localSelectableHudStyle1.defaultCaliperRadius = (2.0F * localSelectableHudStyle1.defaultCaliperRadius);
      SelectableHudFragment.SelectableHudStyle localSelectableHudStyle2 = localSelectableHudFragment.b();
      localSelectableHudStyle2.selectedCaliperRadius = (1.0F * localSelectableHudStyle2.selectedCaliperRadius);
      SelectableHudFragment.SelectableHudStyle localSelectableHudStyle3 = localSelectableHudFragment.b();
      localSelectableHudStyle3.selectedMarkerWidth = (1.5F * localSelectableHudStyle3.selectedMarkerWidth);
      localSelectableHudFragment.b().markerSlices = 0;
      localSelectableHudFragment.a(true);
      this.a.a(localej, localSelectableHudFragment);
      localf = localej.e();
      localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
      localPortal = (Portal)localf.getComponent(Portal.class);
      if (localPortal == null)
        break label737;
      boolean bool4 = localSet.contains(h.e);
      localbc8 = null;
      if (bool4)
      {
        boolean bool6 = this.f.c();
        localbc8 = null;
        if (bool6)
          localbc8 = bd.b(localf, this.b, this.f, new d(this, localf));
      }
      boolean bool5 = localSet.contains(h.a);
      localbc2 = null;
      if (bool5)
        localbc2 = bd.c(localf, this.b, this.f, new e(this, localPortal));
      if ((this.b.g() == null) || (!ac.a(this.b.g().a(), localPortal)) || (!localSet.contains(h.f)) || (!this.f.d()))
        break label727;
      bc localbc9 = bd.a(localf, this.b, this.f, new f(this, localej));
      localbc3 = localbc8;
      localbc1 = localbc9;
    }
    while (true)
    {
      if ((localbc1 == null) && (localLocationE6 != null) && (localSet.contains(h.d)));
      for (bc localbc4 = bd.a(localf, this.a); ; localbc4 = localbc1)
      {
        Object localObject2 = localbc4;
        bc localbc5 = localbc2;
        bc localbc6 = localbc3;
        while (true)
        {
          boolean bool2 = q.c().d();
          boolean bool3 = p.a().G();
          if ((bool2) && (!bool3) && (localPortal == null) && (localSet.contains(h.c)));
          for (bc localbc7 = bd.a(this.a.a(paramFloat1, paramFloat2), this.a.p()); ; localbc7 = localbc5)
          {
            o.a().a(bs.aO);
            Vector2 localVector22 = new Vector2(paramFloat1 / Gdx.graphics.getWidth(), 1.0F - paramFloat2 / Gdx.graphics.getHeight());
            com.nianticproject.ingress.common.j.h localh = this.g;
            if (a.ac())
            {
              Object localObject3 = localObject1;
              localObject1 = localObject2;
              localObject2 = localObject3;
            }
            this.n = new az(localVector22, localh, (bc)localObject1, localbc6, localbc7, (bc)localObject2, localSelectableHudFragment);
            this.a.a(this.n);
            return true;
            if (!localSet.contains(h.d))
              break label702;
            localObject2 = bd.a(localVector21, this.i);
            localbc5 = null;
            localPortal = null;
            localbc6 = null;
            localSelectableHudFragment = null;
            break;
          }
          label702: localbc5 = null;
          localPortal = null;
          localbc6 = null;
          localObject2 = null;
          localSelectableHudFragment = null;
        }
      }
      label727: localbc3 = localbc8;
      localbc1 = null;
      continue;
      label737: localbc1 = null;
      localbc2 = null;
      localbc3 = null;
    }
  }

  public boolean touchDown(float paramFloat1, float paramFloat2, int paramInt)
  {
    return super.touchDown(paramFloat1, paramFloat2, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.a
 * JD-Core Version:    0.6.2
 */
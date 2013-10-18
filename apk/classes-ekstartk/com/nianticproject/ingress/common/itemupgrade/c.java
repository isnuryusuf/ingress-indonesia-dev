package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.eq;
import com.google.a.d.u;
import com.nianticproject.ingress.common.gameentity.a;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.modes.bf;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle;
import com.nianticproject.ingress.common.ui.widget.al;
import com.nianticproject.ingress.common.ui.widget.ar;
import com.nianticproject.ingress.common.ui.widget.au;
import com.nianticproject.ingress.common.ui.widget.bd;
import com.nianticproject.ingress.common.ui.widget.w;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.shared.ResonatorLimits;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ab;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.r;
import java.util.Iterator;
import java.util.List;

public final class c
{
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private final com.nianticproject.ingress.common.ui.a.c E;
  private com.nianticproject.ingress.common.ui.a.c F;
  private com.nianticproject.ingress.common.ui.a.c G;
  private float H = 1.0F;
  private float I = 0.0F;
  private boolean J = false;
  private boolean K = false;
  private InputListener L = new d(this);
  protected final com.nianticproject.ingress.common.model.k a;
  protected Skin b;
  protected com.nianticproject.ingress.gameentity.f c;
  protected bf d;
  au e = new e(this);
  private final List<com.nianticproject.ingress.common.inventory.ui.q> f = eq.a();
  private boolean g = true;
  private w h;
  private ar i;
  private w j;
  private String k;
  private String l;
  private al m;
  private final com.nianticproject.ingress.common.j.as n;
  private r o;
  private com.nianticproject.ingress.gameentity.f p;
  private final l q;
  private final com.nianticproject.ingress.common.ui.widget.c r;
  private final ActionButton s;
  private Drawable t;
  private Drawable u;
  private Drawable v;
  private Drawable w;
  private com.nianticproject.ingress.common.ui.widget.as x;
  private float y = 0.0F;
  private final com.nianticproject.ingress.common.scanner.k z;

  public c(com.nianticproject.ingress.gameentity.f paramf, ActionButton paramActionButton, com.nianticproject.ingress.common.ui.a.c paramc, com.nianticproject.ingress.common.j.as paramas, bf parambf)
  {
    this.c = ((com.nianticproject.ingress.gameentity.f)an.a(paramf));
    this.r = ((com.nianticproject.ingress.common.ui.widget.c)an.a(paramActionButton.b()));
    this.s = ((ActionButton)an.a(paramActionButton));
    this.E = ((com.nianticproject.ingress.common.ui.a.c)an.a(paramc));
    this.n = paramas;
    this.a = com.nianticproject.ingress.common.g.p.a().b();
    this.q = com.nianticproject.ingress.common.g.p.a().f();
    this.z = com.nianticproject.ingress.common.g.p.a().k();
    this.d = parambf;
    an.a(paramf.getComponent(Portal.class), "Entity is not a Portal");
    paramActionButton.addListener(this.L);
  }

  private Result<Void, com.nianticproject.ingress.shared.ad> a(com.nianticproject.ingress.gameentity.f paramf)
  {
    com.nianticproject.ingress.gameentity.f localf = this.p;
    ab localab = new ab(com.nianticproject.ingress.common.q.b());
    Portal localPortal = (Portal)this.c.getComponent(Portal.class);
    if (localf != null)
      return localab.a(localPortal, (Resonator)localf.getComponent(Resonator.class), paramf, this.a.g().a(), this.a.h(), this.a.d(), this.a.l(), this.a.k());
    return localab.a(localPortal, paramf, this.a.g().a(), this.a.h(), this.a.d(), this.a.l(), this.a.k());
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt == -1)
      paramInt = 1;
    Object localObject1 = null;
    Iterator localIterator = this.i.a().iterator();
    int i1 = -1;
    Object localObject2;
    int i2;
    int i5;
    while (true)
      if (localIterator.hasNext())
      {
        localObject2 = (Actor)localIterator.next();
        com.nianticproject.ingress.gameentity.f localf = this.a.a(((Actor)localObject2).name);
        if (localf != null)
        {
          localf.getComponent(Resource.class);
          i2 = com.nianticproject.ingress.common.gameentity.g.b(localf);
          if (i1 == -1)
          {
            i5 = 1;
            label96: if ((i5 == 0) || ((!paramBoolean) && (!a(localf).e())))
              break label207;
          }
        }
      }
    for (int i6 = i2; ; i6 = i1)
    {
      i1 = i6;
      localObject1 = localObject2;
      break;
      int i3 = i1 - paramInt;
      int i4 = i2 - paramInt;
      if ((i3 >= 0) || (i4 <= 0))
      {
        if ((i3 > 0) && (i4 < 0))
        {
          i5 = 1;
          break label96;
        }
        if (Math.abs(i4) < Math.abs(i3))
        {
          i5 = 1;
          break label96;
        }
      }
      i5 = 0;
      break label96;
      if (localObject1 != null)
        this.i.a(localObject1);
      return;
      label207: localObject2 = localObject1;
    }
  }

  private void a(Actor paramActor1, Actor paramActor2)
  {
    int i1 = 1;
    com.nianticproject.ingress.gameentity.f localf = this.a.a(paramActor1.name);
    int i2;
    label42: Table localTable;
    Drawable localDrawable;
    if ((localf != null) && (a(localf).e()))
    {
      i2 = i1;
      if (paramActor1 != paramActor2)
        break label82;
      localTable = (Table)paramActor1;
      if ((i2 == 0) || (i1 == 0))
        break label87;
      localDrawable = com.nianticproject.ingress.common.gameentity.g.a(this.v, localf);
    }
    while (true)
    {
      localTable.setBackground(localDrawable);
      return;
      i2 = 0;
      break;
      label82: i1 = 0;
      break label42;
      label87: if (i2 != 0)
        localDrawable = this.w;
      else if (i1 != 0)
        localDrawable = this.t;
      else
        localDrawable = this.u;
    }
  }

  private boolean f()
  {
    return this.p != null;
  }

  private void g()
  {
    if (this.H < 1.0F)
      this.K = true;
  }

  private void h()
  {
    com.nianticproject.ingress.common.model.k localk = this.a;
    af[] arrayOfaf = new af[1];
    arrayOfaf[0] = af.a;
    List localList = com.nianticproject.ingress.common.inventory.ui.q.a(a.a(localk, arrayOfaf));
    this.f.clear();
    this.f.addAll(localList);
    this.D = true;
  }

  private int i()
  {
    com.nianticproject.ingress.gameentity.f localf = l();
    if (localf != null)
    {
      ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)localf.getComponent(ResourceWithLevels.class);
      if (localResourceWithLevels != null)
        return localResourceWithLevels.getLevel();
    }
    return -1;
  }

  private void j()
  {
    Actor localActor = this.i.d();
    Iterator localIterator = this.i.a().iterator();
    while (localIterator.hasNext())
      a((Actor)localIterator.next(), localActor);
  }

  private String k()
  {
    if ((f()) || (this.A))
      return "UPGRADE";
    return "CONFIRM";
  }

  private com.nianticproject.ingress.gameentity.f l()
  {
    if (this.k != null)
      return this.a.a(this.k);
    return null;
  }

  private boolean m()
  {
    return (!this.K) && ((this.J) || (this.I > 0.0F));
  }

  public final Actor a(Skin paramSkin, Stage paramStage)
  {
    this.b = ((Skin)an.a(paramSkin));
    this.t = paramSkin.getDrawable("item-disabled-selected");
    this.u = paramSkin.getDrawable("item-disabled-unselected");
    this.v = paramSkin.getDrawable("item-enabled-selected");
    this.w = paramSkin.getDrawable("item-enabled-unselected");
    Drawable localDrawable = com.nianticproject.ingress.common.b.c.a(paramSkin, ea.b);
    this.x = new com.nianticproject.ingress.common.ui.widget.as(new f(this), paramSkin, paramStage, true, this.q, this.n);
    this.h = new w(" ", (Label.LabelStyle)paramSkin.get("details-title", Label.LabelStyle.class), 0.3F);
    this.h.a(8);
    Table localTable1 = new Table();
    localTable1.add(this.h).k().o().i(this.h.getPrefHeight());
    localTable1.setBackground(localDrawable);
    float f1 = 0.2F * -this.h.getPrefHeight();
    float f2 = 0.07F * -this.h.getPrefHeight();
    this.h.padTop(f1).padBottom(f2);
    this.j = new w(" ", (Label.LabelStyle)paramSkin.get("fc-error-message", Label.LabelStyle.class), 0.3F);
    this.j.a(8);
    Table localTable2 = new Table();
    localTable2.add(this.j).k().o().i(this.h.getPrefHeight());
    g localg = new g(this);
    localg.add(this.x).n().f();
    localg.row();
    this.m = new al(paramSkin, 0);
    this.m.a();
    this.m.c();
    this.m.b();
    this.m.defaults().k();
    localg.add(this.m).m().g(com.a.a.e.b(0.01F));
    localg.row();
    Stack localStack = bd.a(new Actor[] { localTable1, localTable2 });
    this.F = com.nianticproject.ingress.common.ui.a.c.a(localStack);
    localg.add(localStack).o().g();
    int i1 = (int)(0.22F * Gdx.graphics.getWidth());
    this.i = new ar(i1, (int)(1.0F * i1), (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("modBrowser2", WidgetCarousel.WidgetCarouselStyle.class));
    this.G = com.nianticproject.ingress.common.ui.a.c.a(this.i);
    this.i.a(new h(this));
    localg.row();
    localg.add(this.i);
    h();
    this.C = true;
    return localg;
  }

  public final void a()
  {
    this.x.a(null);
    g();
  }

  public final void a(float paramFloat)
  {
    if (this.y > 0.0F)
    {
      this.y -= paramFloat;
      if (this.y <= 0.0F)
        this.C = true;
    }
    this.I -= paramFloat;
    float f1 = this.H;
    if ((m()) && (this.H > 0.0F));
    for (this.H = Math.max(0.0F, this.H - 2.5F * paramFloat); ; this.H = Math.min(1.0F, this.H + 5.0F * paramFloat))
      do
      {
        if (this.H != f1)
        {
          this.x.setColor(1.0F, 1.0F, 1.0F, this.H);
          this.m.setColor(1.0F, 1.0F, 1.0F, this.H);
        }
        return;
      }
      while ((m()) || (this.H >= 1.0F));
  }

  public final void a(u paramu1, u paramu2)
  {
    Portal localPortal;
    if (ac.a(this.c, paramu1, paramu2))
    {
      localPortal = (Portal)this.c.getComponent(Portal.class);
      if (localPortal != null)
        break label50;
    }
    label50: for (boolean bool = false; ; bool = ac.a(paramu2, localPortal))
    {
      this.B = bool;
      this.C = true;
      j();
      return;
    }
  }

  public final boolean a(GameState paramGameState)
  {
    try
    {
      aj.a("DeployResonatorScannerUi.setGameState");
      this.c = ((com.nianticproject.ingress.gameentity.f)paramGameState.gameEntities.get(this.c.getGuid()));
      Portal localPortal;
      if (this.c != null)
      {
        localPortal = (Portal)this.c.getComponent(Portal.class);
        if (localPortal != null);
      }
      else
      {
        return false;
      }
      this.m.a(this.c, new DeployResonatorScannerUi.2(this, paramGameState));
      this.A = localPortal.getFreeSlots().isEmpty();
      com.nianticproject.ingress.common.ad localad = this.a.g();
      if (localad != null)
        this.B = ac.a(localad.a(), localPortal);
      if (paramGameState.changedEntities.contains(this.c))
        this.C = true;
      if (this.p != null)
      {
        this.p = ((com.nianticproject.ingress.gameentity.f)paramGameState.gameEntities.get(this.p.getGuid()));
        if (this.p == null)
        {
          String str = localPortal.getResonatorAtOctant(this.o);
          this.p = ((com.nianticproject.ingress.gameentity.f)paramGameState.gameEntities.get(str));
        }
        if ((this.p == null) || (paramGameState.changedEntities.contains(this.p)))
          this.C = true;
      }
      if (this.x != null)
        this.x.a(localPortal, paramGameState);
      boolean bool1 = b.a(this.c, this.a.h());
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      this.E.a(bool2);
      this.F.a(bool2);
      this.G.a(bool2);
      h();
      return true;
    }
    finally
    {
      aj.b();
    }
  }

  protected final void b()
  {
    this.C = true;
  }

  protected final void c()
  {
    aj.a("DeployResonatorScannerUi.doUpdateLabels");
    this.r.a(this.r.a(), k(), null);
    com.nianticproject.ingress.gameentity.f localf = l();
    int i1;
    if (!this.q.a())
    {
      this.r.a("Deploying...");
      this.j.a();
      this.h.a();
      i1 = 0;
    }
    while (true)
    {
      if (i1 == 0)
      {
        this.m.a(com.nianticproject.ingress.common.b.c.a(this.b.getDrawable("stats-rarity-bg"), ea.H[((Portal)this.c.getComponent(Portal.class)).getLevel()]));
        this.m.a(this.a.h(), this.c, Color.GRAY, null, null);
      }
      if (this.y > 0.0F)
      {
        this.j.a(this.l);
        this.h.a();
      }
      aj.b();
      return;
      if (localf != null)
      {
        if ((this.A) && (this.o == null))
        {
          this.h.a("Select a slot to upgrade");
          this.j.a();
          this.r.a("");
          i1 = 0;
        }
        else
        {
          Result localResult = a(localf);
          if (!localResult.e())
          {
            if (localResult.d() == com.nianticproject.ingress.shared.ad.F)
            {
              ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)localf.getComponent(ResourceWithLevels.class);
              w localw = this.j;
              int i3 = localResourceWithLevels.getLevel();
              int i4 = com.nianticproject.ingress.common.q.b().a().a(i3);
              Object[] arrayOfObject = new Object[2];
              arrayOfObject[0] = Integer.valueOf(i3);
              arrayOfObject[1] = Integer.valueOf(i4);
              localw.a(String.format("Your L%d limit of %d reached for this portal", arrayOfObject));
            }
            while (true)
            {
              this.h.a();
              this.r.a("");
              i1 = 0;
              break;
              this.j.a(com.nianticproject.ingress.common.ui.c.a().a((Enum)localResult.d()));
            }
          }
          this.j.a();
          this.h.a("READY TO DEPLOY: " + "Resonator".toUpperCase());
          this.r.a(true, k(), null);
          int i2 = ((ResourceWithLevels)localf.getComponent(ResourceWithLevels.class)).getLevel();
          Color localColor = com.nianticproject.ingress.common.gameentity.g.d(localf);
          this.m.a(com.nianticproject.ingress.common.gameentity.g.a(this.b.getDrawable("stats-rarity-bg"), localf));
          this.m.a(this.a.h(), this.c, localColor, null, new com.nianticproject.ingress.gameentity.components.p(this.c, Integer.valueOf(i2), this.o));
          i1 = 1;
        }
      }
      else
      {
        this.h.a();
        this.j.a("No Resonators");
        this.r.a("");
        i1 = 0;
      }
    }
  }

  public final void d()
  {
    com.nianticproject.ingress.gameentity.f localf = l();
    if (localf != null)
    {
      if (a(localf).e())
        break label26;
      this.C = true;
    }
    label26: label113: r localr1;
    do
    {
      return;
      if (this.p == null)
        break;
      an.a(localf);
      an.a(this.o);
      this.r.b("Upgrading...");
      k localk2 = new k(this, this.p.getGuid());
      this.q.a(localf.getGuid(), this.c, this.o, new i(this, "UpgradeResonatorUi.upgrade", localk2));
      if (this.o == null)
        break label259;
      localr1 = this.o;
    }
    while (this.x == null);
    r localr2 = this.x.a(localr1, this.e);
    this.x.a(localr2);
    return;
    an.a(localf);
    this.r.b("Deploying...");
    if (this.o != null);
    for (int i1 = this.o.a(); ; i1 = 255)
    {
      k localk1 = new k(this, null);
      String str = this.q.a(localf.getGuid(), (Portal)this.c.getComponent(Portal.class), new j(this, "DeployResonatorUi.deploy", localk1), i1);
      if (str == null)
        break label113;
      localk1.a(str);
      break label113;
      label259: break;
    }
  }

  public final void e()
  {
    this.g = false;
    this.i.a(null);
    this.x.a();
    this.s.removeListener(this.L);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.c
 * JD-Core Version:    0.6.2
 */
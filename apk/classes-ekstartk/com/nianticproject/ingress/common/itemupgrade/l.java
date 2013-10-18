package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Scaling;
import com.badlogic.gdx.utils.SnapshotArray;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle;
import com.nianticproject.ingress.common.ui.widget.ar;
import com.nianticproject.ingress.common.ui.widget.w;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.UpgradedModable;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.af;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class l
  implements o
{
  private static final com.nianticproject.ingress.gameentity.components.l a = com.nianticproject.ingress.gameentity.components.l.a;
  private static final af b = af.k;
  private final com.nianticproject.ingress.common.h.l c;
  private final k d;
  private final ad e;
  private final p f;
  private boolean g;
  private float h = 3.4028235E+38F;
  private f i;
  private GameState j;
  private final int k;
  private Skin l;
  private Drawable m;
  private Drawable n;
  private Drawable o;
  private Drawable p;
  private List<com.nianticproject.ingress.common.inventory.ui.q> q = Collections.emptyList();
  private ar r;
  private Table s;
  private w t;
  private w u;
  private w v;
  private Label w;
  private UpgradeProgressDialog x;
  private ActionButton y;
  private String z;

  public l(f paramf, int paramInt, GameState paramGameState, k paramk, com.nianticproject.ingress.common.h.l paraml, ad paramad, p paramp)
  {
    this.j = ((GameState)an.a(paramGameState));
    this.i = ((f)an.a(paramf));
    this.d = ((k)an.a(paramk));
    this.c = ((com.nianticproject.ingress.common.h.l)an.a(paraml));
    this.e = ((ad)an.a(paramad));
    this.f = ((p)an.a(paramp));
    an.a(paramf.getComponent(Portal.class));
    this.k = paramInt;
  }

  private static int a(af paramaf1, com.nianticproject.ingress.gameentity.components.l paraml1, af paramaf2, com.nianticproject.ingress.gameentity.components.l paraml2)
  {
    int i1 = paramaf1.c() - paramaf2.c();
    if (i1 == 0)
      i1 = paraml1.b() - paraml2.b();
    return i1;
  }

  private static String a(f paramf)
  {
    if (paramf != null);
    for (String str = ((ModResource)paramf.getComponent(ModResource.class)).getDisplayName(); ; str = "")
      return "DEPLOY: " + str.toUpperCase();
  }

  private void a(Actor paramActor1, Actor paramActor2)
  {
    int i1 = 1;
    f localf = this.d.a(paramActor1.name);
    if (localf == null)
      return;
    int i2;
    label48: Table localTable;
    Drawable localDrawable;
    if ((localf != null) && (b(localf).e()))
    {
      i2 = i1;
      if (paramActor1 != paramActor2)
        break label88;
      localTable = (Table)paramActor1;
      if ((i2 == 0) || (i1 == 0))
        break label93;
      localDrawable = g.a(this.o, localf);
    }
    while (true)
    {
      localTable.setBackground(localDrawable);
      return;
      i2 = 0;
      break;
      label88: i1 = 0;
      break label48;
      label93: if (i2 != 0)
        localDrawable = this.p;
      else if (i1 != 0)
        localDrawable = this.m;
      else
        localDrawable = this.n;
    }
  }

  private Result<Void, com.nianticproject.ingress.shared.p> b(f paramf)
  {
    if (!com.nianticproject.ingress.common.gameentity.a.a(this.d, paramf))
      return Result.b(com.nianticproject.ingress.shared.p.k);
    XmCostKnobs localXmCostKnobs = com.nianticproject.ingress.common.q.h();
    Resource localResource = (Resource)paramf.getComponent(Resource.class);
    int i1 = localResource.getRarity().c();
    if (localXmCostKnobs.a(localResource.getResourceType(), i1) < this.d.d());
    for (int i2 = 1; i2 == 0; i2 = 0)
      return Result.b(com.nianticproject.ingress.shared.p.i);
    return Result.a(null);
  }

  private void f()
  {
    k localk = this.d;
    af[] arrayOfaf = new af[6];
    arrayOfaf[0] = af.k;
    arrayOfaf[1] = af.f;
    arrayOfaf[2] = af.e;
    arrayOfaf[3] = af.h;
    arrayOfaf[4] = af.d;
    arrayOfaf[5] = af.l;
    this.q = com.nianticproject.ingress.common.inventory.ui.q.a(com.nianticproject.ingress.common.gameentity.a.a(localk, arrayOfaf));
    f localf1 = d();
    Object localObject1 = null;
    com.nianticproject.ingress.gameentity.components.l locall1 = null;
    if (localf1 != null)
    {
      ModResource localModResource2 = (ModResource)localf1.getComponent(ModResource.class);
      af localaf2 = localModResource2.getResourceType();
      locall1 = localModResource2.getRarity();
      localObject1 = localaf2;
    }
    Object localObject2 = b;
    Object localObject3 = a;
    if (localObject1 == null);
    for (Object localObject4 = com.nianticproject.ingress.common.s.c.b(b); ; localObject4 = localObject1)
    {
      if (locall1 == null);
      for (com.nianticproject.ingress.gameentity.components.l locall2 = com.nianticproject.ingress.common.s.c.b(a); ; locall2 = locall1)
      {
        this.r.clear();
        Label.LabelStyle localLabelStyle = new Label.LabelStyle(((Label.LabelStyle)this.l.get("small", Label.LabelStyle.class)).font, Color.WHITE);
        Object localObject5 = null;
        Iterator localIterator = this.q.iterator();
        String str;
        label335: Object localObject8;
        Object localObject7;
        Object localObject6;
        while (true)
          if (localIterator.hasNext())
          {
            com.nianticproject.ingress.common.inventory.ui.q localq = (com.nianticproject.ingress.common.inventory.ui.q)localIterator.next();
            f localf2 = localq.h();
            ModResource localModResource1 = (ModResource)localf2.getComponent(ModResource.class);
            if (localModResource1 != null)
            {
              Table localTable = new Table(localf2.getGuid());
              Image localImage = new Image(g.a(localModResource1.getResourceType(), localModResource1.getRarity()));
              localImage.setScaling(Scaling.fit);
              localImage.setAlign(9);
              int i1 = localq.g();
              if (i1 > 1)
              {
                str = "x" + i1;
                Label localLabel2 = new Label(str, localLabelStyle);
                localLabel2.setAlignment(18);
                localTable.stack(new Actor[] { localImage, localLabel2 }).n().f().i().g(4.0F);
                this.r.addActor(localTable);
                af localaf1 = localq.a();
                com.nianticproject.ingress.gameentity.components.l locall3 = localq.d();
                if ((a(localaf1, locall3, (af)localObject4, locall2) > 0) || (a(localaf1, locall3, (af)localObject2, (com.nianticproject.ingress.gameentity.components.l)localObject3) < 0))
                  break label598;
                localObject8 = localaf1;
                localObject7 = locall3;
                localObject6 = localTable;
              }
            }
          }
        while (true)
        {
          localObject5 = localObject6;
          localObject3 = localObject7;
          localObject2 = localObject8;
          break;
          str = "";
          break label335;
          if (localObject5 != null)
            this.r.a(localObject5);
          Actor localActor = this.r.d();
          boolean bool1;
          label537: Label localLabel1;
          if (localActor != null)
          {
            this.z = localActor.name;
            g();
            ar localar = this.r;
            if (this.q.isEmpty())
              break label586;
            bool1 = true;
            localar.setVisible(bool1);
            localLabel1 = this.w;
            if (this.r.isVisible())
              break label592;
          }
          label586: label592: for (boolean bool2 = true; ; bool2 = false)
          {
            localLabel1.setVisible(bool2);
            this.r.layout();
            return;
            this.z = null;
            break;
            bool1 = false;
            break label537;
          }
          label598: localObject6 = localObject5;
          localObject7 = localObject3;
          localObject8 = localObject2;
        }
      }
    }
  }

  private void g()
  {
    Actor localActor = this.r.d();
    Iterator localIterator = this.r.getChildren().iterator();
    while (localIterator.hasNext())
      a((Actor)localIterator.next(), localActor);
  }

  private void h()
  {
    if (this.z != null)
    {
      f localf = this.d.a(this.z);
      if (localf == null)
        return;
      ModResource localModResource = (ModResource)localf.getComponent(ModResource.class);
      this.t.a(localModResource.getRarity().a());
      this.t.setColor(com.nianticproject.ingress.common.ui.l.a(this.l, localModResource.getRarity()));
      Modable localModable = (Modable)this.i.getComponent(Modable.class);
      this.f.a(new UpgradedModable(localModable, localModResource, this.k));
      Result localResult = b(localf);
      if (localResult.e())
      {
        this.u.a(" ");
        return;
      }
      com.nianticproject.ingress.common.ui.c localc = com.nianticproject.ingress.common.ui.c.a();
      this.u.a(localc.a((Enum)localResult.d()));
      return;
    }
    this.f.a(null);
    this.u.a("");
  }

  public final Actor a(Skin paramSkin)
  {
    this.l = ((Skin)an.a(paramSkin));
    this.m = paramSkin.getDrawable("item-disabled-selected");
    this.n = paramSkin.getDrawable("item-disabled-unselected");
    this.o = paramSkin.getDrawable("item-enabled-selected");
    this.p = paramSkin.getDrawable("item-enabled-unselected");
    Drawable localDrawable = com.nianticproject.ingress.common.b.c.a(paramSkin, ea.b);
    this.v = new w(" ", (Label.LabelStyle)paramSkin.get("details-title", Label.LabelStyle.class), 0.3F);
    this.v.a(8);
    float f1 = 0.2F * -this.v.getPrefHeight();
    float f2 = 0.12F * -this.v.getPrefHeight();
    this.v.padTop(f1).padBottom(f2);
    Table localTable1 = new Table();
    localTable1.add(this.v).k().l().o().i(this.v.getPrefHeight());
    this.u = new w(" ", (Label.LabelStyle)paramSkin.get("fc-error-message", Label.LabelStyle.class), 0.3F);
    Table localTable2 = new Table();
    localTable2.row();
    Actor[] arrayOfActor1 = new Actor[2];
    arrayOfActor1[0] = localTable1;
    arrayOfActor1[1] = this.u;
    localTable2.stack(arrayOfActor1).o().g();
    localTable2.setBackground(localDrawable);
    int i1 = (int)(0.25F * Gdx.graphics.getWidth());
    this.r = new ar(i1, (int)(0.9F * i1), (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("modBrowser2", WidgetCarousel.WidgetCarouselStyle.class));
    this.r.a(new m(this));
    this.w = new Label("No usable Mods", (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class));
    this.w.setAlignment(1);
    localTable2.row();
    Actor[] arrayOfActor2 = new Actor[2];
    arrayOfActor2[0] = this.r;
    arrayOfActor2[1] = this.w;
    localTable2.stack(arrayOfActor2).n();
    localTable2.row();
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.l.get("mod-details-stats", Label.LabelStyle.class);
    this.l.get("fc-error-message", Label.LabelStyle.class);
    this.s = new Table();
    this.s.defaults().o().g().i();
    this.t = new w("", localLabelStyle, 0.3F);
    this.t.left();
    this.s.clear();
    this.s.row();
    float f3 = 0.2F * -this.v.getPrefHeight();
    this.s.add(this.t).h(f3);
    localTable2.add(this.s).n();
    f();
    a();
    h();
    b();
    this.g = true;
    localTable2.pack();
    return localTable2;
  }

  protected final void a()
  {
    f localf = d();
    if (localf != null)
    {
      this.v.a(a(localf));
      if (this.c.a())
      {
        Result localResult = b(localf);
        if (!localResult.e())
        {
          this.u.a(com.nianticproject.ingress.common.ui.c.a().a((Enum)localResult.d()));
          this.u.addAction(Actions.fadeIn(0.5F));
          this.v.addAction(Actions.fadeOut(0.5F));
        }
      }
      else
      {
        return;
      }
      this.v.addAction(Actions.fadeIn(0.5F));
      this.u.addAction(Actions.fadeOut(0.5F));
      return;
    }
    this.v.a(a(null));
    this.u.addAction(Actions.fadeOut(0.5F));
  }

  public final void a(ActionButton paramActionButton)
  {
    this.y = paramActionButton;
  }

  public final boolean a(GameState paramGameState)
  {
    this.j = ((GameState)an.a(paramGameState));
    this.i = ((f)this.j.gameEntities.get(this.i.getGuid()));
    if (this.j.changedEntities.contains(this.i))
    {
      f();
      b();
      h();
    }
    return this.g;
  }

  public final void b()
  {
    com.nianticproject.ingress.common.ui.widget.c localc;
    f localf;
    com.nianticproject.ingress.common.ui.c localc1;
    if (this.y != null)
    {
      localc = this.y.b();
      localf = d();
      localc1 = com.nianticproject.ingress.common.ui.c.a();
      a.a(localc, this.i, this.d);
      if (localf != null)
        break label49;
      localc.a("");
    }
    label49: Result localResult;
    do
    {
      return;
      localResult = b(localf);
    }
    while (localResult.e());
    localc.a(localc1.a((Enum)localResult.d()));
  }

  public final void c()
  {
    this.g = false;
    ac.a(this.x);
    this.x = null;
    this.r.a(null);
  }

  public final f d()
  {
    if (this.z != null)
      return this.d.a(this.z);
    return null;
  }

  public final int e()
  {
    return this.k;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.l
 * JD-Core Version:    0.6.2
 */
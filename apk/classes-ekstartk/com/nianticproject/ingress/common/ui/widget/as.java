package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.WidgetGroup;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.scanner.visuals.s;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.r;

public final class as extends WidgetGroup
{
  private static final Color b = new Color(0.55F, 0.0F, 0.0F, 1.0F);
  public double a = 0.0D;
  private at c;
  private final Skin d;
  private final Stage e;
  private final boolean f;
  private final com.nianticproject.ingress.common.h.l g;
  private final Label.LabelStyle h;
  private float i = 2.0F;
  private final av[] j = new av[8];
  private final Button.ButtonStyle k;
  private final Image l;
  private final Label.LabelStyle m;
  private final Label.LabelStyle n;
  private final s o;
  private final k p;
  private av q = null;
  private boolean r = true;

  public as(at paramat, Skin paramSkin, Stage paramStage, boolean paramBoolean, com.nianticproject.ingress.common.h.l paraml, com.nianticproject.ingress.common.j.as paramas)
  {
    this.c = paramat;
    this.d = paramSkin;
    this.e = paramStage;
    this.f = paramBoolean;
    this.g = paraml;
    this.p = p.a().k();
    this.o = new s(this.p.n());
    this.o.a(Color.CLEAR);
    this.o.b(paramSkin.getColor("ochre-line"));
    this.o.b(0.03F);
    this.o.a(paramas);
    this.h = new Label.LabelStyle((Label.LabelStyle)paramSkin.get("owner-tag", Label.LabelStyle.class));
    this.h.background = c.a(paramSkin, new Color(1.0F, 1.0F, 1.0F, 0.7F));
    this.k = new Button.ButtonStyle(new TextureRegionDrawable(com.nianticproject.ingress.common.gameentity.g.b.findRegion("hex-button-up")), new TextureRegionDrawable(com.nianticproject.ingress.common.gameentity.g.b.findRegion("hex-button-down")), new TextureRegionDrawable(com.nianticproject.ingress.common.gameentity.g.b.findRegion("hex-button-checked")));
    this.m = ((Label.LabelStyle)paramSkin.get("tiny", Label.LabelStyle.class));
    this.n = ((Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class));
    for (r localr : r.values())
    {
      this.j[localr.a()] = new av(this, localr);
      addActor(this.j[localr.a()].c);
    }
    this.l = new Image(paramSkin.getDrawable("reddot"));
    this.l.setTouchable(Touchable.disabled);
    addActor(this.l);
    this.a = (0.7853981633974483D * Math.round(p.a().k().w() / 0.7853981633974483D));
  }

  private void a(av paramav)
  {
    if (this.q != null)
      this.q.c.setChecked(false);
    if (this.q != paramav)
      paramav.c.setChecked(true);
    if (paramav.c.isChecked());
    while (true)
    {
      this.q = paramav;
      d();
      return;
      paramav = null;
    }
  }

  private f b(r paramr)
  {
    return this.j[paramr.a()].b;
  }

  private void c()
  {
    this.i = 0.0F;
    for (r localr : r.values())
    {
      av localav = this.j[localr.a()];
      if (localav.k != null)
      {
        localav.k.clearActions();
        localav.k.addAction(Actions.sequence(Actions.visible(true), Actions.alpha(0.9F, 0.3F, null)));
      }
    }
  }

  private void d()
  {
    r localr;
    f localf;
    d locald;
    if (this.q != null)
    {
      localr = this.q.a;
      localf = this.q.b;
      locald = this.q.c;
    }
    while (true)
    {
      if (this.c != null)
        this.c.a(localr, localf);
      ej localej;
      if (this.o != null)
      {
        this.o.a(locald, 0.5F, 0.5F);
        localej = null;
        if (localf != null)
          break label87;
      }
      while (true)
      {
        this.o.a(localej);
        return;
        label87: localej = this.p.b(localf.getGuid());
      }
      locald = null;
      localf = null;
      localr = null;
    }
  }

  public final r a(r paramr, au paramau)
  {
    Object localObject1;
    int i1;
    label50: int i2;
    label53: r localr;
    f localf;
    if (this.q != null)
    {
      localObject1 = this.q.a;
      if ((localObject1 != null) && (localObject1 == paramr))
        localObject1 = r.a((-1 + (8 + ((r)localObject1).a())) % 8);
      if (localObject1 == null)
        break label126;
      i1 = ((r)localObject1).a();
      i2 = 1;
      if (i2 >= 8)
        break label138;
      localr = r.a((i1 + 8 - i2) % 8);
      if (localr == paramr)
        break label140;
      if (localObject1 == null)
        break label132;
      localf = b((r)localObject1);
    }
    label93: for (Object localObject2 = paramau.a((r)localObject1, localf, localr, b(localr)); ; localObject2 = localObject1)
    {
      i2++;
      localObject1 = localObject2;
      break label53;
      localObject1 = null;
      break;
      label126: i1 = 0;
      break label50;
      localf = null;
      break label93;
      return localObject1;
    }
  }

  public final void a()
  {
    this.c = null;
  }

  public final void a(Portal paramPortal, com.nianticproject.ingress.gameentity.g paramg)
  {
    while (true)
    {
      int i2;
      try
      {
        aj.a("ScannerResonatorPicker.setGameState");
        r[] arrayOfr = r.values();
        int i1 = arrayOfr.length;
        i2 = 0;
        if (i2 < i1)
        {
          r localr = arrayOfr[i2];
          av localav = this.j[localr.a()];
          String str = paramPortal.getResonatorAtOctant(localav.a);
          if (str == null)
            localav.a(null);
          else
            localav.a(paramg.getGameEntity(str));
        }
      }
      finally
      {
        aj.b();
      }
      aj.b();
      return;
      i2++;
    }
  }

  public final void a(r paramr)
  {
    if (paramr != null)
      if (this.j[paramr.a()] != this.q)
        a(this.j[paramr.a()]);
    while (this.q == null)
      return;
    this.q.c.setChecked(false);
    this.q = null;
    d();
  }

  public final void act(float paramFloat)
  {
    aj.a("ScannerResonatorPicker.act");
    super.act(paramFloat);
    if (this.i > 0.0F)
    {
      this.i -= paramFloat;
      if (this.i <= 0.0F)
        c();
    }
    aj.b();
  }

  protected final void drawChildren(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    aj.a("ScannerResonatorPicker.drawChildren");
    if (paramFloat == 1.0F)
      this.o.a(0.03F);
    if (this.r)
    {
      this.r = false;
      for (r localr : r.values())
      {
        av localav = this.j[localr.a()];
        localav.c.pack();
        double d1 = localav.a.b() + localav.l.a;
        float f3 = 0.5F * localav.l.getWidth();
        float f4 = 0.5F * localav.l.getHeight();
        float f5 = (float)Math.cos(d1);
        float f6 = 0.38F * f5 * localav.l.e.getWidth();
        if (Math.abs(f5) < 0.99F)
          f6 *= 0.81F;
        float f7 = localav.c.getPrefWidth();
        float f8 = localav.c.getPrefHeight();
        float f9 = 0.216F * (float)Math.sin(d1) * localav.l.e.getWidth();
        float f10 = f6 + f3 - 0.5F * f7;
        float f11 = f9 + f4 - 0.5F * f8;
        localav.c.setPosition(Math.round(f10), Math.round(f11));
        if (localav.k != null)
        {
          float f12 = 0.9F * f7;
          float f13 = localav.c.getX() + 0.5F * (f7 - f12);
          float f14 = f8 + localav.c.getY() + com.nianticproject.ingress.common.w.l.a(5.0F);
          localav.k.setWidth(f12);
          localav.k.setPosition(Math.round(f13), Math.round(f14));
        }
      }
      d locald = this.j[r.c.a()].c;
      float f1 = locald.getX() + 0.5F * locald.getWidth() - 0.5F * this.l.getWidth();
      float f2 = locald.getY() + 0.82F * locald.getHeight() - 0.5F * this.l.getHeight();
      this.l.setPosition(f1, f2);
    }
    super.drawChildren(paramSpriteBatch, paramFloat);
    aj.b();
  }

  public final float getPrefHeight()
  {
    return 0.432F * this.e.getWidth() + this.j[0].c.getHeight();
  }

  public final float getPrefWidth()
  {
    return 0.76F * this.e.getWidth() + this.j[0].c.getWidth();
  }

  public final void layout()
  {
    this.r = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.as
 * JD-Core Version:    0.6.2
 */
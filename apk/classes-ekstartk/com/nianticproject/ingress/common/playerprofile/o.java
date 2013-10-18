package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;
import com.nianticproject.ingress.shared.playerprofile.AvatarOptions;

final class o
  implements c, f, ac
{
  private final av a;
  private final ai b;
  private final int c;
  private t d;
  private s e;
  private AvatarView f;
  private Label g;
  private Table h;
  private Table i;
  private Table j;
  private WidgetCarousel k;
  private WidgetCarousel l;
  private h m;
  private h n;
  private a o;
  private a p;
  private j q;

  public o(j paramj, ai paramai, int paramInt, av paramav)
  {
    this.q = paramj;
    this.b = ((ai)an.a(paramai));
    this.c = paramInt;
    this.a = ((av)an.a(paramav));
    this.d = null;
  }

  private static Actor a(com.nianticproject.ingress.shared.playerprofile.a parama, Skin paramSkin, WidgetCarousel paramWidgetCarousel, e parame, a parama1)
  {
    Table localTable1 = new Table();
    localTable1.setBackground(new NinePatchDrawable(paramSkin.getPatch("avatar-color-picker-button-up")));
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("profiles-avatar-selection-layer-name", Label.LabelStyle.class);
    localTable1.add(new Label(parama.name() + ":", localLabelStyle)).o();
    paramWidgetCarousel.a(parame);
    localTable1.row();
    localTable1.add(paramWidgetCarousel).h(l.a(8.0F)).j(l.a(8.0F)).o().g();
    localTable1.row();
    localTable1.add(new Image(com.nianticproject.ingress.common.b.c.a(paramSkin, 46783))).o().g().c(l.a(1.0F));
    localTable1.row();
    localTable1.add(parama1).g(parama1.a()).o().g();
    Table localTable2 = new Table();
    Table localTable3 = new Table();
    localTable3.setBackground(paramSkin.getTiledDrawable("tile-diag"));
    localTable2.stack(new Actor[] { localTable3, localTable1 }).o().g();
    return localTable2;
  }

  public final j a()
  {
    return this.q;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Table localTable1 = new Table();
    localTable1.setWidth(paramStage.getWidth());
    localTable1.setHeight(paramStage.getHeight());
    Label localLabel = new Label("Select Agent Avatar", (Label.LabelStyle)paramSkin.get("profiles-avatar-title", Label.LabelStyle.class));
    Table localTable2 = new Table();
    localTable2.setBackground(new NinePatchDrawable(paramSkin.getPatch("default-panel")));
    float f1 = localLabel.getStyle().font.getCapHeight();
    localTable2.add(localLabel).o().k().c(1.35F * f1).h(0.2F * -f1).i(0.2F * f1);
    localTable1.add(localTable2).o().g();
    localTable1.row();
    this.h = new Table();
    Table localTable3 = new Table();
    int i1 = (int)(0.2F * paramStage.getWidth());
    this.m = new h(paramSkin, this.a);
    this.n = new h(paramSkin, this.a);
    float f2 = l.a(6.0F);
    this.o = new a(com.nianticproject.ingress.shared.playerprofile.a.b, paramSkin, this, f2);
    this.p = new a(com.nianticproject.ingress.shared.playerprofile.a.a, paramSkin, this, f2);
    this.k = new WidgetCarousel(i1, i1, (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("profiles-avatar-carousel", WidgetCarousel.WidgetCarouselStyle.class), this.m);
    localTable3.add(a(com.nianticproject.ingress.shared.playerprofile.a.b, paramSkin, this.k, new e(this), this.o)).o().g();
    localTable3.row();
    localTable3.add(new Image(com.nianticproject.ingress.common.b.c.a(paramSkin, 16755791))).b(l.a(2.0F)).c(l.a(8.0F));
    localTable3.row();
    this.l = new WidgetCarousel(i1, i1, (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("profiles-avatar-carousel", WidgetCarousel.WidgetCarouselStyle.class), this.n);
    localTable3.add(a(com.nianticproject.ingress.shared.playerprofile.a.a, paramSkin, this.l, new e(this), this.p)).o().g();
    this.h.add(localTable3).o().g().j().h(l.a(8.0F));
    this.h.row();
    Stack localStack = new Stack();
    Table localTable4 = new Table();
    Table localTable5 = new Table();
    this.f = new AvatarView(this.q, this.b, this.c, this.a, paramSkin);
    this.f.setTouchable(Touchable.disabled);
    localTable4.add(this.f).a(l.a(116.0F), l.a(116.0F)).j(l.a(24.0F));
    localTable5.add(localTable4).n().f().i();
    com.nianticproject.ingress.common.ui.widget.f localf1 = new com.nianticproject.ingress.common.ui.widget.f("DONE", paramSkin);
    localf1.addListener(new p(this));
    Table localTable6 = new Table();
    Table localTable7 = new Table();
    localTable6.add(localf1).b(3.5F * f1).c(1.85F * f1);
    localTable7.add(localTable6).n().m().l().j(l.a(8.0F));
    localStack.add(localTable4);
    localStack.add(localTable7);
    this.h.add(localStack).n().f().h(l.a(8.0F));
    this.i = new Table();
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(true);
    this.i.add(localProgressIndicator);
    this.j = new Table();
    this.g = new Label("", (Label.LabelStyle)paramSkin.get("profiles-avatar-error-label", Label.LabelStyle.class));
    com.nianticproject.ingress.common.ui.widget.f localf2 = new com.nianticproject.ingress.common.ui.widget.f("RETRY", paramSkin);
    localf2.addListener(new q(this));
    this.j.add(this.g);
    this.j.row();
    this.j.add(localf2).h(l.a(8.0F));
    Actor[] arrayOfActor = new Actor[3];
    arrayOfActor[0] = this.h;
    arrayOfActor[1] = this.i;
    arrayOfActor[2] = this.j;
    localTable1.stack(arrayOfActor).n().f().i(l.a(24.0F)).k(l.a(24.0F));
    paramStage.addActor(localTable1);
    a(t.c);
  }

  public final void a(s params)
  {
    this.e = ((s)an.a(params));
  }

  public final void a(t paramt)
  {
    if (this.d == paramt)
      return;
    this.d = ((t)an.a(paramt));
    this.h.setVisible(false);
    this.i.setVisible(false);
    this.j.setVisible(false);
    switch (r.a[this.d.ordinal()])
    {
    default:
      return;
    case 1:
      this.h.setVisible(true);
      return;
    case 2:
    case 3:
      this.i.setVisible(true);
      return;
    case 4:
      this.g.setText("Could not load avatar options.");
      this.j.setVisible(true);
      return;
    case 5:
    }
    this.g.setText("Could not set avatar.");
    this.j.setVisible(true);
  }

  public final void a(AvatarOptions paramAvatarOptions)
  {
    this.m.a(paramAvatarOptions.b());
    this.k.e();
    this.n.a(paramAvatarOptions.a());
    this.l.e();
    Actor localActor1 = this.m.a(this.q.b());
    if (localActor1 != null)
      this.k.a(localActor1);
    Actor localActor2 = this.n.a(this.q.c());
    if (localActor2 != null)
      this.l.a(localActor2);
    this.o.a(paramAvatarOptions.d(), this.q.d());
    this.p.a(paramAvatarOptions.c(), this.q.e());
  }

  public final void a(com.nianticproject.ingress.shared.playerprofile.a parama, int paramInt)
  {
    switch (r.b[parama.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      this.f.a(this.q);
      return;
      this.q = this.q.a().a(Integer.valueOf(paramInt)).a();
      continue;
      this.q = this.q.a().b(Integer.valueOf(paramInt)).a();
    }
  }

  public final void a(com.nianticproject.ingress.shared.playerprofile.a parama, AvatarLayerOption paramAvatarLayerOption)
  {
    switch (r.b[parama.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      this.f.a(this.q);
      return;
      this.q = this.q.a().a(paramAvatarLayerOption).a();
      continue;
      this.q = this.q.a().b(paramAvatarLayerOption).a();
    }
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.f.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.o
 * JD-Core Version:    0.6.2
 */
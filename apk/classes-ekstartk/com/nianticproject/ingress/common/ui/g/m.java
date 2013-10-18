package com.nianticproject.ingress.common.ui.g;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.scanner.em;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel.ScrollLabelStyle;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle;
import com.nianticproject.ingress.common.ui.widget.bc;

public final class m extends a
{
  private final av a;
  private final em b;
  private final com.nianticproject.ingress.common.model.k c;
  private final s d;
  private Skin e;
  private Table f;
  private k g;
  private WidgetCarousel h;
  private q i;
  private int j;
  private int k;
  private ScrollLabel l;
  private ScrollLabel m;
  private final t n = new n(this);
  private final bc o = new o(this);
  private final l p = new p(this);

  public m(av paramav, em paramem, com.nianticproject.ingress.common.model.k paramk, s params)
  {
    this.a = paramav;
    this.b = paramem;
    this.c = paramk;
    this.d = params;
    params.a(this.n);
  }

  public final void a()
  {
    if (this.i.a() != true)
      q.c(this.i);
  }

  public final void a(int paramInt)
  {
    h[] arrayOfh = this.g.a();
    int i1 = arrayOfh.length;
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfh[i2].a(-1);
    if (this.h != null)
    {
      h localh = (h)this.h.f();
      if (localh != null)
        localh.a(paramInt);
    }
  }

  public final void a(com.nianticproject.ingress.common.inventory.ui.q paramq)
  {
    h localh = this.g.a(paramq);
    if (localh != null)
      this.h.a(localh);
  }

  public final void a(boolean paramBoolean)
  {
    this.f.setVisible(paramBoolean);
  }

  public final boolean a(float paramFloat)
  {
    boolean bool = super.a(paramFloat);
    this.g.c();
    return bool;
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.e = paramSkin;
    this.f = new Table();
    WidgetCarousel.WidgetCarouselStyle localWidgetCarouselStyle = (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("portalKeyChooser", WidgetCarousel.WidgetCarouselStyle.class);
    this.j = ((int)(0.45F * paramStage.getWidth()));
    this.k = ((int)(0.3F * paramStage.getHeight()));
    this.g = new k(this.d, this.p);
    this.h = new WidgetCarousel(this.j, this.k, localWidgetCarouselStyle, this.g);
    this.h.a(this.o);
    this.i = new q(this, paramSkin, this.f, paramStage);
    this.f.add(this.i).a(e.a(0.08F)).b(e.a(0.24F)).a(Integer.valueOf(2));
    Table localTable = new Table();
    localTable.setBackground(this.e.getDrawable("default-panel"));
    this.f.stack(new Actor[] { localTable }).n().f();
    this.l = new ScrollLabel(" ", new ScrollLabel.ScrollLabelStyle(this.e.getFont("small-font"), this.e.getColor("buttonblue"), 20.0F, 30, true));
    localTable.add(this.l).o().a(Integer.valueOf(1));
    localTable.row();
    this.m = new ScrollLabel(" ", new ScrollLabel.ScrollLabelStyle(this.e.getFont("x-small-font"), this.e.getColor("buttonblue"), 20.0F, 45, true));
    localTable.add(this.m).o().a(Integer.valueOf(1));
    localTable.row();
    localTable.add(this.h).n().f();
    localTable.row();
    this.f.setX(paramStage.getWidth());
    this.f.setY(com.nianticproject.ingress.common.w.l.a(60.0F) + new ActionButton("TEXT", "", this.e).getPrefHeight());
    this.f.setWidth(paramStage.getWidth());
    this.f.setHeight(this.f.getPrefHeight());
    return this.f;
  }

  public final void b()
  {
    boolean bool = this.i.a();
    if ((bool) && (this.h != null))
      this.o.b(this.h.d());
    this.b.b(bool);
  }

  public final void b(float paramFloat)
  {
    this.f.setY(paramFloat);
  }

  public final void dispose()
  {
    this.g.d();
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.m
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui.hud;

import com.a.a.c;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.inventory.ui.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.j;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel.ScrollLabelStyle;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;

final class g extends a
{
  private Table a;
  private Label b;
  private final k c;
  private final f d;
  private final j e;
  private final Rectangle f;
  private final String g;
  private final com.nianticproject.ingress.common.w.a h = new com.nianticproject.ingress.common.w.a();
  private final com.nianticproject.ingress.common.model.l i = new h(this);

  private g(k paramk, f paramf, j paramj, Rectangle paramRectangle, String paramString)
  {
    this.c = paramk;
    this.g = paramString;
    an.a(paramf.getComponent(Portal.class));
    this.d = paramf;
    this.e = paramj;
    this.f = paramRectangle;
    paramk.a(this.i);
    this.h.a(((ad)an.a(paramk.g())).a());
    b();
  }

  private Label a(Label.LabelStyle paramLabelStyle)
  {
    this.b = new Label("", paramLabelStyle);
    b();
    return this.b;
  }

  private Label a(Label.LabelStyle paramLabelStyle, boolean paramBoolean)
  {
    if (paramBoolean)
      return new com.nianticproject.ingress.common.ui.widget.g(this.e.d(), paramLabelStyle, 0);
    ScrollLabel.ScrollLabelStyle localScrollLabelStyle = new ScrollLabel.ScrollLabelStyle(paramLabelStyle.font, paramLabelStyle.fontColor, 20.0F, 30, true);
    return new ScrollLabel(this.e.d(), localScrollLabelStyle);
  }

  private Label a(Skin paramSkin, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1);
    for (Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("default-dialog", Label.LabelStyle.class); paramBoolean2; localLabelStyle = (Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class))
      return new com.nianticproject.ingress.common.ui.widget.g(this.e.c(), localLabelStyle, 0);
    return new Label(av.a(this.e), localLabelStyle);
  }

  private static void a(Table paramTable)
  {
    paramTable.defaults().k().i(4.0F).k(4.0F);
  }

  private Label b(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("default-dialog", Label.LabelStyle.class);
    Portal localPortal = (Portal)this.d.getComponent(Portal.class);
    return new Label(localPortal.getLevelName(), com.nianticproject.ingress.common.ui.l.a(paramSkin, localLabelStyle, localPortal.getLevel()));
  }

  private void b()
  {
    if (this.b == null);
    LocationE6 localLocationE6;
    do
    {
      return;
      localLocationE6 = (LocationE6)this.d.getComponent(LocationE6.class);
    }
    while (localLocationE6 == null);
    float f1 = (float)this.h.a().a(localLocationE6.getLatLng());
    this.b.setText("Distance: " + com.nianticproject.ingress.common.ui.l.a(f1));
  }

  protected final Actor a(Skin paramSkin)
  {
    PortalInfoHud.PortalInfoHudStyle localPortalInfoHudStyle;
    if (!br.b(this.g))
    {
      localPortalInfoHudStyle = (PortalInfoHud.PortalInfoHudStyle)paramSkin.get(this.g, PortalInfoHud.PortalInfoHudStyle.class);
      float f1 = com.nianticproject.ingress.common.w.l.a(2.0F);
      float f2 = com.nianticproject.ingress.common.w.l.a(8.0F);
      this.a = new Table();
      if (!localPortalInfoHudStyle.useRemotePortalViewStyle)
        break label258;
      this.a.defaults().o().g().k().i(f2);
      Table localTable4 = new Table();
      localTable4.add(b(paramSkin));
      localTable4.add(a(paramSkin, true, true)).i(f1).o().g();
      this.a.add(localTable4).j(f1);
      this.a.row();
      this.a.add(a(localPortalInfoHudStyle.addressLabelStyle, true));
      this.a.row();
      this.a.add(a(localPortalInfoHudStyle.rangeLabelStyle));
      this.a.setWidth(this.a.getPrefWidth());
      label196: if (this.f == null)
        break label522;
    }
    label258: label522: for (float f3 = this.f.height; ; f3 = 0.0F)
    {
      this.a.setHeight(f3 + this.a.getPrefHeight());
      this.a.setBackground(localPortalInfoHudStyle.background);
      return this.a;
      localPortalInfoHudStyle = (PortalInfoHud.PortalInfoHudStyle)paramSkin.get(PortalInfoHud.PortalInfoHudStyle.class);
      break;
      this.a.defaults().k().j(2.0F);
      Table localTable1 = new Table();
      a(localTable1);
      Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("default-dialog", Label.LabelStyle.class);
      this.d.getComponent(Portal.class);
      Label localLabel1 = b(paramSkin);
      Label localLabel2 = new Label("Portal", localLabelStyle);
      Table localTable2 = new Table();
      a(localTable2);
      localTable2.add(localLabel1);
      localTable2.add(localLabel2);
      localTable1.add(localTable2).k();
      localTable1.row();
      localTable1.add(a(paramSkin, false, false));
      localTable1.row();
      localTable1.add(a(localPortalInfoHudStyle.addressLabelStyle, false));
      localTable1.setBackground(paramSkin.getDrawable("default-message-window"));
      localTable1.setWidth(localTable1.getPrefWidth());
      localTable1.setHeight(localTable1.getPrefHeight());
      Table localTable3 = new Table();
      a(localTable3);
      a(localPortalInfoHudStyle.rangeLabelStyle);
      localTable3.add(this.b);
      localTable3.setBackground(paramSkin.getDrawable("nav-button"));
      this.a.add(localTable1);
      this.a.row();
      this.a.add(localTable3);
      break label196;
    }
  }

  public final void a()
  {
    dispose();
  }

  protected final void b(Rectangle paramRectangle)
  {
    if (this.f != null)
    {
      this.a.setY(this.f.y - this.a.getHeight());
      this.a.setX(this.f.x);
      this.a.setWidth(this.f.width);
      this.a.padTop(this.f.height);
      return;
    }
    this.a.setY(paramRectangle.y + paramRectangle.height);
    this.a.setX(paramRectangle.x + paramRectangle.width / 2.0F - this.a.getWidth() / 2.0F);
  }

  public final void dispose()
  {
    this.c.b(this.i);
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.g
 * JD-Core Version:    0.6.2
 */
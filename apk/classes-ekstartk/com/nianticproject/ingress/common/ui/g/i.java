package com.nianticproject.ingress.common.ui.g;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.n;

final class i
  implements a
{
  private final q a;
  private final Skin b;
  private final Button c;
  private final Table d;
  private final Image e;
  private final Label f;
  private final Table g;
  private final Label h;
  private final d i;

  public i(Button paramButton, q paramq, av paramav, k paramk, Skin paramSkin, int paramInt, n paramn)
  {
    this.c = paramButton;
    this.a = paramq;
    this.b = paramSkin;
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(true);
    this.d = new Table();
    this.d.add(localProgressIndicator).o().i();
    this.e = new Image(null, Scaling.fit);
    this.f = new Label("", paramSkin);
    this.f.setAlignment(18);
    this.g = new Table();
    this.g.setBackground(paramSkin.getDrawable("level-background"));
    this.g.add(this.f).i(5.0F).k(5.0F);
    Table localTable1 = new Table();
    localTable1.add(this.g).n().a(Integer.valueOf(18));
    Actor[] arrayOfActor = new Actor[3];
    arrayOfActor[0] = this.d;
    arrayOfActor[1] = this.e;
    arrayOfActor[2] = localTable1;
    paramButton.stack(arrayOfActor).n().f().g(5.0F);
    u localu = ((PortalCoupler)an.a(paramq.h().getComponent(PortalCoupler.class))).getPortalLocation();
    paramButton.row();
    Table localTable2 = new Table();
    this.h = new Label(l.a((float)paramk.g().a().a(localu)), (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class));
    localTable2.add(this.h).o().k().l();
    ai localai = paramk.h();
    TextureRegion localTextureRegion;
    Image localImage;
    label362: String str;
    if (localai == ai.b)
    {
      localTextureRegion = paramSkin.getRegion("portal-faction-aliens");
      localImage = new Image(localTextureRegion);
      localTable2.add(localImage);
      if (paramq.g() <= 1)
        break label566;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramq.g());
      str = String.format("[ %d ]", arrayOfObject);
      label404: localTable2.add(new Label(str, (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class))).m();
      paramButton.add(localTable2).o().g().h(-4.0F).i(5.0F).k(5.0F);
      if (paramn != null)
        break label572;
    }
    label566: label572: for (Color localColor = this.b.getColor("primary-info"); ; localColor = this.b.getColor("orange"))
    {
      this.h.setColor(localColor);
      this.c.setStyle(j.a(this.b, paramn));
      a(paramInt);
      this.i = paramav.a(com.nianticproject.ingress.gameentity.components.f.a(paramq.h(), ""), (int)Math.max(paramButton.getPrefWidth(), paramButton.getPrefHeight()));
      return;
      if (localai == ai.a)
      {
        localTextureRegion = paramSkin.getRegion("portal-faction-resistance");
        break;
      }
      localImage = null;
      break label362;
      str = null;
      break label404;
    }
  }

  public final String a()
  {
    return ((PortalCoupler)this.a.h().getComponent(PortalCoupler.class)).getPortalTitle();
  }

  public final void a(int paramInt)
  {
    if (paramInt < 0)
    {
      this.g.setVisible(false);
      return;
    }
    this.g.setVisible(true);
    Label localLabel = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localLabel.setText(String.format("L%d", arrayOfObject));
    this.f.setStyle(l.a(this.b, new Label.LabelStyle(this.b.getFont("small-font"), Color.WHITE), paramInt));
  }

  public final String b()
  {
    return ((PortalCoupler)this.a.h().getComponent(PortalCoupler.class)).getPortalAddress();
  }

  public final void c()
  {
    this.i.d();
  }

  public final void d()
  {
    if ((this.i != null) && (this.i.a()) && (this.e.getDrawable() == null))
    {
      this.e.setDrawable(new TextureRegionDrawable(this.i.b()));
      this.d.setVisible(false);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.i
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.em;
import com.nianticproject.ingress.common.ui.g.s;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.i;
import com.nianticproject.ingress.shared.n;

final class ap extends com.nianticproject.ingress.common.ui.elements.a
{
  private ActionButton b;
  private ActionButton c;
  private Table d;

  private ap(ah paramah)
  {
  }

  private void b()
  {
    u localu = ah.k(this.a).g().a();
    if ((ah.j(this.a) == null) || (!i.a(ah.l(this.a).getEntity(), localu)))
    {
      this.b.b().a("Local portal out of range");
      return;
    }
    String str1 = ah.j(this.a).b();
    q localq = com.nianticproject.ingress.common.gameentity.a.a(ah.k(this.a), str1);
    if (localq == null)
    {
      this.b.b().a("No Key for Portal");
      return;
    }
    n localn = ah.m(this.a).d(localq);
    if (localn != null)
    {
      String str2 = com.nianticproject.ingress.common.ui.c.a().a(localn);
      this.b.b().a(str2);
      return;
    }
    this.b.b().a(true);
  }

  public final float a()
  {
    if (this.d != null)
      return this.d.getY() + this.d.getHeight();
    return -1.0F;
  }

  public final boolean a(float paramFloat)
  {
    return (super.a(paramFloat)) && (ah.d(this.a) != null);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.b = new ActionButton("CONFIRM", null, paramSkin);
    this.b.a(new aq(this));
    this.c = new ActionButton("CANCEL", null, paramSkin);
    this.c.a(new ar(this));
    int i = (int)this.c.getPrefHeight();
    this.d = new Table();
    this.d.add(this.b).a(e.a(0.33F)).n().f().k().i(i);
    this.d.add(this.c).a(e.a(0.33F)).n().f().m().k(i);
    this.d.row();
    this.d.setWidth(paramStage.getWidth());
    this.d.setHeight(this.d.getPrefHeight());
    this.d.setX(0.0F);
    this.d.setY(l.a(60.0F));
    b();
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ap
 * JD-Core Version:    0.6.2
 */
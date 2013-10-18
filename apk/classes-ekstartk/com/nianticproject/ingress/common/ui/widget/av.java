package com.nianticproject.ingress.common.ui.widget;

import com.a.a.e;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.nianticproject.ingress.common.b.n;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.r;

final class av
{
  final r a;
  f b;
  final d c;
  final Label d;
  final Label e;
  final v f;
  final az g;
  final az h;
  final Drawable i;
  final n j;
  ah k;

  av(as paramas, r paramr)
  {
    this.a = paramr;
    this.g = new az(as.a(paramas).getDrawable("energy-bar-border-white"), Color.WHITE);
    this.j = new n(Color.WHITE);
    this.i = com.nianticproject.ingress.common.b.c.a(as.a(paramas).getDrawable("energy-bar-full-replace"), this.j);
    Drawable localDrawable = com.nianticproject.ingress.common.b.c.a(as.a(paramas).getDrawable("energy-bar-full-replace"), as.b());
    this.h = new az(as.a(paramas).getDrawable("white"), Color.WHITE);
    this.d = new Label("LEVEL", as.a(paramas));
    this.e = new Label("0", as.a(paramas));
    this.e.setStyle(l.a(as.a(paramas), as.b(paramas), 1));
    this.d.setStyle(l.a(as.a(paramas), as.c(paramas), 1));
    this.f = new v(this.g, this.i, localDrawable, this.h);
    a(ea.c);
    Table localTable1 = new Table();
    localTable1.add(this.d);
    localTable1.row();
    float f1 = Math.round(this.d.getPrefWidth());
    float f2 = Math.round(0.38F * this.d.getPrefHeight());
    localTable1.add(this.f).d(f1).e(f2);
    Table localTable2 = new Table();
    localTable2.add(localTable1);
    localTable2.add(this.e).f(e.b(0.02F));
    this.c = new d(localTable2, as.d(paramas));
    localTable2.pack();
    this.c.setWidth(1.55F * localTable2.getWidth());
    this.c.setHeight(1.55F * localTable2.getWidth());
    this.c.addListener(new aw(this, paramas));
    a(null);
  }

  private void a(Color paramColor)
  {
    this.g.a(paramColor);
    this.h.a(paramColor);
    this.j.a(paramColor);
  }

  final void a(f paramf)
  {
    int m;
    Object localObject;
    if (this.b != paramf)
    {
      m = 1;
      this.b = paramf;
      if ((this == as.f(this.l)) && (m != 0))
        as.g(this.l);
      localObject = ai.c;
      if ((paramf != null) && (!com.nianticproject.ingress.common.h.c.a(paramf.getGuid())))
        break label169;
      this.c.setVisible(true);
      if (!as.h(this.l))
      {
        this.c.getColor().a = 0.3F;
        this.c.setTouchable(Touchable.disabled);
      }
      this.d.setVisible(false);
      this.e.setVisible(false);
      this.f.setVisible(false);
      if (this.k != null)
      {
        this.k.addAction(Actions.sequence(Actions.fadeOut(0.5F, Interpolation.fade), Actions.removeActor()));
        this.k = null;
      }
    }
    while (true)
    {
      a(ea.a((ai)localObject));
      return;
      m = 0;
      break;
      label169: this.c.setVisible(true);
      this.c.getColor().a = 1.0F;
      this.c.setTouchable(Touchable.enabled);
      this.d.setVisible(true);
      this.e.setVisible(true);
      this.f.setVisible(true);
      Resonator localResonator = (Resonator)paramf.getComponent(Resonator.class);
      ai localai = b.a(paramf);
      this.e.setText(localResonator.getLevel());
      this.e.setStyle(l.a(as.a(this.l), as.b(this.l), localResonator.getLevel()));
      this.d.setStyle(l.a(as.a(this.l), as.c(this.l), localResonator.getLevel()));
      Energy localEnergy = (Energy)paramf.getComponent(Energy.class);
      if (localEnergy != null)
      {
        float f1 = localEnergy.getTotal() / localResonator.getEnergyCapacity();
        this.f.a(f1);
      }
      if (this.k == null)
      {
        as.i(this.l).font.getLineHeight();
        this.k = new ah(as.j(this.l), as.i(this.l));
        this.k.getColor().a = 0.0F;
        this.k.setVisible(false);
        this.k.setHeight(0.8F * as.i(this.l).font.getLineHeight());
        this.l.addActor(this.k);
      }
      this.k.a(localResonator.getOwnerId());
      Color localColor = ea.a(localai);
      this.k.setColor(localColor.r, localColor.g, localColor.b, this.k.getColor().a);
      localObject = localai;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.av
 * JD-Core Version:    0.6.2
 */
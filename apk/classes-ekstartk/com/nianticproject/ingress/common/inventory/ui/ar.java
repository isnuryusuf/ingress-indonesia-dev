package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.ui.elements.HighLowWatermarkBar;
import com.nianticproject.ingress.common.ui.elements.HighLowWatermarkBar.Style;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.ai;
import java.util.Collections;
import java.util.List;

final class ar extends h
{
  private final com.nianticproject.ingress.common.model.k d;
  private final com.nianticproject.ingress.common.g.e e;
  private final String f;
  private final com.nianticproject.ingress.common.h.l g;
  private final at h;
  private f i;
  private Table j;
  private com.nianticproject.ingress.common.ui.widget.g k;
  private com.nianticproject.ingress.common.ui.widget.g l;
  private List<HighLowWatermarkBar> m = eq.a();
  private com.nianticproject.ingress.common.h.g n = null;
  private long o;

  public ar(q paramq, com.nianticproject.ingress.common.j.e parame, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.g.e parame1, com.nianticproject.ingress.common.h.l paraml, at paramat, int paramInt)
  {
    super(paramq, parame, paramInt);
    this.d = ((com.nianticproject.ingress.common.model.k)an.a(paramk));
    this.e = ((com.nianticproject.ingress.common.g.e)an.a(parame1));
    this.g = ((com.nianticproject.ingress.common.h.l)an.a(paraml));
    this.h = ((at)an.a(paramat));
    paramq.h();
    this.f = ((PortalCoupler)paramq.h().getComponent(PortalCoupler.class)).getPortalGuid();
    c();
  }

  private void a(long paramLong)
  {
    if (this.n == null)
    {
      this.o = System.currentTimeMillis();
      this.n = this.g.a(Collections.singletonList(this.f), Collections.singletonList(Long.valueOf(paramLong)), new au(this, (byte)0), new as(this, "PortalEntityUpdate.Cancelled"));
    }
  }

  public final Actor a(Skin paramSkin)
  {
    Table localTable = new Table();
    localTable.setBackground(paramSkin.getDrawable("opaque-outline"));
    if ((this.c == null) || (!this.c.a()))
    {
      ScrollLabel localScrollLabel = new ScrollLabel("obtaining fix...", (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class));
      localScrollLabel.addAction(com.nianticproject.ingress.common.ui.a.a.a(localScrollLabel, 2.0F));
      localScrollLabel.a();
      ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
      localProgressIndicator.a(true);
      this.j = new Table();
      this.j.add(localProgressIndicator).o().i();
      this.j.row();
      this.j.add(localScrollLabel).o().i();
      Actor[] arrayOfActor = new Actor[2];
      arrayOfActor[0] = this.j;
      arrayOfActor[1] = this.b;
      localTable.stack(arrayOfActor).n().f();
      return localTable;
    }
    localTable.add(this.b).n().f();
    return localTable;
  }

  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if ((!paramBoolean) && (this.n != null))
      this.n.b();
  }

  public final Actor b(Skin paramSkin)
  {
    Actor localActor1 = d(paramSkin);
    Actor localActor2 = f(paramSkin);
    Actor localActor3 = e(paramSkin);
    ai localai1;
    TextureRegion localTextureRegion;
    label99: Image localImage;
    label110: Table localTable2;
    Table localTable3;
    int i1;
    label235: float f1;
    HighLowWatermarkBar.Style localStyle;
    if (this.i != null)
    {
      localai1 = ((ControllingTeam)this.i.getComponent(ControllingTeam.class)).getTeam();
      float[] arrayOfFloat = com.nianticproject.ingress.gameentity.components.k.b(this.i, new PortalKeyItemCard.1(this));
      this.m.clear();
      Table localTable1 = new Table();
      if (localai1 != ai.b)
        break label357;
      localTextureRegion = paramSkin.getRegion("portal-faction-aliens");
      localImage = new Image(localTextureRegion);
      localTable1.add(localActor1).k().i();
      localTable1.add(localActor2).o().k().f(com.a.a.e.b(0.08F));
      if (localImage != null)
        localTable1.add(localImage).m().l().g(com.a.a.e.b(0.1F));
      localTable1.add(localActor3).m().f(com.a.a.e.b(0.06F));
      localTable2 = new Table();
      localTable2.add(localTable1).o().g();
      localTable2.row();
      localTable3 = new Table();
      i1 = 7;
      if (i1 < 0)
        break label428;
      f1 = arrayOfFloat[i1];
      if (localai1 != ai.b)
        break label384;
      localStyle = (HighLowWatermarkBar.Style)paramSkin.get("portalXmProgress-aliens", HighLowWatermarkBar.Style.class);
    }
    while (true)
    {
      HighLowWatermarkBar localHighLowWatermarkBar = new HighLowWatermarkBar(localStyle);
      localHighLowWatermarkBar.a().a(f1, false);
      localHighLowWatermarkBar.pack();
      localTable3.add(localHighLowWatermarkBar).o().a(Float.valueOf(0.95F), Float.valueOf(1.0F)).c(0.75F * localHighLowWatermarkBar.getHeight());
      this.m.add(localHighLowWatermarkBar);
      i1--;
      break label235;
      localai1 = null;
      break;
      label357: ai localai2 = ai.a;
      localImage = null;
      if (localai1 != localai2)
        break label110;
      localTextureRegion = paramSkin.getRegion("portal-faction-resistance");
      break label99;
      label384: if (localai1 == ai.a)
        localStyle = (HighLowWatermarkBar.Style)paramSkin.get("portalXmProgress-resistance", HighLowWatermarkBar.Style.class);
      else
        localStyle = (HighLowWatermarkBar.Style)paramSkin.get("portalXmProgress-neutral", HighLowWatermarkBar.Style.class);
    }
    label428: localTable2.add(localTable3).o().g().f(com.a.a.e.a(0.05F)).h(com.a.a.e.a(0.05F));
    return localTable2;
  }

  public final Actor c(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("inventory-footer", Label.LabelStyle.class);
    PortalCoupler localPortalCoupler = (PortalCoupler)this.a.h().getComponent(PortalCoupler.class);
    this.k = new com.nianticproject.ingress.common.ui.widget.g(localPortalCoupler.getPortalTitle(), localLabelStyle, 8);
    this.l = new com.nianticproject.ingress.common.ui.widget.g(localPortalCoupler.getPortalAddress(), localLabelStyle, 0);
    Label localLabel = new Label(com.nianticproject.ingress.common.ui.l.a((float)((ad)an.a(this.d.g())).a().a(localPortalCoupler.getPortalLocation())), localLabelStyle);
    Table localTable = new Table();
    localTable.add(this.k).b(Integer.valueOf(2)).o().g();
    localTable.row();
    localTable.add(this.l).o().g();
    localTable.add(localLabel);
    return localTable;
  }

  public final boolean c()
  {
    long l1 = 1000 * com.nianticproject.ingress.common.q.f().g();
    long l2 = System.currentTimeMillis();
    if (this.i != null);
    for (long l3 = this.i.getLastModifiedMs(); (l2 - l3 <= l1) || (l2 - this.o <= l1); l3 = 0L)
      return false;
    this.i = this.e.a(this.f);
    if (this.i != null)
    {
      long l4 = this.i.getLastModifiedMs();
      if (l2 - l4 > l1)
        a(l4);
    }
    while (true)
    {
      return true;
      a(0L);
    }
  }

  protected final Actor d(Skin paramSkin)
  {
    if (this.i == null)
    {
      ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
      localProgressIndicator.a(true);
      return localProgressIndicator;
    }
    int i1 = ((Portal)this.i.getComponent(Portal.class)).getLevel();
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("inventory-header", Label.LabelStyle.class);
    Label localLabel = new Label(com.nianticproject.ingress.gameentity.components.a.b(i1), com.nianticproject.ingress.common.ui.l.a(paramSkin, localLabelStyle, i1));
    localLabel.setAlignment(8);
    return localLabel;
  }

  public final void d()
  {
    super.d();
    if ((this.c != null) && (this.c.a()) && (this.j != null))
    {
      this.j.remove();
      this.j = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ar
 * JD-Core Version:    0.6.2
 */
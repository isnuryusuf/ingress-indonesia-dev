package com.nianticproject.ingress.common.factionchoice;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.missions.a.a;
import com.nianticproject.ingress.common.missions.a.j;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.ui.widget.h;
import com.nianticproject.ingress.common.ui.widget.z;

public final class ba extends a
{
  private final z d;
  private Table e;
  private ScrollLabel f;
  private Skin g;
  private boolean h = false;

  public ba(ad paramad, z paramz, t paramt)
  {
    super(paramad, paramt);
    this.d = paramz;
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    this.e = new Table();
    this.e.setX(0.0F);
    this.e.setWidth(paramFloat);
    this.f = new ScrollLabel("EXEC->PATCH.JARVIS.*\nWRITING.\nWRITE OK.\n", (Label.LabelStyle)paramSkin.get("jarvis-terminal", Label.LabelStyle.class), 60.0F);
    this.f.setWrap(true);
    this.f.setWidth(paramFloat * 0.9F);
    this.f.layout();
    this.e.add(this.f).j().k().g(15.0F).a(e.a(0.9F)).b(e.a());
    this.g = paramSkin;
    return this.e;
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    Label localLabel = new Label("Welcome, friend, to the struggle for a brighter age.  Recruit the like minded for the Enlightened.\n\nSeek the future.  Find a nearby Portal.  Claim it.  XM is power.  XM is evolution.  XM is all.  Spread the enlightenment.\n\n- Collect XM\n- Discover and claim new Portals\n- Link Portals to form XM Fields\n- Dismantle Resistance XM Fields\n\n", (Label.LabelStyle)paramSkin.get("jarvis-message-label", Label.LabelStyle.class));
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    localLabel.setWidth(paramFloat * 0.9F);
    localLabel.layout();
    h localh = new h(localLabel, new ScrollPane.ScrollPaneStyle(), 0.0F, bs.l.c(), 0.05F);
    localh.setScrollPercentY(0.0F);
    localh.setScrollingDisabled(true, false);
    Table localTable = new Table();
    localTable.setX(0.0F);
    localTable.setWidth(paramFloat);
    localTable.add(localh).l().k().a(e.a(0.9F)).b(e.b(0.9F)).g(15.0F).e(e.b(0.1F));
    return localTable;
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, paramFloat, this.d, null, "Proceed", "", false);
  }

  protected final void e()
  {
    j localj = new j(-0.05F, 0.45F);
    localj.b(2.0F);
    a(localj);
    a(this.c);
  }

  protected final boolean r_()
  {
    if ((this.f.b()) && (!this.h))
    {
      this.e.add(new Label("PATCH INSTALLED.", this.g, "jarvis-terminal-red"));
      this.h = true;
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.ba
 * JD-Core Version:    0.6.2
 */
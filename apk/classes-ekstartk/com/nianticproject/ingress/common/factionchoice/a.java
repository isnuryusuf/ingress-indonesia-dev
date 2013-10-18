package com.nianticproject.ingress.common.factionchoice;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.ProgressBar;
import com.nianticproject.ingress.common.ui.widget.an;
import com.nianticproject.ingress.common.ui.widget.ao;
import com.nianticproject.ingress.common.ui.widget.h;
import com.nianticproject.ingress.common.ui.widget.z;

public final class a extends com.nianticproject.ingress.common.missions.a.a
  implements ao
{
  private final z d;
  private Table e;
  private Table f;
  private Label g;

  public a(ad paramad, z paramz, t paramt)
  {
    super(paramad, paramt);
    this.d = paramz;
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    this.e = new Table();
    this.e.setX(0.0F);
    this.e.setY(0.0F);
    this.e.setWidth(paramFloat);
    this.e.pad(15.0F);
    this.g = new Label("Authenticating operative code", (Label.LabelStyle)paramSkin.get("fc-message", Label.LabelStyle.class));
    this.e.add(this.g).o().g().k();
    this.e.row();
    ProgressBar localProgressBar = new ProgressBar(paramSkin);
    localProgressBar.a().a(0.666F, false);
    localProgressBar.a().a(1.0F, true);
    localProgressBar.a(this);
    this.e.add(localProgressBar).o().g().i().g(50.0F);
    this.e.row();
    return this.e;
  }

  public final void a(float paramFloat)
  {
    if ((paramFloat >= 1.0F) && (!this.f.isVisible()))
    {
      this.f.setVisible(true);
      this.g.setText("Authentication complete.");
    }
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    Label localLabel = new Label("Authentication complete.  You are now a Humanist agent.  Our struggle is only beginning.  If you know others who want to save the future, initiate them.\n\nKeep Exploring.  Find a Portal near you.  Claim it.  Save humanity.  Save yourself.  Resist corrupting thoughts.\n\n- Collect XM\n- Discover and claim new Portals\n- Link Portals to form XM Fields\n- Dismantle Enlightened XM Fields\n\n", (Label.LabelStyle)paramSkin.get("message-label", Label.LabelStyle.class));
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    localLabel.setWidth(paramFloat * 0.9F);
    localLabel.layout();
    h localh = new h(localLabel, new ScrollPane.ScrollPaneStyle(), 0.0F, bs.j.c(), 0.05F);
    localh.setScrollPercentY(0.0F);
    localh.setScrollingDisabled(true, false);
    Table localTable = new Table();
    localTable.setX(0.0F);
    localTable.setWidth(paramFloat);
    localTable.add(localh).l().k().a(e.a(0.9F)).b(e.b(0.95F)).a(10.0F, 10.0F, 10.0F, 10.0F);
    return localTable;
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    this.f = a(paramSkin, paramFloat, this.d, null, "Proceed", "", false);
    this.f.setVisible(false);
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.a
 * JD-Core Version:    0.6.2
 */
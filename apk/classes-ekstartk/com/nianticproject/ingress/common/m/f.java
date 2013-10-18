package com.nianticproject.ingress.common.m;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.ui.h;
import com.nianticproject.ingress.common.ui.widget.af;
import com.nianticproject.ingress.common.ui.widget.ag;

public class f extends h
{
  private Label a;

  public f(ac paramac, af paramaf)
  {
    super("RecruitActivity", paramac, paramaf, ag.e, "Invite others to join!", "Recruit Agents", 0.45F, 0.08F);
  }

  public final void a()
  {
    super.a();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(p.a().A().e());
    String str = String.format("%d Invites remaining.", arrayOfObject);
    this.a.setText(str);
  }

  protected final void a(Table paramTable, Skin paramSkin)
  {
    Table localTable1 = new Table();
    com.a.a.e locale1 = com.a.a.e.b(0.16F);
    com.a.a.e locale2 = com.a.a.e.b(-0.08F);
    this.a = new Label("", paramSkin, "small-yellow");
    localTable1.add(new Image(paramSkin.getRegion("envelope-icon"))).h(locale1).g(locale2);
    localTable1.add(this.a);
    Table localTable2 = new Table();
    localTable2.setBackground(paramSkin.getDrawable("yellow-butter-bar"));
    localTable2.add(localTable1).o().k().f(com.a.a.e.a(0.06F)).h(2.0F).j(2.0F);
    paramTable.add(localTable2).e(com.a.a.e.a(0.08F)).o().g();
    paramTable.row();
  }

  protected final void a(ac paramac)
  {
    paramac.c();
  }

  protected final String d()
  {
    return "RecruitActivity";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.m.f
 * JD-Core Version:    0.6.2
 */
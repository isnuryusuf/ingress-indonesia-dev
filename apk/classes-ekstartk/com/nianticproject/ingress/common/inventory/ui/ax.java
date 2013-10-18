package com.nianticproject.ingress.common.inventory.ui;

import a;
import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;

public final class ax extends o
{
  private ActionButton a;
  private final az b;
  private final aw c;

  public ax(az paramaz, aw paramaw)
  {
    super(paramaz, paramaw);
    this.b = paramaz;
    this.c = paramaw;
  }

  public final void a(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    super.a(paramTable, paramSkin, paramStage);
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    paramTable.add(new Label(this.b.f() + " XM", localLabelStyle)).b(Integer.valueOf(2));
    paramTable.row();
  }

  public final boolean a()
  {
    return true;
  }

  public final void b(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton("USE", "", "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    this.b.a(this.a.b());
    this.a.a(new ay(this));
    paramTable.add(this.a).m().a(e.a(0.29F), e.a(0.12F));
    super.b(paramTable, paramSkin, paramStage);
    a.am(paramTable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ax
 * JD-Core Version:    0.6.2
 */
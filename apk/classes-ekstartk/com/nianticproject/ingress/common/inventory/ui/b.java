package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;

public final class b extends o
{
  private ActionButton a;
  private final ba b;
  private final bf c;

  public b(ba paramba, bf parambf)
  {
    super(paramba, parambf);
    this.b = paramba;
    this.c = parambf;
  }

  private void c()
  {
    if (this.a != null)
      this.b.a(this.a.b());
  }

  public final void a(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    super.a(paramTable, paramSkin, paramStage);
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    paramTable.add(new Label("[range] " + this.b.f(), localLabelStyle)).b(Integer.valueOf(2));
    paramTable.row();
  }

  public final boolean a()
  {
    c();
    return true;
  }

  public final void b(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton(ba.g(), "", "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    this.a.a(new c(this));
    paramTable.add(this.a).m().a(e.a(0.29F), e.a(0.12F));
    c();
    super.b(paramTable, paramSkin, paramStage);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.b
 * JD-Core Version:    0.6.2
 */
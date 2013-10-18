package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;

public final class e extends o
{
  private ActionButton a;
  private final g b;
  private final d c;

  public e(g paramg, d paramd)
  {
    super(paramg, paramd);
    this.b = paramg;
    this.c = paramd;
  }

  public final void b(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton("USE", "", "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    this.b.a(this.a.b());
    this.a.a(new f(this));
    paramTable.add(this.a).m().a(com.a.a.e.a(0.29F), com.a.a.e.a(0.12F));
    super.b(paramTable, paramSkin, paramStage);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.e
 * JD-Core Version:    0.6.2
 */
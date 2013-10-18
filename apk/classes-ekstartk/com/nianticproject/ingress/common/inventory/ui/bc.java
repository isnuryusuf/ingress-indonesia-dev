package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;

public final class bc extends o
{
  private ActionButton a;
  private final bb b;
  private final be c;

  public bc(be parambe, bb parambb)
  {
    super(parambe, parambb);
    this.c = parambe;
    this.b = parambb;
  }

  public final void b(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton("OPEN", "", "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    paramTable.add(this.a).a(e.a(0.29F), e.a(0.12F));
    this.a.a(new bd(this));
    super.b(paramTable, paramSkin, paramStage);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.bc
 * JD-Core Version:    0.6.2
 */
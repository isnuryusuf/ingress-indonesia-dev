package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;
import com.nianticproject.ingress.gameentity.components.d;

final class bw extends a
{
  private ActionButton b;

  private bw(bu parambu)
  {
  }

  public final boolean a(float paramFloat)
  {
    return (super.a(paramFloat)) && (this.a.a);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class);
    Table localTable1 = new Table();
    localTable1.defaults().i(20.0F).k(20.0F).n().k();
    if ((bu.c(this.a) instanceof d))
    {
      d locald = (d)bu.c(this.a);
      Label.LabelStyle localLabelStyle2 = com.nianticproject.ingress.common.ui.l.a(paramSkin, (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class), locald.getLevel());
      localLabelStyle2.background = paramSkin.getDrawable("level-background");
      localTable1.add(new Label(locald.getLevelName(), localLabelStyle2)).h(-10.0F);
      localTable1.row();
    }
    localTable1.add(new Label(this.a.e.h(), localLabelStyle1)).h(-10.0F);
    localTable1.setBackground(paramSkin.getDrawable("transparent-no-outline"));
    localTable1.setWidth(localTable1.getPrefWidth());
    localTable1.setHeight(localTable1.getPrefHeight());
    localTable1.setX(0.0F);
    localTable1.setY(com.nianticproject.ingress.common.w.l.a(60.0F));
    ActionButton localActionButton = new ActionButton("ACQUIRE", "", (ActionButton.ActionButtonStyle)paramSkin.get(ActionButton.ActionButtonStyle.class));
    localActionButton.a(new bx(this, localActionButton));
    this.b = localActionButton;
    Table localTable2 = new Table();
    localTable2.add(this.b).i().b((int)(1.5F * this.b.getPrefWidth())).c((int)(1.1F * this.b.getPrefHeight()));
    localTable2.setX(0.0F);
    localTable2.setY(localTable1.getY() + localTable1.getPrefHeight() + 0.5F * this.b.getPrefHeight());
    localTable2.setWidth(paramStage.getWidth());
    localTable2.setHeight(localTable2.getPrefHeight());
    Group localGroup = new Group();
    localGroup.addActor(localTable1);
    localGroup.addActor(localTable2);
    return localGroup;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bw
 * JD-Core Version:    0.6.2
 */
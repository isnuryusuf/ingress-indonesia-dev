package com.nianticproject.ingress.common.factionchoice;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.Style;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.shared.ai;

final class al extends ModalDialog
{
  al(aj paramaj, ModalDialog.Style paramStyle, ai paramai)
  {
    super(paramStyle);
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Table localTable = new Table();
    localTable.defaults().n().f().g(15.0F);
    Label localLabel = new Label("You have selected the " + this.a.a() + ".", paramSkin);
    localLabel.setWidth(paramInt);
    localLabel.setWrap(true);
    localTable.add(localLabel).b(Integer.valueOf(2)).n().f();
    localTable.row();
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(false);
    localTable.add(localProgressIndicator).b(Integer.valueOf(2)).n().f();
    localTable.row();
    f localf1 = new f("Cancel", paramSkin);
    localf1.addListener(new am(this));
    localTable.add(localf1).n().f();
    f localf2 = new f("Confirm", paramSkin);
    localf2.addListener(new an(this, localProgressIndicator));
    localTable.add(localf2).n().f();
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.al
 * JD-Core Version:    0.6.2
 */
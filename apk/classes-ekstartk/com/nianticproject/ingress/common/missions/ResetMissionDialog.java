package com.nianticproject.ingress.common.missions;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.widget.f;

final class ResetMissionDialog extends ModalDialog
{
  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Table localTable = new Table();
    localTable.defaults().g(0.04F * paramStage.getWidth());
    Label localLabel = new Label("Error: You have moved out of range of the simulated portal.", paramSkin, "error");
    localLabel.setWidth(paramInt);
    localLabel.setWrap(true);
    localTable.add(localLabel).n().f();
    localTable.row();
    f localf = new f("RESET", (TextButton.TextButtonStyle)paramSkin.get("reset", TextButton.TextButtonStyle.class));
    localf.padRight(40.0F).padLeft(40.0F);
    localf.addListener(new dy(this));
    localTable.add(localf).n().a(Integer.valueOf(16));
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ResetMissionDialog
 * JD-Core Version:    0.6.2
 */
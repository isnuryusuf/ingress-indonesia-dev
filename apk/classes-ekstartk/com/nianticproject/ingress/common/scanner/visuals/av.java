package com.nianticproject.ingress.common.scanner.visuals;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.widget.f;
import java.util.ArrayList;

final class av extends ModalDialog
{
  public av(HackController paramHackController)
  {
    super(new HackController.HackResultsDialogStyle());
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Table localTable1 = new Table();
    localTable1.padBottom(16.0F);
    Label localLabel = new Label(HackController.a(this.a), HackController.b(this.a));
    localLabel.setWrap(true);
    localLabel.setWidth(paramInt - 32);
    localLabel.setAlignment(10);
    localLabel.layout();
    localTable1.add(localLabel).b(Integer.valueOf(4)).k().n().f().i(16.0F).k(16.0F).c(localLabel.getPrefHeight());
    int i = 0;
    if (i < HackController.c(this.a).size())
    {
      if (i % HackController.b() == 0)
        localTable1.row();
      as localas = (as)HackController.c(this.a).get(i);
      Table localTable2 = new Table();
      localTable2.defaults().f().o().k();
      if (localas.h)
      {
        f localf = new f("OPEN", (TextButton.TextButtonStyle)HackController.d(localas.j).get("menu-item-button-list", TextButton.TextButtonStyle.class));
        localf.addListener(new at(localas));
        localTable2.add(localf).k().k(4.0F);
      }
      if ((localas.c != null) && (!localas.g))
        localTable2.add(new Label(localas.c + " ", new Label.LabelStyle(HackController.e(localas.j).font, localas.d))).k();
      if (localas.e != null)
      {
        Label.LabelStyle localLabelStyle = HackController.e(localas.j);
        if (localas.g)
          localLabelStyle = new Label.LabelStyle(HackController.e(localas.j).font, localas.d);
        String str = localas.e;
        if ((localas.h) && (str.length() > HackController.d()))
          str = str.substring(0, -2 + HackController.d()) + "...";
        localTable2.add(new Label(str, localLabelStyle)).k();
      }
      c localc = localTable1.add(localTable2).o().k().i(16.0F).k(4.0F);
      if (localas.h)
        localc.b(Integer.valueOf(2));
      while (true)
      {
        i++;
        break;
        if (localas.f > 1)
          localTable1.add(new Label(localas.a(), HackController.e(localas.j))).k().k(16.0F);
        else
          localTable1.add();
      }
    }
    return localTable1;
  }

  protected final void a(Window paramWindow, Skin paramSkin)
  {
    paramWindow.setBackground(paramSkin.getDrawable("subtle-dialog-bg"));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.av
 * JD-Core Version:    0.6.2
 */
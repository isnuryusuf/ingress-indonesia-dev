package com.nianticproject.ingress.common.missions.tutorial;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class m extends TutorialDialog
{
  m(l paraml, TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "Let's create a simulation portal for training purposes." }));
    localde.c(a(paramSkin, paramInt, new String[] { "", "Walk to any interesting object and take a picture." }));
    TextButton localTextButton = new TextButton("Launch Camera", paramSkin, "tutorial-launch-camera");
    Table localTable = new Table();
    localTable.add(localTextButton).n().m().a(e.a(0.65F));
    localde.c(localTable);
    localTextButton.addListener(new n(this));
    return localde.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.m
 * JD-Core Version:    0.6.2
 */
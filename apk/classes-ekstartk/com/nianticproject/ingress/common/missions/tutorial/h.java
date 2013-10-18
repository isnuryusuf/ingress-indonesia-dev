package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class h extends TutorialDialog
{
  h(g paramg, TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "Simulated Portal created. You can ", "Hack", " Portals to acquire objects." }));
    localde.c(a(paramSkin, paramInt, new String[] { "", "Tap Portal to begin." }));
    return localde.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.h
 * JD-Core Version:    0.6.2
 */
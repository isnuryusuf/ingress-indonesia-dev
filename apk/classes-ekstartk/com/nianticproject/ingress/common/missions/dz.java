package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog.Style;
import com.nianticproject.ingress.common.scanner.ev;
import java.util.List;

public final class dz extends TutorialDialog
{
  public static ev a = new ea();

  dz(TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "This is the ", "Scanner", " map view." }));
    localde.c(a(paramSkin, paramInt, new String[] { "The", " triangle", " represents your location in the real world." }));
    localde.c(a(paramSkin, paramInt, new String[] { "You can interact with objects within the ", "action circle", "." }));
    return localde.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dz
 * JD-Core Version:    0.6.2
 */
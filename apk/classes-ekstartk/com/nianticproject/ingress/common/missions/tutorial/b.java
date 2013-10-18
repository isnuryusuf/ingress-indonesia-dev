package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class b extends TutorialDialog
{
  b(a parama)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "To fire, ", "press on map for menu then slide to select FIRE XMP." }));
    return localde.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.b
 * JD-Core Version:    0.6.2
 */
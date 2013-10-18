package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class q extends TutorialDialog
{
  q(p paramp)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "This is your scanner map." }));
    localde.c(a(paramSkin, paramInt, new String[] { "Your ", "Player Triangle", " represents your location in the real world." }));
    return localde.a();
  }

  protected final Actor b(Skin paramSkin, int paramInt)
  {
    return a(paramSkin, paramInt, new String[] { "The ", "Active Circle", " shows when you can interact with objects." });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.q
 * JD-Core Version:    0.6.2
 */
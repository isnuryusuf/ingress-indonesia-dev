package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class d extends TutorialDialog
{
  d(c paramc)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "Well done. Enemy Resonator destroyed. Portal neutralized." }));
    return localde.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.d
 * JD-Core Version:    0.6.2
 */
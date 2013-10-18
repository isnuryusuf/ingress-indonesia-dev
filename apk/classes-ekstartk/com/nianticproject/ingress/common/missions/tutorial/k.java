package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class k extends TutorialDialog
{
  k(j paramj)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "These are ", "Portals", "." }));
    localde.c(new Image(new TextureRegionDrawable(j.a(this.a).a("tutorial_intro_portal")), Scaling.none));
    localde.c(a(paramSkin, paramInt, new String[] { "", "Portals are real world art objects", " that you capture for your faction." }));
    return localde.a();
  }

  protected final Actor b(Skin paramSkin, int paramInt)
  {
    return a(paramSkin, paramInt, new String[] { "Portal color shows which faction currently owns it." });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.k
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class f extends TutorialDialog
{
  f(e parame)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "You will need to use ", "XMP Bursters", " to attack enemy Portals." }));
    localde.c(a(paramSkin, paramInt, new String[] { "To fire, ", "press on map for menu then slide to select FIRE XMP." }));
    localde.c(new Image(new TextureRegionDrawable(e.a(this.a).a("tutorial_intro_xmp")), Scaling.none));
    return localde.a();
  }

  protected final Actor b(Skin paramSkin, int paramInt)
  {
    return a(paramSkin, paramInt, new String[] { "", "Practice firing an XMP." });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.f
 * JD-Core Version:    0.6.2
 */
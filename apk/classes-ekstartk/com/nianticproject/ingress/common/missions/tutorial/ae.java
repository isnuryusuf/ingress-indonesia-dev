package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.List;

final class ae extends TutorialDialog
{
  ae(ad paramad)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "This is ", "Exotic Matter", " (or ", "XM", "). XM is energy used to power your Scanner actions." }));
    localde.c(new Image(new TextureRegionDrawable(ad.a(this.a).a("tutorial_intro_xm")), Scaling.none));
    return localde.a();
  }

  protected final Actor b(Skin paramSkin, int paramInt)
  {
    return a(paramSkin, paramInt, new String[] { "", "Walk around now to collect XM." });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.ae
 * JD-Core Version:    0.6.2
 */
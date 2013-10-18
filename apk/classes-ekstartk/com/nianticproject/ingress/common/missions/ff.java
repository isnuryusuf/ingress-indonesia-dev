package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.c.dc;
import com.google.a.c.de;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog;
import com.nianticproject.ingress.common.w.ac;
import java.util.List;

final class ff extends TutorialDialog
{
  private Texture d;

  ff(fc paramfc)
  {
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "This is ", "Exotic Matter", " (or ", "XM", ").\nXM powers your scanner." }));
    this.d = c.b("tutorial/diagram_xm.png");
    localde.c(new Image(c.a(this.d, paramInt - 40), Scaling.none, 1));
    return localde.a();
  }

  protected final Actor b(Skin paramSkin, int paramInt)
  {
    return a(paramSkin, paramInt, new String[] { "", "WALK around now to collect XM." });
  }

  public final void dispose()
  {
    super.dispose();
    ac.a(this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ff
 * JD-Core Version:    0.6.2
 */
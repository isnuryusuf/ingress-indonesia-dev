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
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog.Style;
import com.nianticproject.ingress.common.scanner.ev;
import com.nianticproject.ingress.common.w.ac;
import java.util.List;

public final class eb extends TutorialDialog
{
  public static ev a = new ec();
  private Texture d;

  eb(TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    this.d = c.b("tutorial/diagram_portals.png");
    localde.c(new Image(c.a(this.d, paramInt - 50), Scaling.none, 1));
    localde.c(a(paramSkin, paramInt, new String[] { "Portals are often found near ", "sculptures", " and ", "historical sites", "." }));
    localde.c(a(paramSkin, paramInt, new String[] { "You will capture Portals for your Faction. ", "The color indicates the controlling faction." }));
    return localde.a();
  }

  public final void dispose()
  {
    super.dispose();
    ac.a(this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.eb
 * JD-Core Version:    0.6.2
 */
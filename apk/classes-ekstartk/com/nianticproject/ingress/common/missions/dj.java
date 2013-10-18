package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.c.dc;
import com.google.a.c.de;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog.Style;
import com.nianticproject.ingress.common.scanner.ev;
import com.nianticproject.ingress.common.w.ac;
import java.util.List;

public final class dj extends TutorialDialog
{
  public static ev a = new dk();
  private Texture d;

  public dj(TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    this.d = c.a("tutorial/diagram_move.png", false);
    de localde = dc.h();
    localde.c(a(paramSkin, paramInt, new String[] { "As an agent, you'll gain items by Hacking ", "Portals", "." }));
    localde.c(new Image(c.a(this.d, paramInt - 50)));
    localde.c(a(paramSkin, paramInt, new String[] { "Portals are locations where XM is leaking into our world." }));
    return localde.a();
  }

  public final void dispose()
  {
    super.dispose();
    ac.a(this.d);
    this.d = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dj
 * JD-Core Version:    0.6.2
 */
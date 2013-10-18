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

public final class ed extends TutorialDialog
{
  public static ev a = new ee();
  private Texture d;

  ed(TutorialDialog.Style paramStyle)
  {
    super(paramStyle);
  }

  protected final List<Actor> a(Skin paramSkin, int paramInt)
  {
    de localde = dc.h();
    this.d = c.b("tutorial/diagram_walk.png");
    localde.c(new Image(c.a(this.d, paramInt - 100), Scaling.none, 1));
    localde.c(a(paramSkin, paramInt, new String[] { "In order to use the Scanner, you will need to ", "WALK", "." }));
    return localde.a();
  }

  public final void dispose()
  {
    super.dispose();
    ac.a(this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ed
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;

public final class l
{
  public final String a;
  public final Color b;

  public l(i parami, String paramString, Color paramColor)
  {
    this.a = ((String)an.a(paramString));
    this.b = ((Color)an.a(paramColor));
  }

  public l(i parami, String paramString, m paramm)
  {
    this.a = paramString;
    this.b = i.a(parami).getColor(m.a(paramm));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.l
 * JD-Core Version:    0.6.2
 */
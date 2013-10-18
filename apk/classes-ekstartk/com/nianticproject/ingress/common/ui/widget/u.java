package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.ui.ad;

final class u extends t
{
  u(Color paramColor, ad paramad)
  {
    super(0.0F, 1.0F, 0.2F, paramColor);
  }

  public final boolean a(float paramFloat)
  {
    boolean bool = super.a(paramFloat);
    if (!bool)
      this.a.a(new t(1.0F, 0.0F, 1.5F, Color.WHITE));
    return bool;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.u
 * JD-Core Version:    0.6.2
 */
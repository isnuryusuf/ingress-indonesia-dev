package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.shared.n;

final class j
{
  public static Button.ButtonStyle a(Skin paramSkin, n paramn)
  {
    if (paramn == null);
    for (String str = "inventory-card"; ; str = "inventory-card-disabled")
      return (Button.ButtonStyle)paramSkin.get(str, Button.ButtonStyle.class);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.j
 * JD-Core Version:    0.6.2
 */
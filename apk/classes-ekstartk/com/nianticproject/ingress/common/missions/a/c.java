package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ImageButton;
import com.badlogic.gdx.scenes.scene2d.ui.ImageButton.ImageButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;

final class c extends ClickListener
{
  c(a parama, ImageButton paramImageButton, Skin paramSkin)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    o.a().a(bs.aO);
    this.c.a.c();
    if (this.c.a.b());
    for (String str = "audio-pause"; ; str = "audio-play")
    {
      this.a.setStyle((Button.ButtonStyle)this.b.get(str, ImageButton.ImageButtonStyle.class));
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.c
 * JD-Core Version:    0.6.2
 */
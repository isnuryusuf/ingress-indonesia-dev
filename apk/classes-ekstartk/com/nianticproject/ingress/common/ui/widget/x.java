package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;

public class x extends m
{
  private z c;

  public x(Actor paramActor1, Actor paramActor2, Button.ButtonStyle paramButtonStyle1, Button.ButtonStyle paramButtonStyle2)
  {
    super(paramActor1, paramActor2, paramButtonStyle1, paramButtonStyle2);
    addListener(new y(this, this));
  }

  public final void a(z paramz)
  {
    this.c = paramz;
  }

  public final z d()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.x
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;

final class ab extends ScrollPane
{
  ab(aa paramaa, Actor paramActor, ScrollPane.ScrollPaneStyle paramScrollPaneStyle)
  {
    super(paramActor, paramScrollPaneStyle);
  }

  public final float getMinHeight()
  {
    return super.getPrefHeight();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ab
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class ScrollPane$ScrollPaneStyle
{
  public Drawable background;
  public Drawable hScroll;
  public Drawable hScrollKnob;
  public Drawable vScroll;
  public Drawable vScrollKnob;

  public ScrollPane$ScrollPaneStyle()
  {
  }

  public ScrollPane$ScrollPaneStyle(ScrollPaneStyle paramScrollPaneStyle)
  {
    this.background = paramScrollPaneStyle.background;
    this.hScroll = paramScrollPaneStyle.hScroll;
    this.hScrollKnob = paramScrollPaneStyle.hScrollKnob;
    this.vScroll = paramScrollPaneStyle.vScroll;
    this.vScrollKnob = paramScrollPaneStyle.vScrollKnob;
  }

  public ScrollPane$ScrollPaneStyle(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4, Drawable paramDrawable5)
  {
    this.background = paramDrawable1;
    this.hScroll = paramDrawable2;
    this.hScrollKnob = paramDrawable3;
    this.vScroll = paramDrawable4;
    this.vScrollKnob = paramDrawable5;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class Slider$SliderStyle
{
  public Drawable background;
  public Drawable knob;

  public Slider$SliderStyle()
  {
  }

  public Slider$SliderStyle(SliderStyle paramSliderStyle)
  {
    this.background = paramSliderStyle.background;
    this.knob = paramSliderStyle.knob;
  }

  public Slider$SliderStyle(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this.background = paramDrawable1;
    this.knob = paramDrawable2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Slider.SliderStyle
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Pools;

public class Slider extends Widget
{
  int draggingPointer = -1;
  private float max;
  private float min;
  private float sliderPos;
  private float steps;
  private Slider.SliderStyle style;
  private float value;
  private boolean vertical;

  public Slider(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean, Skin paramSkin)
  {
  }

  public Slider(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean, Skin paramSkin, String paramString)
  {
    this(paramFloat1, paramFloat2, paramFloat3, paramBoolean, (Slider.SliderStyle)paramSkin.get(paramString, Slider.SliderStyle.class));
  }

  public Slider(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean, Slider.SliderStyle paramSliderStyle)
  {
    if (paramFloat1 > paramFloat2)
      throw new IllegalArgumentException("min must be > max: " + paramFloat1 + " > " + paramFloat2);
    if (paramFloat3 < 0.0F)
      throw new IllegalArgumentException("steps must be > 0: " + paramFloat3);
    setStyle(paramSliderStyle);
    this.min = paramFloat1;
    this.max = paramFloat2;
    this.steps = paramFloat3;
    this.vertical = paramBoolean;
    this.value = paramFloat1;
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    addListener(new Slider.1(this));
  }

  void calculatePositionAndValue(float paramFloat1, float paramFloat2)
  {
    Drawable localDrawable = this.style.knob;
    float f1 = this.sliderPos;
    float f4;
    if (this.vertical)
    {
      f4 = getHeight();
      this.sliderPos = (paramFloat2 - 0.5F * localDrawable.getMinHeight());
      this.sliderPos = Math.max(0.0F, this.sliderPos);
      this.sliderPos = Math.min(f4 - localDrawable.getMinHeight(), this.sliderPos);
    }
    float f2;
    for (float f3 = this.min + (this.max - this.min) * (this.sliderPos / (f4 - localDrawable.getMinHeight())); ; f3 = this.min + (this.max - this.min) * (this.sliderPos / (f2 - localDrawable.getMinWidth())))
    {
      setValue(f3);
      if (f3 == f3)
        this.sliderPos = f1;
      return;
      f2 = getWidth();
      this.sliderPos = (paramFloat1 - 0.5F * localDrawable.getMinWidth());
      this.sliderPos = Math.max(0.0F, this.sliderPos);
      this.sliderPos = Math.min(f2 - localDrawable.getMinWidth(), this.sliderPos);
    }
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Drawable localDrawable1 = this.style.knob;
    Drawable localDrawable2 = this.style.background;
    Color localColor = getColor();
    float f1 = getX();
    float f2 = getY();
    float f3 = getWidth();
    float f4 = getHeight();
    paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
    if (this.vertical)
    {
      this.sliderPos = ((this.value - this.min) / (this.max - this.min) * (f4 - localDrawable1.getMinHeight()));
      this.sliderPos = Math.max(0.0F, this.sliderPos);
      this.sliderPos = Math.min(f4 - localDrawable1.getMinHeight(), this.sliderPos);
      localDrawable2.draw(paramSpriteBatch, f1 + (int)(0.5F * (f3 - localDrawable2.getMinWidth())), f2, localDrawable2.getMinWidth(), f4);
      localDrawable1.draw(paramSpriteBatch, f1 + (int)(0.5F * (f3 - localDrawable1.getMinWidth())), f2 + this.sliderPos, localDrawable1.getMinWidth(), localDrawable1.getMinHeight());
      return;
    }
    this.sliderPos = ((this.value - this.min) / (this.max - this.min) * (f3 - localDrawable1.getMinWidth()));
    this.sliderPos = Math.max(0.0F, this.sliderPos);
    this.sliderPos = Math.min(f3 - localDrawable1.getMinWidth(), this.sliderPos);
    localDrawable2.draw(paramSpriteBatch, f1, f2 + (int)(0.5F * (f4 - localDrawable2.getMinHeight())), f3, localDrawable2.getMinHeight());
    localDrawable1.draw(paramSpriteBatch, f1 + this.sliderPos, f2 + (int)(0.5F * (f4 - localDrawable1.getMinHeight())), localDrawable1.getMinWidth(), localDrawable1.getMinHeight());
  }

  public float getMaxValue()
  {
    return this.max;
  }

  public float getMinValue()
  {
    return this.min;
  }

  public float getPrefHeight()
  {
    if (this.vertical)
      return 140.0F;
    return Math.max(this.style.knob.getMinHeight(), this.style.background.getMinHeight());
  }

  public float getPrefWidth()
  {
    if (this.vertical)
      return Math.max(this.style.knob.getMinWidth(), this.style.background.getMinWidth());
    return 140.0F;
  }

  public Slider.SliderStyle getStyle()
  {
    return this.style;
  }

  public float getValue()
  {
    return this.value;
  }

  public boolean isDragging()
  {
    return this.draggingPointer != -1;
  }

  public void setRange(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 >= paramFloat2)
      throw new IllegalArgumentException("min must be < max");
    this.min = paramFloat1;
    this.max = paramFloat2;
    setValue(paramFloat1);
  }

  public void setStyle(Slider.SliderStyle paramSliderStyle)
  {
    if (paramSliderStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramSliderStyle;
    invalidateHierarchy();
  }

  public void setValue(float paramFloat)
  {
    if ((paramFloat < this.min) || (paramFloat > this.max))
      throw new IllegalArgumentException("value must be >= min and <= max: " + paramFloat);
    float f1 = MathUtils.clamp(Math.round(paramFloat / this.steps) * this.steps, this.min, this.max);
    float f2 = this.value;
    if (f1 == f2)
      return;
    this.value = f1;
    ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
    if (fire(localChangeEvent))
      this.value = f2;
    Pools.free(localChangeEvent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Slider
 * JD-Core Version:    0.6.2
 */
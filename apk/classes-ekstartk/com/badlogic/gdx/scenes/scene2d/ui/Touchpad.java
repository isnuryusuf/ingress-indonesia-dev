package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Circle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Pools;

public class Touchpad extends Widget
{
  private final Circle deadzoneBounds = new Circle(0.0F, 0.0F, 0.0F);
  private float deadzoneRadius;
  private final Vector2 knobPercent = new Vector2();
  private final Vector2 knobPosition = new Vector2();
  private final Circle padBounds = new Circle(0.0F, 0.0F, 0.0F);
  private Touchpad.TouchpadStyle style;
  boolean touched;

  public Touchpad(float paramFloat, Skin paramSkin)
  {
    this(paramFloat, (Touchpad.TouchpadStyle)paramSkin.get(Touchpad.TouchpadStyle.class));
  }

  public Touchpad(float paramFloat, Skin paramSkin, String paramString)
  {
    this(paramFloat, (Touchpad.TouchpadStyle)paramSkin.get(paramString, Touchpad.TouchpadStyle.class));
  }

  public Touchpad(float paramFloat, Touchpad.TouchpadStyle paramTouchpadStyle)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("deadzoneRadius must be > 0");
    this.deadzoneRadius = paramFloat;
    this.knobPosition.set(getWidth() / 2.0F, getHeight() / 2.0F);
    setStyle(paramTouchpadStyle);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    addListener(new Touchpad.1(this));
  }

  void calculatePositionAndValue(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f1 = this.knobPosition.x;
    float f2 = this.knobPosition.y;
    float f3 = this.knobPercent.x;
    float f4 = this.knobPercent.y;
    this.knobPosition.set(getWidth() / 2.0F, getHeight() / 2.0F);
    this.knobPercent.set(0.0F, 0.0F);
    if ((!paramBoolean) && (!this.deadzoneBounds.contains(paramFloat1, paramFloat2)))
    {
      this.knobPercent.set(paramFloat1 - this.padBounds.x, paramFloat2 - this.padBounds.y).nor();
      if (!this.padBounds.contains(paramFloat1, paramFloat2))
        break label208;
      this.knobPosition.set(paramFloat1, paramFloat2);
    }
    while (true)
    {
      if ((f3 != this.knobPercent.x) || (f4 != this.knobPercent.y))
      {
        ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
        if (fire(localChangeEvent))
        {
          this.knobPercent.set(f3, f4);
          this.knobPosition.set(f1, f2);
        }
        Pools.free(localChangeEvent);
      }
      return;
      label208: this.knobPosition.set(this.knobPercent).mul(this.padBounds.radius).add(this.padBounds.x, this.padBounds.y);
    }
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    Color localColor = getColor();
    paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
    float f1 = getX();
    float f2 = getY();
    float f3 = getWidth();
    float f4 = getHeight();
    Drawable localDrawable1 = this.style.background;
    if (localDrawable1 != null)
      localDrawable1.draw(paramSpriteBatch, f1, f2, f3, f4);
    Drawable localDrawable2 = this.style.knob;
    if (localDrawable2 != null)
      localDrawable2.draw(paramSpriteBatch, f1 + (this.knobPosition.x - localDrawable2.getMinWidth() / 2.0F), f2 + (this.knobPosition.y - localDrawable2.getMinHeight() / 2.0F), localDrawable2.getMinWidth(), localDrawable2.getMinHeight());
  }

  public float getKnobPercentX()
  {
    return this.knobPercent.x;
  }

  public float getKnobPercentY()
  {
    return this.knobPercent.y;
  }

  public float getKnobX()
  {
    return this.knobPosition.x;
  }

  public float getKnobY()
  {
    return this.knobPosition.y;
  }

  public float getPrefHeight()
  {
    if (this.style.background != null)
      return this.style.background.getMinHeight();
    return 0.0F;
  }

  public float getPrefWidth()
  {
    if (this.style.background != null)
      return this.style.background.getMinWidth();
    return 0.0F;
  }

  public Touchpad.TouchpadStyle getStyle()
  {
    return this.style;
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    if (this.padBounds.contains(paramFloat1, paramFloat2))
      return this;
    return null;
  }

  public boolean isTouched()
  {
    return this.touched;
  }

  public void layout()
  {
    float f = Math.min(getWidth(), getHeight()) / 2.0F;
    if (this.style.knob != null)
      f -= Math.max(this.style.knob.getMinWidth(), this.style.knob.getMinHeight()) / 2.0F;
    this.padBounds.set(getWidth() / 2.0F, getHeight() / 2.0F, f);
    this.deadzoneBounds.set(getWidth() / 2.0F, getHeight() / 2.0F, this.deadzoneRadius);
    this.knobPosition.set(getWidth() / 2.0F, getHeight() / 2.0F);
    this.knobPercent.set(0.0F, 0.0F);
  }

  public void setDeadzone(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("deadzoneRadius must be > 0");
    this.deadzoneRadius = paramFloat;
    invalidate();
  }

  public void setStyle(Touchpad.TouchpadStyle paramTouchpadStyle)
  {
    if (paramTouchpadStyle == null)
      throw new IllegalArgumentException("style cannot be null");
    this.style = paramTouchpadStyle;
    invalidateHierarchy();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Touchpad
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.SnapshotArray;

public class Button extends Table
{
  ButtonGroup buttonGroup;
  private ClickListener clickListener;
  boolean isChecked;
  boolean isDisabled;
  private Button.ButtonStyle style;

  public Button(Actor paramActor, Button.ButtonStyle paramButtonStyle)
  {
    initialize();
    add(paramActor);
    setStyle(paramButtonStyle);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public Button(Actor paramActor, Skin paramSkin)
  {
    this(paramActor, (Button.ButtonStyle)paramSkin.get(Button.ButtonStyle.class));
  }

  public Button(Actor paramActor, Skin paramSkin, String paramString)
  {
    this(paramActor, (Button.ButtonStyle)paramSkin.get(paramString, Button.ButtonStyle.class));
  }

  public Button(Button.ButtonStyle paramButtonStyle)
  {
    initialize();
    setStyle(paramButtonStyle);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public Button(Skin paramSkin)
  {
    super(paramSkin);
    initialize();
    setStyle((Button.ButtonStyle)paramSkin.get(Button.ButtonStyle.class));
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public Button(Skin paramSkin, String paramString)
  {
    super(paramSkin);
    initialize();
    setStyle((Button.ButtonStyle)paramSkin.get(paramString, Button.ButtonStyle.class));
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public Button(Drawable paramDrawable)
  {
    this(new Button.ButtonStyle(paramDrawable, null, null));
  }

  public Button(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(new Button.ButtonStyle(paramDrawable1, paramDrawable2, null));
  }

  public Button(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    this(new Button.ButtonStyle(paramDrawable1, paramDrawable2, paramDrawable3));
  }

  private void initialize()
  {
    setTouchable(Touchable.enabled);
    Button.1 local1 = new Button.1(this);
    this.clickListener = local1;
    addListener(local1);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    int i = 0;
    validate();
    Drawable localDrawable;
    float f2;
    float f3;
    SnapshotArray localSnapshotArray;
    if ((this.clickListener.isPressed()) && (!this.isDisabled))
    {
      if (this.style.down == null);
      for (localDrawable = this.style.up; ; localDrawable = this.style.down)
      {
        float f4 = this.style.pressedOffsetX;
        f2 = this.style.pressedOffsetY;
        f3 = f4;
        if (localDrawable != null)
        {
          Color localColor = getColor();
          paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
          localDrawable.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
        }
        localSnapshotArray = getChildren();
        for (int j = 0; j < localSnapshotArray.size; j++)
          ((Actor)localSnapshotArray.get(j)).translate(f3, f2);
      }
    }
    if ((this.isDisabled) && (this.style.disabled != null))
      localDrawable = this.style.disabled;
    while (true)
    {
      float f1 = this.style.unpressedOffsetX;
      f2 = this.style.unpressedOffsetY;
      f3 = f1;
      break;
      if ((this.isChecked) && (this.style.checked != null))
        localDrawable = this.style.checked;
      else if ((this.clickListener.isOver()) && (this.style.over != null))
        localDrawable = this.style.over;
      else
        localDrawable = this.style.up;
    }
    super.draw(paramSpriteBatch, paramFloat);
    while (i < localSnapshotArray.size)
    {
      ((Actor)localSnapshotArray.get(i)).translate(-f3, -f2);
      i++;
    }
  }

  protected void drawBackground(SpriteBatch paramSpriteBatch, float paramFloat)
  {
  }

  public float getMinHeight()
  {
    return getPrefHeight();
  }

  public float getMinWidth()
  {
    return getPrefWidth();
  }

  public float getPrefHeight()
  {
    float f = super.getPrefHeight();
    if (this.style.up != null)
      f = Math.max(f, this.style.up.getMinHeight());
    if (this.style.down != null)
      f = Math.max(f, this.style.down.getMinHeight());
    if (this.style.checked != null)
      f = Math.max(f, this.style.checked.getMinHeight());
    return f;
  }

  public float getPrefWidth()
  {
    float f = super.getPrefWidth();
    if (this.style.up != null)
      f = Math.max(f, this.style.up.getMinWidth());
    if (this.style.down != null)
      f = Math.max(f, this.style.down.getMinWidth());
    if (this.style.checked != null)
      f = Math.max(f, this.style.checked.getMinWidth());
    return f;
  }

  public Button.ButtonStyle getStyle()
  {
    return this.style;
  }

  public boolean isChecked()
  {
    return this.isChecked;
  }

  public boolean isDisabled()
  {
    return this.isDisabled;
  }

  public boolean isOver()
  {
    return this.clickListener.isOver();
  }

  public boolean isPressed()
  {
    return this.clickListener.isPressed();
  }

  public void setChecked(boolean paramBoolean)
  {
    if (this.isChecked == paramBoolean);
    do
    {
      do
        return;
      while ((this.buttonGroup != null) && (!this.buttonGroup.canCheck(this, paramBoolean)));
      this.isChecked = paramBoolean;
    }
    while (this.isDisabled);
    ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
    if (fire(localChangeEvent))
      if (paramBoolean)
        break label73;
    label73: for (boolean bool = true; ; bool = false)
    {
      this.isChecked = bool;
      Pools.free(localChangeEvent);
      return;
    }
  }

  public void setDisabled(boolean paramBoolean)
  {
    this.isDisabled = paramBoolean;
  }

  public void setStyle(Button.ButtonStyle paramButtonStyle)
  {
    if (paramButtonStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramButtonStyle;
    Drawable localDrawable = paramButtonStyle.up;
    if (localDrawable == null)
    {
      localDrawable = paramButtonStyle.down;
      if (localDrawable == null)
        localDrawable = paramButtonStyle.checked;
    }
    float f1;
    float f2;
    float f3;
    float f4;
    float f8;
    float f7;
    float f6;
    float f5;
    if (localDrawable != null)
    {
      f1 = localDrawable.getTopHeight();
      f2 = localDrawable.getLeftWidth();
      f3 = localDrawable.getBottomHeight();
      f4 = localDrawable.getRightWidth();
      if (!(localDrawable instanceof NinePatchDrawable))
        break label144;
      Padding localPadding = ((NinePatchDrawable)localDrawable).getPadding();
      if (localPadding == null)
        break label144;
      f8 = localPadding.topPadding;
      f7 = localPadding.leftPadding;
      f6 = localPadding.bottomPadding;
      f5 = localPadding.rightPadding;
    }
    while (true)
    {
      pad(f8, f7, f6, f5);
      invalidateHierarchy();
      return;
      label144: f5 = f4;
      f6 = f3;
      f7 = f2;
      f8 = f1;
    }
  }

  public void toggle()
  {
    if (!this.isChecked);
    for (boolean bool = true; ; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Button
 * JD-Core Version:    0.6.2
 */
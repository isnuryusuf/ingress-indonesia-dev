package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

public class PressedListener extends InputListener
{
  private int button;
  private boolean over;
  private boolean pressed;
  private int pressedPointer;
  private float tapSquareSize = 14.0F;
  private float touchDownX = -1.0F;
  private float touchDownY = -1.0F;

  public void enter(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt, Actor paramActor)
  {
    if (paramInt == -1)
      this.over = true;
  }

  public void exit(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt, Actor paramActor)
  {
    if (paramInt == -1)
      this.over = false;
  }

  public int getButton()
  {
    return this.button;
  }

  public float getTapSquareSize()
  {
    return this.tapSquareSize;
  }

  public float getTouchDownX()
  {
    return this.touchDownX;
  }

  public float getTouchDownY()
  {
    return this.touchDownY;
  }

  public boolean isOver()
  {
    return (this.over) || (this.pressed);
  }

  public boolean isOver(Actor paramActor, float paramFloat1, float paramFloat2)
  {
    boolean bool = true;
    Actor localActor = paramActor.hit(paramFloat1, paramFloat2);
    if ((localActor == null) || (!localActor.isDescendant(paramActor)))
    {
      if ((this.touchDownX != -1.0F) || (this.touchDownY != -1.0F))
        break label51;
      bool = false;
    }
    label51: 
    while ((Math.abs(paramFloat1 - this.touchDownX) < this.tapSquareSize) && (Math.abs(paramFloat2 - this.touchDownY) < this.tapSquareSize))
      return bool;
    return false;
  }

  public boolean isPressed()
  {
    return this.pressed;
  }

  public void setButton(int paramInt)
  {
    this.button = paramInt;
  }

  public void setTapSquareSize(float paramFloat)
  {
    this.tapSquareSize = paramFloat;
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (this.pressed);
    while ((paramInt1 == 0) && (paramInt2 != this.button))
      return false;
    this.pressed = true;
    this.pressedPointer = paramInt1;
    this.touchDownX = paramFloat1;
    this.touchDownY = paramFloat2;
    return true;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    if (paramInt != this.pressedPointer);
    do
    {
      return;
      this.pressed = isOver(paramInputEvent.getListenerActor(), paramFloat1, paramFloat2);
      if ((this.pressed) && (paramInt == 0) && (!Gdx.input.isButtonPressed(this.button)))
        this.pressed = false;
    }
    while (this.pressed);
    this.touchDownX = -1.0F;
    this.touchDownY = -1.0F;
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 == this.pressedPointer)
      this.pressed = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.PressedListener
 * JD-Core Version:    0.6.2
 */
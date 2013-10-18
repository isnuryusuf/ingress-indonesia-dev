package com.badlogic.gdx.scenes.scene2d;

public class InputEvent extends Event
{
  private int button;
  private char character;
  private int keyCode;
  private int pointer;
  private Actor relatedActor;
  private int scrollAmount;
  private float stageX;
  private float stageY;
  private InputEvent.Type type;

  public int getButton()
  {
    return this.button;
  }

  public char getCharacter()
  {
    return this.character;
  }

  public int getKeyCode()
  {
    return this.keyCode;
  }

  public int getPointer()
  {
    return this.pointer;
  }

  public Actor getRelatedActor()
  {
    return this.relatedActor;
  }

  public int getScrollAmount()
  {
    return this.scrollAmount;
  }

  public float getStageX()
  {
    return this.stageX;
  }

  public float getStageY()
  {
    return this.stageY;
  }

  public InputEvent.Type getType()
  {
    return this.type;
  }

  public void reset()
  {
    super.reset();
    this.relatedActor = null;
  }

  public void setButton(int paramInt)
  {
    this.button = paramInt;
  }

  public void setCharacter(char paramChar)
  {
    this.character = paramChar;
  }

  public void setKeyCode(int paramInt)
  {
    this.keyCode = paramInt;
  }

  public void setPointer(int paramInt)
  {
    this.pointer = paramInt;
  }

  public void setRelatedActor(Actor paramActor)
  {
    this.relatedActor = paramActor;
  }

  public void setScrollAmount(int paramInt)
  {
    this.scrollAmount = paramInt;
  }

  public void setStageX(float paramFloat)
  {
    this.stageX = paramFloat;
  }

  public void setStageY(float paramFloat)
  {
    this.stageY = paramFloat;
  }

  public void setType(InputEvent.Type paramType)
  {
    this.type = paramType;
  }

  public String toString()
  {
    return this.type.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.InputEvent
 * JD-Core Version:    0.6.2
 */
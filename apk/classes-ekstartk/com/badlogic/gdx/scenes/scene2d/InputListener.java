package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.math.Vector2;

public class InputListener
  implements EventListener
{
  public void enter(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt, Actor paramActor)
  {
  }

  public void exit(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt, Actor paramActor)
  {
  }

  public boolean handle(Event paramEvent)
  {
    if (!(paramEvent instanceof InputEvent))
      return false;
    InputEvent localInputEvent = (InputEvent)paramEvent;
    Vector2 localVector2;
    switch (InputListener.1.$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type[localInputEvent.getType().ordinal()])
    {
    default:
      localVector2 = Vector2.tmp.set(localInputEvent.getStageX(), localInputEvent.getStageY());
      localInputEvent.getListenerActor().stageToLocalCoordinates(localVector2);
      switch (InputListener.1.$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type[localInputEvent.getType().ordinal()])
      {
      default:
        return false;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      }
    case 1:
      return keyDown(localInputEvent, localInputEvent.getKeyCode());
    case 2:
      return keyUp(localInputEvent, localInputEvent.getKeyCode());
    case 3:
      return keyTyped(localInputEvent, localInputEvent.getCharacter());
    case 4:
    }
    return scrolled(localInputEvent, localInputEvent.getScrollAmount());
    return touchDown(localInputEvent, localVector2.x, localVector2.y, localInputEvent.getPointer(), localInputEvent.getButton());
    touchUp(localInputEvent, localVector2.x, localVector2.y, localInputEvent.getPointer(), localInputEvent.getButton());
    return true;
    touchDragged(localInputEvent, localVector2.x, localVector2.y, localInputEvent.getPointer());
    return true;
    mouseMoved(localInputEvent, localVector2.x, localVector2.y);
    return false;
    enter(localInputEvent, localVector2.x, localVector2.y, localInputEvent.getPointer(), localInputEvent.getRelatedActor());
    return false;
    exit(localInputEvent, localVector2.x, localVector2.y, localInputEvent.getPointer(), localInputEvent.getRelatedActor());
    return false;
  }

  public boolean keyDown(InputEvent paramInputEvent, int paramInt)
  {
    return false;
  }

  public boolean keyTyped(InputEvent paramInputEvent, char paramChar)
  {
    return false;
  }

  public boolean keyUp(InputEvent paramInputEvent, int paramInt)
  {
    return false;
  }

  public boolean mouseMoved(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public boolean scrolled(InputEvent paramInputEvent, int paramInt)
  {
    return false;
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    return false;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.InputListener
 * JD-Core Version:    0.6.2
 */
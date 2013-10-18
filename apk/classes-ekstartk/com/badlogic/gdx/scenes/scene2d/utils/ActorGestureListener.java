package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.input.GestureDetector;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.InputEvent;

public class ActorGestureListener
  implements EventListener
{
  Actor actor;
  private final GestureDetector detector = new GestureDetector(new ActorGestureListener.1(this));
  InputEvent event;
  Actor touchDownTarget;

  public void fling(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
  }

  public GestureDetector getGestureDetector()
  {
    return this.detector;
  }

  public Actor getTouchDownTarget()
  {
    return this.touchDownTarget;
  }

  public boolean handle(Event paramEvent)
  {
    if (!(paramEvent instanceof InputEvent))
      return false;
    InputEvent localInputEvent = (InputEvent)paramEvent;
    switch (ActorGestureListener.2.$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type[localInputEvent.getType().ordinal()])
    {
    default:
      return false;
    case 1:
      this.actor = localInputEvent.getListenerActor();
      this.touchDownTarget = localInputEvent.getTarget();
      this.detector.touchDown(localInputEvent.getStageX(), localInputEvent.getStageY(), localInputEvent.getPointer(), localInputEvent.getButton());
      this.actor.stageToLocalCoordinates(Vector2.tmp.set(localInputEvent.getStageX(), localInputEvent.getStageY()));
      touchDown(localInputEvent, Vector2.tmp.x, Vector2.tmp.y, localInputEvent.getPointer(), localInputEvent.getButton());
      return true;
    case 2:
      this.event = localInputEvent;
      this.actor = localInputEvent.getListenerActor();
      this.detector.touchUp(localInputEvent.getStageX(), localInputEvent.getStageY(), localInputEvent.getPointer(), localInputEvent.getButton());
      this.actor.stageToLocalCoordinates(Vector2.tmp.set(localInputEvent.getStageX(), localInputEvent.getStageY()));
      touchUp(localInputEvent, Vector2.tmp.x, Vector2.tmp.y, localInputEvent.getPointer(), localInputEvent.getButton());
      return true;
    case 3:
    }
    this.event = localInputEvent;
    this.actor = localInputEvent.getListenerActor();
    this.detector.touchDragged(localInputEvent.getStageX(), localInputEvent.getStageY(), localInputEvent.getPointer());
    return true;
  }

  public boolean isPanning()
  {
    return this.detector.isPanning();
  }

  public boolean longPress(Actor paramActor, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public void pan(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
  }

  public void pinch(InputEvent paramInputEvent, Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Vector2 paramVector24)
  {
  }

  public void tap(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
  }

  public void zoom(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener
 * JD-Core Version:    0.6.2
 */
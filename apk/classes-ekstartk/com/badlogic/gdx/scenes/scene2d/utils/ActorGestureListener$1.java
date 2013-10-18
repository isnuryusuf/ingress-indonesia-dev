package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.input.GestureDetector.GestureAdapter;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;

class ActorGestureListener$1 extends GestureDetector.GestureAdapter
{
  private final Vector2 initialPointer1 = new Vector2();
  private final Vector2 initialPointer2 = new Vector2();
  private final Vector2 pointer1 = new Vector2();
  private final Vector2 pointer2 = new Vector2();

  ActorGestureListener$1(ActorGestureListener paramActorGestureListener)
  {
  }

  public boolean fling(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    this.this$0.fling(this.this$0.event, paramFloat1, paramFloat2, paramInt1, paramInt2);
    return true;
  }

  public boolean longPress(float paramFloat1, float paramFloat2)
  {
    this.this$0.actor.stageToLocalCoordinates(Vector2.tmp.set(paramFloat1, paramFloat2));
    return this.this$0.longPress(this.this$0.actor, Vector2.tmp.x, Vector2.tmp.y);
  }

  public boolean pan(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.this$0.actor.stageToLocalCoordinates(Vector2.tmp.set(paramFloat1, paramFloat2));
    this.this$0.pan(this.this$0.event, Vector2.tmp.x, Vector2.tmp.y, paramFloat3, paramFloat4);
    return true;
  }

  public boolean pinch(Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Vector2 paramVector24)
  {
    this.this$0.actor.stageToLocalCoordinates(this.initialPointer1.set(paramVector21));
    this.this$0.actor.stageToLocalCoordinates(this.initialPointer2.set(paramVector22));
    this.this$0.actor.stageToLocalCoordinates(this.pointer1.set(paramVector23));
    this.this$0.actor.stageToLocalCoordinates(this.pointer2.set(paramVector24));
    this.this$0.pinch(this.this$0.event, this.initialPointer1, this.initialPointer2, this.pointer1, this.pointer2);
    return true;
  }

  public boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    this.this$0.actor.stageToLocalCoordinates(Vector2.tmp.set(paramFloat1, paramFloat2));
    this.this$0.tap(this.this$0.event, Vector2.tmp.x, Vector2.tmp.y, paramInt1, paramInt2, paramInt3);
    return true;
  }

  public boolean zoom(float paramFloat1, float paramFloat2)
  {
    this.this$0.zoom(this.this$0.event, paramFloat1, paramFloat2);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener.1
 * JD-Core Version:    0.6.2
 */
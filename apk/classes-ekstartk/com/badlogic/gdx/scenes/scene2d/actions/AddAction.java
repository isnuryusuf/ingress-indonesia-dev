package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;

public class AddAction extends Action
{
  private Action action;
  private Actor targetActor;

  public boolean act(float paramFloat)
  {
    this.targetActor.addAction(this.action);
    return true;
  }

  public Action getAction()
  {
    return this.action;
  }

  public Actor getTargetActor()
  {
    return this.targetActor;
  }

  public void reset()
  {
    super.reset();
    this.targetActor = null;
    this.action = null;
  }

  public void setAction(Action paramAction)
  {
    this.action = paramAction;
  }

  public void setTargetActor(Actor paramActor)
  {
    this.targetActor = paramActor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.AddAction
 * JD-Core Version:    0.6.2
 */
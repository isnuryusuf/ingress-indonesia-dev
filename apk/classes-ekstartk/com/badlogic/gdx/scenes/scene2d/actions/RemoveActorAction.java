package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;

public class RemoveActorAction extends Action
{
  private Actor removeActor;
  private boolean removed;

  public boolean act(float paramFloat)
  {
    if (!this.removed)
    {
      this.removed = true;
      if (this.removeActor == null)
        break label31;
    }
    label31: for (Actor localActor = this.removeActor; ; localActor = this.actor)
    {
      localActor.remove();
      return true;
    }
  }

  public Actor getRemoveActor()
  {
    return this.removeActor;
  }

  public void reset()
  {
    super.reset();
    this.removeActor = null;
  }

  public void restart()
  {
    this.removed = false;
  }

  public void setRemoveActor(Actor paramActor)
  {
    this.removeActor = paramActor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.RemoveActorAction
 * JD-Core Version:    0.6.2
 */
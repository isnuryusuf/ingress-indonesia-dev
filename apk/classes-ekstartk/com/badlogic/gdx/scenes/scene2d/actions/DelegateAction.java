package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;

public abstract class DelegateAction extends Action
{
  protected Action action;

  public Action getAction()
  {
    return this.action;
  }

  public void reset()
  {
    super.reset();
    this.action = null;
  }

  public void restart()
  {
    if (this.action != null)
      this.action.restart();
  }

  public void setAction(Action paramAction)
  {
    this.action = paramAction;
  }

  public void setActor(Actor paramActor)
  {
    if (this.action != null)
      this.action.setActor(paramActor);
    super.setActor(paramActor);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(super.toString());
    if (this.action == null);
    for (String str = ""; ; str = "(" + this.action + ")")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.DelegateAction
 * JD-Core Version:    0.6.2
 */
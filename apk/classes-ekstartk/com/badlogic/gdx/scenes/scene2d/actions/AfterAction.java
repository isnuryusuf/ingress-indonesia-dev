package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;

public class AfterAction extends DelegateAction
{
  private Array<Action> waitForActions = new Array(false, 4);

  public boolean act(float paramFloat)
  {
    Array localArray = this.actor.getActions();
    if (localArray.size == 1)
      this.waitForActions.clear();
    for (int i = -1 + this.waitForActions.size; i >= 0; i--)
      if (localArray.indexOf((Action)this.waitForActions.get(i), true) == -1)
        this.waitForActions.removeIndex(i);
    if (this.waitForActions.size > 0)
      return false;
    return this.action.act(paramFloat);
  }

  public void restart()
  {
    super.restart();
    this.waitForActions.clear();
  }

  public void setActor(Actor paramActor)
  {
    if (paramActor != null)
      this.waitForActions.addAll(paramActor.getActions());
    super.setActor(paramActor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.AfterAction
 * JD-Core Version:    0.6.2
 */
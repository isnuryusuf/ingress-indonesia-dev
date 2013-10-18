package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;

public class ParallelAction extends Action
{
  Array<Action> actions = new Array(4);
  private boolean complete;

  public boolean act(float paramFloat)
  {
    if (this.complete)
      return true;
    this.complete = true;
    Array localArray = this.actions;
    int i = localArray.size;
    for (int j = 0; j < i; j++)
      if (!((Action)localArray.get(j)).act(paramFloat))
        this.complete = false;
    return this.complete;
  }

  public void addAction(Action paramAction)
  {
    this.actions.add(paramAction);
    if (this.actor != null)
      paramAction.setActor(this.actor);
  }

  public void reset()
  {
    super.reset();
    this.actions.clear();
  }

  public void restart()
  {
    this.complete = false;
    Array localArray = this.actions;
    int i = localArray.size;
    for (int j = 0; j < i; j++)
      ((Action)localArray.get(j)).restart();
  }

  public void setActor(Actor paramActor)
  {
    Array localArray = this.actions;
    int i = localArray.size;
    for (int j = 0; j < i; j++)
      ((Action)localArray.get(j)).setActor(paramActor);
    super.setActor(paramActor);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append(super.toString());
    localStringBuilder.append('(');
    Array localArray = this.actions;
    int i = 0;
    int j = localArray.size;
    while (i < j)
    {
      if (i > 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(localArray.get(i));
      i++;
    }
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.ParallelAction
 * JD-Core Version:    0.6.2
 */
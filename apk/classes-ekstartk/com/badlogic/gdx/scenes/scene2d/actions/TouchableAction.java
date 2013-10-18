package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;

public class TouchableAction extends Action
{
  private Touchable touchable;

  public boolean act(float paramFloat)
  {
    this.actor.setTouchable(this.touchable);
    return true;
  }

  public Touchable getTouchable()
  {
    return this.touchable;
  }

  public void setTouchable(Touchable paramTouchable)
  {
    this.touchable = paramTouchable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.TouchableAction
 * JD-Core Version:    0.6.2
 */
package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.EventListener;

public abstract class ChangeListener
  implements EventListener
{
  public abstract void changed(ChangeListener.ChangeEvent paramChangeEvent, Actor paramActor);

  public boolean handle(Event paramEvent)
  {
    if (!(paramEvent instanceof ChangeListener.ChangeEvent))
      return false;
    changed((ChangeListener.ChangeEvent)paramEvent, paramEvent.getTarget());
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
 * JD-Core Version:    0.6.2
 */
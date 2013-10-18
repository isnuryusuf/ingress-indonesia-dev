package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pool.Poolable;

public abstract class Action
  implements Pool.Poolable
{
  protected Actor actor;
  private Pool pool;

  public abstract boolean act(float paramFloat);

  public Actor getActor()
  {
    return this.actor;
  }

  public Pool getPool()
  {
    return this.pool;
  }

  public void reset()
  {
    restart();
  }

  public void restart()
  {
  }

  public void setActor(Actor paramActor)
  {
    this.actor = paramActor;
    if (paramActor == null)
    {
      if (this.pool != null)
      {
        this.pool.free(this);
        this.pool = null;
      }
    }
    else
      return;
    reset();
  }

  public void setPool(Pool paramPool)
  {
    this.pool = paramPool;
  }

  public String toString()
  {
    String str = getClass().getName();
    int i = str.lastIndexOf('.');
    if (i != -1)
      str = str.substring(i + 1);
    if (str.endsWith("Action"))
      str = str.substring(0, -6 + str.length());
    return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.Action
 * JD-Core Version:    0.6.2
 */
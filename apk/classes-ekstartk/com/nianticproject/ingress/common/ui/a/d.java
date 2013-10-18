package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.google.a.a.an;

public final class d extends Action
{
  private final boolean a = true;

  public final boolean act(float paramFloat)
  {
    ((Actor)an.a(this.actor)).setVisible(this.a);
    return true;
  }

  public final Actor getActor()
  {
    return null;
  }

  public final void setActor(Actor paramActor)
  {
    this.actor = paramActor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.d
 * JD-Core Version:    0.6.2
 */
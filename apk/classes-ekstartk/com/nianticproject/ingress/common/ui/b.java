package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;

public final class b
{
  public static Vector2 a(Actor paramActor)
  {
    Group localGroup = paramActor.getParent();
    float f1 = 0.0F + paramActor.getX();
    float f2 = 0.0F + paramActor.getY();
    while (localGroup != null)
    {
      if ((localGroup instanceof Group))
      {
        f1 += localGroup.getX();
        f2 += localGroup.getY();
      }
      localGroup = localGroup.getParent();
    }
    return new Vector2(f1, f2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b
 * JD-Core Version:    0.6.2
 */
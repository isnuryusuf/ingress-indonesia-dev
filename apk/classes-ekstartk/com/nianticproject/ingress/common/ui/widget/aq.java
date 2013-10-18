package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import java.util.List;

final class aq
  implements bb
{
  private final List<Actor> a;

  public aq(List<Actor> paramList)
  {
    this.a = paramList;
  }

  public final int a(Actor paramActor)
  {
    return this.a.indexOf(paramActor);
  }

  public final Actor a(int paramInt)
  {
    return (Actor)this.a.get(paramInt);
  }

  public final int b()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.aq
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import java.util.Iterator;
import java.util.List;

final class bz extends ClickListener
{
  bz(bp parambp)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    Iterator localIterator = bp.f(this.a).iterator();
    while (localIterator.hasNext())
    {
      ca localca = (ca)localIterator.next();
      bp.a(this.a, co.a(localca), ck.e);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bz
 * JD-Core Version:    0.6.2
 */
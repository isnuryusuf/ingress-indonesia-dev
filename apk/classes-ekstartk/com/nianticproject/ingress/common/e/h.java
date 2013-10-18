package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.shared.af;

final class h extends ClickListener
{
  h(b paramb, af paramaf)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    int i = Math.max(0, -1 + a.a(this.b.a, this.a));
    a.a(this.b.a, this.a, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.h
 * JD-Core Version:    0.6.2
 */
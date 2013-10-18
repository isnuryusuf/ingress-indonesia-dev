package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.shared.af;

final class i extends ClickListener
{
  i(b paramb, af paramaf)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    int i = a.a(this.b.a, this.a);
    a.a(this.b.a, this.a, i + 1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.i
 * JD-Core Version:    0.6.2
 */
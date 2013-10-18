package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.gameentity.f;

final class bp extends ClickListener
{
  bp(bn parambn)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    bj.h(this.a.a).b(bj.e(this.a.a).getGuid());
    bj.i(this.a.a).b(k.class);
    ((k)bj.i(this.a.a).a(k.class)).r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bp
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.g.p;

final class ai extends InputListener
{
  ai(ah paramah, String paramString)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    ah.a(this.b, true);
    ah.a(this.b, System.currentTimeMillis());
    return true;
  }

  public final void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (ah.a(this.b))
    {
      ah.a(this.b, -1L);
      ah.a(this.b, false);
      o.a().a(bs.aO);
      ac localac = p.a().F();
      localac.d();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ai
 * JD-Core Version:    0.6.2
 */
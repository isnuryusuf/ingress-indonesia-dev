package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.ui.Table;

final class r extends InputListener
{
  r(q paramq)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    q.a(this.a, true);
    return true;
  }

  public final void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    q.a(this.a).setX(paramFloat1 + q.a(this.a).getX());
    q.b(this.a);
  }

  public final void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    q.c(this.a);
    q.a(this.a, false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.r
 * JD-Core Version:    0.6.2
 */
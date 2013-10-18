package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.PressedListener;

public class o extends PressedListener
{
  private final p a;

  public o(p paramp)
  {
    this.a = paramp;
  }

  public void a()
  {
  }

  public void a(float paramFloat1, float paramFloat2)
  {
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    super.touchUp(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2);
    boolean bool = isOver(paramInputEvent.getListenerActor(), paramFloat1, paramFloat2);
    if ((bool) && (paramInt1 == 0) && (paramInt2 != getButton()))
      bool = false;
    if (bool)
    {
      if (this.a.a())
        a(paramFloat1, paramFloat2);
    }
    else
      return;
    a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.o
 * JD-Core Version:    0.6.2
 */
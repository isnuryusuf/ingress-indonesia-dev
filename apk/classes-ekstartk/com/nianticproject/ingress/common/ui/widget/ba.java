package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Event;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputEvent.Type;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;

final class ba extends ActorGestureListener
{
  private Vector2 b = null;

  ba(WidgetCarousel paramWidgetCarousel)
  {
  }

  public final void fling(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (Math.abs(paramFloat1) > WidgetCarousel.c(this.a))
    {
      WidgetCarousel.b(this.a, WidgetCarousel.d(this.a));
      WidgetCarousel.c(this.a, WidgetCarousel.e(this.a));
      WidgetCarousel.d(this.a, -paramFloat1 * WidgetCarousel.a(this.a));
      float f1 = WidgetCarousel.e(this.a, WidgetCarousel.d(this.a));
      if ((f1 > -WidgetCarousel.f(this.a)) && (f1 < WidgetCarousel.g(this.a) + WidgetCarousel.f(this.a)))
      {
        float f2 = WidgetCarousel.a(this.a, WidgetCarousel.f(this.a, f1 / WidgetCarousel.g(this.a)));
        WidgetCarousel.d(this.a, WidgetCarousel.g(this.a, f2));
      }
      WidgetCarousel.b(this.a);
      this.b = null;
    }
  }

  public final boolean handle(Event paramEvent)
  {
    if (super.handle(paramEvent))
    {
      if (((InputEvent)paramEvent).getType() == InputEvent.Type.touchDown)
        WidgetCarousel.b(this.a, 0.0F);
      return true;
    }
    return false;
  }

  public final void pan(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    WidgetCarousel.a(this.a, paramFloat3 * WidgetCarousel.a(this.a));
    WidgetCarousel.b(this.a);
    WidgetCarousel.a(this.a, paramFloat1, paramFloat2);
    this.b = null;
  }

  public final void touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    WidgetCarousel.b(this.a, 0.0F);
    WidgetCarousel.a(this.a, paramFloat1, paramFloat2);
    if (WidgetCarousel.h(this.a) != null)
      this.b = new Vector2(paramFloat1, paramFloat2);
  }

  public final void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    int i;
    if (this.b != null)
    {
      i = WidgetCarousel.i(this.a);
      int j = WidgetCarousel.j(this.a).b();
      if ((i >= 0) && (j > 1))
        break label42;
    }
    while (true)
    {
      return;
      label42: if (this.b.sub(paramFloat1, paramFloat2).len() < 10.0F)
      {
        int k;
        if (paramFloat1 < 0.38F * this.a.getWidth())
          k = Math.max(0, i - 1);
        while (i != k)
        {
          o.a().a(bs.aO);
          WidgetCarousel.h(this.a, WidgetCarousel.a(this.a, i));
          float f = WidgetCarousel.a(this.a, k);
          WidgetCarousel.i(this.a, 0.51F * (f - WidgetCarousel.e(this.a)));
          WidgetCarousel.k(this.a);
          return;
          if (paramFloat1 > 0.62F * this.a.getWidth())
            k = Math.min(-1 + WidgetCarousel.j(this.a).b(), i + 1);
          else
            k = i;
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ba
 * JD-Core Version:    0.6.2
 */
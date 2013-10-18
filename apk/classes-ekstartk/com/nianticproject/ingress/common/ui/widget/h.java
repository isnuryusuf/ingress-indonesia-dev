package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;

public final class h extends ScrollPane
{
  private static long a = 3000L;
  private static float b = 0.05F;
  private final float c;
  private final float d;
  private final float e;
  private long f;
  private float g;
  private float h;

  public h(Actor paramActor, ScrollPane.ScrollPaneStyle paramScrollPaneStyle, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramActor, paramScrollPaneStyle);
    this.c = paramFloat2;
    this.d = paramFloat3;
    this.e = paramFloat1;
    this.f = 0L;
    if (paramFloat1 > 0.0F);
    for (this.h = (0.5F * (paramFloat1 * paramFloat2)); ; this.h = 0.0F)
    {
      setScrollingDisabled(true, false);
      addListener(new i(this));
      return;
    }
  }

  public final void act(float paramFloat)
  {
    this.g = (paramFloat + this.g);
    float f2;
    if (this.h > 0.0F)
    {
      this.h -= paramFloat;
      f2 = 1.0F;
    }
    while (true)
    {
      setColor(1.0F, 1.0F, 1.0F, f2);
      super.act(paramFloat);
      return;
      float f1 = Math.min(1.0F, this.g / this.c);
      if ((System.currentTimeMillis() > this.f + a) && (f1 < 1.0F))
      {
        if (this.e == 0.0F);
        for (f2 = Math.min(f1 / this.d, 1.0F); ; f2 = 1.0F)
        {
          if (getMaxY() <= 0.0F)
            break label136;
          float f3 = getScrollPercentY();
          setScrollPercentY(f3 + (f1 - f3) * b);
          break;
        }
      }
      else
      {
        label136: f2 = 1.0F;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.h
 * JD-Core Version:    0.6.2
 */
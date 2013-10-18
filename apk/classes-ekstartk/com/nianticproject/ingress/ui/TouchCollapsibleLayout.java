package com.nianticproject.ingress.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class TouchCollapsibleLayout extends CollapsibleLayout
{
  private final ai a = new ai(this, (byte)0);

  public TouchCollapsibleLayout(Context paramContext)
  {
    super(paramContext);
  }

  public TouchCollapsibleLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public TouchCollapsibleLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getActionMasked())
    {
    case 2:
    default:
    case 0:
    case 1:
    case 3:
    }
    while (true)
    {
      super.dispatchTouchEvent(paramMotionEvent);
      return true;
      removeCallbacks(this.a);
      a(true, true);
      continue;
      postDelayed(this.a, ViewConfiguration.getZoomControlsTimeout());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.TouchCollapsibleLayout
 * JD-Core Version:    0.6.2
 */
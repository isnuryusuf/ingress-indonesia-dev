package com.nianticproject.ingress.multiphotos;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class j
  implements View.OnTouchListener
{
  j(LightboxActivity paramLightboxActivity, GestureDetector paramGestureDetector)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return this.a.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.j
 * JD-Core Version:    0.6.2
 */
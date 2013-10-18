package com.nianticproject.ingress.multiphotos;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class i extends GestureDetector.SimpleOnGestureListener
{
  i(LightboxActivity paramLightboxActivity)
  {
  }

  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    LightboxActivity.a(this.a).a();
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.i
 * JD-Core Version:    0.6.2
 */
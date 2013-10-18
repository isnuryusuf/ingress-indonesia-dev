package android.support.v4.view;

import android.view.MotionEvent;

final class t
  implements u
{
  public final int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return paramMotionEvent.findPointerIndex(paramInt);
  }

  public final int b(MotionEvent paramMotionEvent, int paramInt)
  {
    return paramMotionEvent.getPointerId(paramInt);
  }

  public final float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return paramMotionEvent.getX(paramInt);
  }

  public final float d(MotionEvent paramMotionEvent, int paramInt)
  {
    return paramMotionEvent.getY(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.t
 * JD-Core Version:    0.6.2
 */
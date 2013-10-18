package com.badlogic.gdx.backends.android;

import android.view.MotionEvent;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;

public class AndroidSingleTouchHandler
  implements AndroidTouchHandler
{
  private void postTouchEvent(AndroidInput paramAndroidInput, int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong)
  {
    try
    {
      AndroidInput.TouchEvent localTouchEvent = (AndroidInput.TouchEvent)paramAndroidInput.usedTouchEvents.obtain();
      localTouchEvent.timeStamp = paramLong;
      localTouchEvent.pointer = 0;
      localTouchEvent.x = paramInt2;
      localTouchEvent.y = paramInt3;
      localTouchEvent.type = paramInt1;
      paramAndroidInput.touchEvents.add(localTouchEvent);
      Gdx.app.getGraphics().requestRendering();
      return;
    }
    finally
    {
    }
  }

  public void onTouch(MotionEvent paramMotionEvent, AndroidInput paramAndroidInput)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = paramAndroidInput.touchX[0];
    int m = paramAndroidInput.touchY[0];
    paramAndroidInput.touchX[0] = i;
    paramAndroidInput.touchY[0] = j;
    long l = 1000000L * paramMotionEvent.getEventTime();
    if (paramMotionEvent.getAction() == 0)
    {
      postTouchEvent(paramAndroidInput, 0, i, j, 0, l);
      paramAndroidInput.touched[0] = true;
      paramAndroidInput.deltaX[0] = 0;
      paramAndroidInput.deltaY[0] = 0;
    }
    do
    {
      return;
      if (paramMotionEvent.getAction() == 2)
      {
        postTouchEvent(paramAndroidInput, 2, i, j, 0, l);
        paramAndroidInput.touched[0] = true;
        paramAndroidInput.deltaX[0] = (i - k);
        paramAndroidInput.deltaY[0] = (j - m);
        return;
      }
      if (paramMotionEvent.getAction() == 1)
      {
        postTouchEvent(paramAndroidInput, 1, i, j, 0, l);
        paramAndroidInput.touched[0] = false;
        paramAndroidInput.deltaX[0] = 0;
        paramAndroidInput.deltaY[0] = 0;
        return;
      }
    }
    while (paramMotionEvent.getAction() != 3);
    postTouchEvent(paramAndroidInput, 1, i, j, 0, l);
    paramAndroidInput.touched[0] = false;
    paramAndroidInput.deltaX[0] = 0;
    paramAndroidInput.deltaY[0] = 0;
  }

  public boolean supportsMultitouch(AndroidApplication paramAndroidApplication)
  {
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidSingleTouchHandler
 * JD-Core Version:    0.6.2
 */
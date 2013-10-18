package com.badlogic.gdx.backends.android;

import android.view.MotionEvent;

public abstract interface AndroidTouchHandler
{
  public abstract void onTouch(MotionEvent paramMotionEvent, AndroidInput paramAndroidInput);

  public abstract boolean supportsMultitouch(AndroidApplication paramAndroidApplication);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidTouchHandler
 * JD-Core Version:    0.6.2
 */
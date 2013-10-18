package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.utils.Pool;

class AndroidInput$2 extends Pool<AndroidInput.TouchEvent>
{
  AndroidInput$2(AndroidInput paramAndroidInput, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }

  protected AndroidInput.TouchEvent newObject()
  {
    return new AndroidInput.TouchEvent(this.this$0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.2
 * JD-Core Version:    0.6.2
 */
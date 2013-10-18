package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.utils.Pool;

class AndroidInput$1 extends Pool<AndroidInput.KeyEvent>
{
  AndroidInput$1(AndroidInput paramAndroidInput, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }

  protected AndroidInput.KeyEvent newObject()
  {
    return new AndroidInput.KeyEvent(this.this$0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.1
 * JD-Core Version:    0.6.2
 */
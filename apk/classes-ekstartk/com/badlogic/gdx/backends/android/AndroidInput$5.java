package com.badlogic.gdx.backends.android;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

class AndroidInput$5
  implements Runnable
{
  AndroidInput$5(AndroidInput paramAndroidInput, boolean paramBoolean)
  {
  }

  public void run()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)this.this$0.app.getSystemService("input_method");
    if (this.val$visible)
    {
      View localView = ((AndroidGraphics)this.this$0.app.getGraphics()).getView();
      localView.setFocusable(true);
      localView.setFocusableInTouchMode(true);
      localInputMethodManager.showSoftInput(((AndroidGraphics)this.this$0.app.getGraphics()).getView(), 0);
      return;
    }
    localInputMethodManager.hideSoftInputFromWindow(((AndroidGraphics)this.this$0.app.getGraphics()).getView().getWindowToken(), 0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidInput.5
 * JD-Core Version:    0.6.2
 */
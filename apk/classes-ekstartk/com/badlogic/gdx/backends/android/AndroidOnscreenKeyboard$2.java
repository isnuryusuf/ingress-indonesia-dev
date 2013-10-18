package com.badlogic.gdx.backends.android;

import android.app.Dialog;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

class AndroidOnscreenKeyboard$2
  implements Runnable
{
  AndroidOnscreenKeyboard$2(AndroidOnscreenKeyboard paramAndroidOnscreenKeyboard)
  {
  }

  public void run()
  {
    this.this$0.dialog = this.this$0.createDialog();
    this.this$0.dialog.show();
    this.this$0.handler.post(new AndroidOnscreenKeyboard.2.1(this));
    View localView = this.this$0.dialog.getWindow().findViewById(16908290);
    localView.getViewTreeObserver().addOnPreDrawListener(new AndroidOnscreenKeyboard.2.2(this, localView));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidOnscreenKeyboard.2
 * JD-Core Version:    0.6.2
 */
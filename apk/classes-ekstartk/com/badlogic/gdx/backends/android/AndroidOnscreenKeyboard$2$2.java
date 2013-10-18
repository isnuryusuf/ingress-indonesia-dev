package com.badlogic.gdx.backends.android;

import android.app.Dialog;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.io.PrintStream;

class AndroidOnscreenKeyboard$2$2
  implements ViewTreeObserver.OnPreDrawListener
{
  private int keyboardHeight;
  private boolean keyboardShowing;
  int[] screenloc = new int[2];

  AndroidOnscreenKeyboard$2$2(AndroidOnscreenKeyboard.2 param2, View paramView)
  {
  }

  public boolean onPreDraw()
  {
    this.val$content.getLocationOnScreen(this.screenloc);
    System.out.println(this.screenloc[1]);
    this.keyboardHeight = Math.abs(this.screenloc[1]);
    if (this.keyboardHeight > 0)
      this.keyboardShowing = true;
    if ((this.keyboardHeight == 0) && (this.keyboardShowing))
    {
      this.this$1.this$0.dialog.dismiss();
      this.this$1.this$0.dialog = null;
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidOnscreenKeyboard.2.2
 * JD-Core Version:    0.6.2
 */
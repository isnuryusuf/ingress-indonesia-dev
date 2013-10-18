package com.badlogic.gdx.backends.android;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.badlogic.gdx.Input.Peripheral;

class AndroidOnscreenKeyboard
  implements View.OnKeyListener, View.OnTouchListener
{
  final Context context;
  Dialog dialog;
  final Handler handler;
  final AndroidInput input;
  TextView textView;

  public AndroidOnscreenKeyboard(Context paramContext, Handler paramHandler, AndroidInput paramAndroidInput)
  {
    this.context = paramContext;
    this.handler = paramHandler;
    this.input = paramAndroidInput;
  }

  public static TextView createView(Context paramContext)
  {
    return new AndroidOnscreenKeyboard.1(paramContext);
  }

  Dialog createDialog()
  {
    this.textView = createView(this.context);
    this.textView.setOnKeyListener(this);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
    this.textView.setLayoutParams(localLayoutParams);
    this.textView.setFocusable(true);
    this.textView.setFocusableInTouchMode(true);
    this.textView.setImeOptions(0x10000000 | this.textView.getImeOptions());
    FrameLayout localFrameLayout = new FrameLayout(this.context);
    localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, 0));
    localFrameLayout.addView(this.textView);
    localFrameLayout.setOnTouchListener(this);
    this.dialog = new Dialog(this.context, 16973841);
    this.dialog.setContentView(localFrameLayout);
    return this.dialog;
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return false;
  }

  public void setVisible(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.dialog != null))
    {
      this.dialog.dismiss();
      this.dialog = null;
    }
    if ((paramBoolean) && (this.dialog == null) && (!this.input.isPeripheralAvailable(Input.Peripheral.HardwareKeyboard)))
      this.handler.post(new AndroidOnscreenKeyboard.2(this));
    while ((paramBoolean) || (this.dialog == null))
      return;
    this.dialog.dismiss();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidOnscreenKeyboard
 * JD-Core Version:    0.6.2
 */
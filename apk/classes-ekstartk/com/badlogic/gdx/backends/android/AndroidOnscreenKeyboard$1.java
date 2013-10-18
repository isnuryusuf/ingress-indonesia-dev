package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.text.Editable;
import android.text.method.ArrowKeyMovementMethod;
import android.text.method.MovementMethod;
import android.view.KeyEvent;
import android.widget.TextView;

final class AndroidOnscreenKeyboard$1 extends TextView
{
  Editable editable = new AndroidOnscreenKeyboard.PassThroughEditable();

  AndroidOnscreenKeyboard$1(Context paramContext)
  {
    super(paramContext);
  }

  protected final boolean getDefaultEditable()
  {
    return true;
  }

  protected final MovementMethod getDefaultMovementMethod()
  {
    return ArrowKeyMovementMethod.getInstance();
  }

  public final Editable getEditableText()
  {
    return this.editable;
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    new StringBuilder("down keycode: ").append(paramKeyEvent.getKeyCode()).toString();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    new StringBuilder("up keycode: ").append(paramKeyEvent.getKeyCode()).toString();
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidOnscreenKeyboard.1
 * JD-Core Version:    0.6.2
 */
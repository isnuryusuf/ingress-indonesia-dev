package com.nianticproject.ingress;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class ax
  implements TextView.OnEditorActionListener
{
  ax(EnterCorrectTextActivity paramEnterCorrectTextActivity)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (!TextUtils.isEmpty(paramTextView.getText()))
    {
      EnterCorrectTextActivity.c(this.a);
      return true;
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ax
 * JD-Core Version:    0.6.2
 */
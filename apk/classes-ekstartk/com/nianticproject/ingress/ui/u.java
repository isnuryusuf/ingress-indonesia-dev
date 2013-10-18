package com.nianticproject.ingress.ui;

import android.os.Handler;
import android.os.SystemClock;
import android.text.Layout;
import android.text.NoCopySpan.Concrete;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;

public final class u extends LinkMovementMethod
{
  private static final int a = ViewConfiguration.getLongPressTimeout();
  private static final int b = ViewConfiguration.getTapTimeout();
  private static final Object c = new NoCopySpan.Concrete();
  private static u d;
  private final Object e = new Object();
  private boolean f = false;

  public static u a()
  {
    if (d == null)
      d = new u();
    return d;
  }

  protected static void a(TextView paramTextView, Spannable paramSpannable)
  {
    Layout localLayout = paramTextView.getLayout();
    int i = paramTextView.getTotalPaddingTop() + paramTextView.getTotalPaddingBottom();
    int j = paramTextView.getScrollY();
    int k = j + paramTextView.getHeight() - i;
    int m = localLayout.getLineForVertical(j);
    int n = localLayout.getLineForVertical(k);
    int i1 = localLayout.getLineStart(m);
    int i2 = localLayout.getLineEnd(n);
    paramSpannable.getSpans(i1, i2, w.class);
    int i3 = Selection.getSelectionStart(paramSpannable);
    int i4 = Selection.getSelectionEnd(paramSpannable);
    int i5 = Math.min(i3, i4);
    int i6 = Math.max(i3, i4);
    if ((i5 < 0) && (paramSpannable.getSpanStart(c) >= 0))
    {
      i6 = paramSpannable.length();
      i5 = i6;
    }
    if (i5 > i2)
    {
      i6 = 2147483647;
      i5 = i6;
    }
    if (i6 < i1)
    {
      i6 = -1;
      i5 = i6;
    }
    w[] arrayOfw = (w[])paramSpannable.getSpans(i5, i6, w.class);
    if (arrayOfw.length != 1)
      return;
    arrayOfw[0].a(paramTextView);
  }

  public final boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getActionMasked())
    {
    case 2:
    default:
    case 0:
    case 1:
    case 3:
    }
    while (true)
    {
      return super.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
      this.f = false;
      paramTextView.getHandler().postAtTime(new v(this, paramTextView, paramSpannable), this.e, SystemClock.uptimeMillis() + b + a);
      continue;
      if (this.f)
      {
        this.f = false;
        return true;
      }
      paramTextView.getHandler().removeCallbacksAndMessages(this.e);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.u
 * JD-Core Version:    0.6.2
 */
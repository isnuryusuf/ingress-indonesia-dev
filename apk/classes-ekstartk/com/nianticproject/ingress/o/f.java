package com.nianticproject.ingress.o;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

public final class f
{
  @SuppressLint({"NewApi"})
  public static void a(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
      return;
    }
    paramView.getViewTreeObserver().removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.f
 * JD-Core Version:    0.6.2
 */
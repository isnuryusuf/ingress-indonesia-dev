package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gj;

public final class SignInButton extends FrameLayout
  implements View.OnClickListener
{
  private int a;
  private int b;
  private View c;
  private View.OnClickListener d = null;

  public SignInButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    gg.a(true, "Unknown button size 0");
    gg.a(true, "Unknown color scheme 0");
    this.a = 0;
    this.b = 0;
    Context localContext = getContext();
    if (this.c != null)
      removeView(this.c);
    try
    {
      this.c = gi.a(localContext, this.a, this.b);
      addView(this.c);
      this.c.setEnabled(isEnabled());
      this.c.setOnClickListener(this);
      return;
    }
    catch (gj localgj)
    {
      while (true)
      {
        Log.w("SignInButton", "Sign in button not found, using placeholder instead");
        int i = this.a;
        int j = this.b;
        aa localaa = new aa(localContext);
        localaa.a(localContext.getResources(), i, j);
        this.c = localaa;
      }
    }
  }

  public final void onClick(View paramView)
  {
    if ((this.d != null) && (paramView == this.c))
      this.d.onClick(this);
  }

  public final void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.c.setEnabled(paramBoolean);
  }

  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
    if (this.c != null)
      this.c.setOnClickListener(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.SignInButton
 * JD-Core Version:    0.6.2
 */
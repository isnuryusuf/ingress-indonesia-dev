package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;
import com.google.android.gms.b;
import com.google.android.gms.c;
import com.google.android.gms.d;

public final class aa extends Button
{
  public aa(Context paramContext)
  {
    this(paramContext, null);
  }

  public aa(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 16842824);
  }

  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    switch (paramInt1)
    {
    default:
      throw new IllegalStateException("Unknown color scheme: " + paramInt1);
    case 1:
      paramInt2 = paramInt3;
    case 0:
    }
    return paramInt2;
  }

  public final void a(Resources paramResources, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramInt1 >= 0) && (paramInt1 < 3))
    {
      bool2 = bool1;
      label16: gg.a(bool2, "Unknown button size " + paramInt1);
      if ((paramInt2 < 0) || (paramInt2 >= 2))
        break label174;
    }
    while (true)
    {
      gg.a(bool1, "Unknown color scheme " + paramInt2);
      setTypeface(Typeface.DEFAULT_BOLD);
      setTextSize(14.0F);
      float f = paramResources.getDisplayMetrics().density;
      setMinHeight((int)(0.5F + f * 48.0F));
      setMinWidth((int)(0.5F + f * 48.0F));
      switch (paramInt1)
      {
      default:
        throw new IllegalStateException("Unknown button size: " + paramInt1);
        bool2 = false;
        break label16;
        label174: bool1 = false;
      case 0:
      case 1:
      case 2:
      }
    }
    for (int i = a(paramInt2, c.c, c.d); i == -1; i = a(paramInt2, c.a, c.b))
      throw new IllegalStateException("Could not find background resource!");
    setBackgroundDrawable(paramResources.getDrawable(i));
    setTextColor(paramResources.getColorStateList(a(paramInt2, b.a, b.b)));
    switch (paramInt1)
    {
    default:
      throw new IllegalStateException("Unknown button size: " + paramInt1);
    case 0:
      setText(paramResources.getString(d.n));
      return;
    case 1:
      setText(paramResources.getString(d.o));
      return;
    case 2:
    }
    setText(null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aa
 * JD-Core Version:    0.6.2
 */
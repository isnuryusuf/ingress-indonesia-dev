package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;

public final class am extends FrameLayout
{
  private final ProgressBar a;
  private final TextView b;

  public am(Context paramContext)
  {
    super(paramContext, null, bi.c(paramContext));
    al localal = new al(paramContext);
    setBackgroundColor(-16777216);
    this.a = new ProgressBar(paramContext);
    this.a.setVisibility(8);
    addView(this.a, new FrameLayout.LayoutParams(-2, -2, 17));
    int i = (int)(0.5F + 10.0F * paramContext.getResources().getDisplayMetrics().density);
    this.b = new TextView(paramContext);
    this.b.setTextAppearance(paramContext, 16973894);
    this.b.setTextColor(-1);
    this.b.setVisibility(8);
    this.b.setPadding(i, i, i, i);
    this.b.setGravity(17);
    this.b.setText(localal.a);
    addView(this.b, new FrameLayout.LayoutParams(-2, -2, 17));
  }

  public final void a()
  {
    this.a.setVisibility(8);
    this.b.setVisibility(8);
  }

  public final void b()
  {
    this.a.setVisibility(0);
    this.b.setVisibility(8);
  }

  public final void c()
  {
    this.a.setVisibility(8);
    this.b.setVisibility(0);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    int n;
    if ((i == 1073741824) && (j == 1073741824))
      n = k;
    while (true)
    {
      int i1 = resolveSize(n, paramInt1);
      int i2 = resolveSize(m, paramInt2);
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
      return;
      if ((i == 1073741824) || ((i == -2147483648) && (j == 0)))
      {
        m = (int)(k / 1.777F);
        n = k;
      }
      else if ((j == 1073741824) || ((j == -2147483648) && (i == 0)))
      {
        n = (int)(1.777F * m);
      }
      else if ((i == -2147483648) && (j == -2147483648))
      {
        if (m < k / 1.777F)
        {
          n = (int)(1.777F * m);
        }
        else
        {
          m = (int)(k / 1.777F);
          n = k;
        }
      }
      else
      {
        m = 0;
        n = 0;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.am
 * JD-Core Version:    0.6.2
 */
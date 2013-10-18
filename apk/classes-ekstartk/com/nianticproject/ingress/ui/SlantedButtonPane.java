package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.Button;
import android.widget.RelativeLayout;

public class SlantedButtonPane extends RelativeLayout
{
  private final int a;
  private final int b;
  private Button c;
  private Button d;

  public SlantedButtonPane(Context paramContext)
  {
    super(paramContext);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.a = ((int)TypedValue.applyDimension(1, 12.0F, localDisplayMetrics));
    this.b = ((int)TypedValue.applyDimension(1, 5.0F, localDisplayMetrics));
  }

  public SlantedButtonPane(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.a = ((int)TypedValue.applyDimension(1, 12.0F, localDisplayMetrics));
    this.b = ((int)TypedValue.applyDimension(1, 5.0F, localDisplayMetrics));
  }

  public SlantedButtonPane(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.a = ((int)TypedValue.applyDimension(1, 12.0F, localDisplayMetrics));
    this.b = ((int)TypedValue.applyDimension(1, 5.0F, localDisplayMetrics));
  }

  protected void onFinishInflate()
  {
    this.c = ((Button)findViewById(2131230819));
    this.d = ((Button)findViewById(2131230820));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.c.getMeasuredWidth() + this.d.getMeasuredWidth() - this.a;
    int j = (getMeasuredWidth() - i) / 2;
    int k = this.c.getMeasuredHeight() + this.d.getMeasuredHeight() - this.b;
    int m = (getMeasuredHeight() - k) / 2;
    int n = getMeasuredWidth() - j - this.c.getMeasuredWidth();
    int i1 = m + this.c.getMeasuredHeight();
    this.c.layout(n, i1 - this.c.getMeasuredHeight(), n + this.c.getMeasuredWidth(), i1);
    this.d.layout(n - this.d.getMeasuredWidth() + this.a, i1 - this.b, n + this.a, i1 - this.b + this.d.getMeasuredHeight());
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(Math.max(getMeasuredWidth(), this.c.getMeasuredWidth() + this.d.getMeasuredWidth() + 2 * this.a), Math.max(getMeasuredHeight(), this.c.getMeasuredHeight() + this.d.getMeasuredHeight() + 2 * this.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.SlantedButtonPane
 * JD-Core Version:    0.6.2
 */
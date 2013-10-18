package com.nianticproject.ingress.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class CollapsibleLayout extends LinearLayout
{
  private final j a = new j(this, (byte)0);
  private float b = this.e;
  private float c = this.e;
  private float d = 1.0F;
  private float e = 1.0F;
  private float f = 1.0F;
  private boolean g;

  public CollapsibleLayout(Context paramContext)
  {
    super(paramContext);
  }

  public CollapsibleLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CollapsibleLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected static void c()
  {
  }

  protected static void f()
  {
  }

  public final void a()
  {
    this.d = 1.0F;
  }

  public final void a(float paramFloat)
  {
    this.e = paramFloat;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    float f1;
    if (paramBoolean1)
    {
      f1 = this.d;
      this.c = f1;
      if (!paramBoolean2)
        break label34;
      this.a.a();
    }
    label34: 
    do
    {
      return;
      f1 = this.e;
      break;
      removeCallbacks(this.a);
      this.b = this.c;
      requestLayout();
    }
    while (paramBoolean1);
    e();
  }

  public final void b()
  {
    this.f = 2.0F;
  }

  protected void d()
  {
    this.g = false;
  }

  protected void e()
  {
    this.g = true;
  }

  protected final boolean g()
  {
    return this.g;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(getMeasuredWidth(), (int)(getMeasuredHeight() * this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.CollapsibleLayout
 * JD-Core Version:    0.6.2
 */
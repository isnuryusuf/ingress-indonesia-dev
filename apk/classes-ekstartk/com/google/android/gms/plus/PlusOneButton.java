package com.google.android.gms.plus;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.dz;

public final class PlusOneButton extends ViewGroup
{
  private final dz a;

  public PlusOneButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = new dz(paramContext, paramAttributeSet);
    addView(this.a);
    if (isInEditMode())
      return;
    this.a.c();
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    dz localdz = this.a;
    measureChild(localdz, paramInt1, paramInt2);
    setMeasuredDimension(localdz.getMeasuredWidth(), localdz.getMeasuredHeight());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusOneButton
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;

public class LargestSquareRelativeLayout extends RelativeLayout
{
  public LargestSquareRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }

  public LargestSquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public LargestSquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.makeMeasureSpec(Math.max(getMeasuredWidth(), getMeasuredHeight()), 1073741824);
    super.onMeasure(i, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.LargestSquareRelativeLayout
 * JD-Core Version:    0.6.2
 */
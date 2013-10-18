package com.nianticproject.ingress.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class SquareImageView extends ImageView
{
  public SquareImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SquareImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = Math.min(paramInt1, paramInt2);
    super.onMeasure(i, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.SquareImageView
 * JD-Core Version:    0.6.2
 */
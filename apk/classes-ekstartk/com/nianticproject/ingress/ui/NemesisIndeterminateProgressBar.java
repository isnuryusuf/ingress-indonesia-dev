package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.nianticproject.ingress.dr;

public class NemesisIndeterminateProgressBar extends RelativeLayout
{
  private int a = 2130837621;
  private int b = 2130837622;
  private int c = 1000;
  private int d = 2000;
  private String e = "clockwise";
  private String f = "conterclockwise";

  public NemesisIndeterminateProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }

  public NemesisIndeterminateProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NemesisIndeterminateProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
    TypedArray localTypedArray;
    String str1;
    String str2;
    if (paramAttributeSet != null)
    {
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dr.c);
      this.a = localTypedArray.getResourceId(0, 2130837621);
      this.b = localTypedArray.getResourceId(1, 2130837622);
      this.c = localTypedArray.getInt(2, 1000);
      this.d = localTypedArray.getInt(3, 2000);
      str1 = localTypedArray.getString(4);
      if (TextUtils.isEmpty(str1))
        break label163;
      this.e = str1;
      str2 = localTypedArray.getString(5);
      if (TextUtils.isEmpty(str2))
        break label170;
    }
    while (true)
    {
      this.f = str2;
      localTypedArray.recycle();
      return;
      label163: str1 = "clockwise";
      break;
      label170: str2 = "conterclockwise";
    }
  }

  private static Animation a(int paramInt, boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = 0;
      if (!paramBoolean)
        break label68;
    }
    label68: for (int j = 359; ; j = 0)
    {
      RotateAnimation localRotateAnimation = new RotateAnimation(i, j, 1, 0.5F, 1, 0.5F);
      localRotateAnimation.setDuration(paramInt);
      localRotateAnimation.setRepeatCount(-1);
      localRotateAnimation.setInterpolator(new LinearInterpolator());
      return localRotateAnimation;
      i = 359;
      break;
    }
  }

  private void a(int paramInt, Animation paramAnimation)
  {
    Context localContext = getContext();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13, -1);
    ImageView localImageView = new ImageView(localContext);
    localImageView.setLayoutParams(localLayoutParams);
    localImageView.setImageResource(paramInt);
    addView(localImageView);
    localImageView.startAnimation(paramAnimation);
  }

  private void d()
  {
    a(this.a, a(this.c, "clockwise".equals(this.e)));
    a(this.b, a(this.d, "clockwise".equals(this.f)));
  }

  public final void a()
  {
    this.a = 2130837504;
    this.b = 2130837505;
  }

  public final void b()
  {
    this.c = 10000;
    this.d = 10000;
  }

  public final void c()
  {
    removeAllViews();
    d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.NemesisIndeterminateProgressBar
 * JD-Core Version:    0.6.2
 */
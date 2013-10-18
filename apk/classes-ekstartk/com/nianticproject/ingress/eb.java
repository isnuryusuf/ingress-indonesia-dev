package com.nianticproject.ingress;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.Button;

final class eb extends Button
{
  public eb(dw paramdw, Context paramContext)
  {
    super(paramContext);
  }

  public final void a(int paramInt)
  {
    ColorDrawable localColorDrawable1 = new ColorDrawable(paramInt);
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    arrayOfFloat[1] = Math.min(1.0F, 0.33F + arrayOfFloat[1]);
    arrayOfFloat[2] = Math.min(1.0F, 0.33F + arrayOfFloat[2]);
    ColorDrawable localColorDrawable2 = new ColorDrawable(Color.HSVToColor(arrayOfFloat));
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, localColorDrawable2);
    localStateListDrawable.addState(new int[] { 16842908 }, localColorDrawable1);
    localStateListDrawable.addState(new int[] { 0 }, localColorDrawable1);
    if (Build.VERSION.SDK_INT >= 16)
    {
      setBackground(localStateListDrawable);
      return;
    }
    setBackgroundDrawable(localStateListDrawable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.eb
 * JD-Core Version:    0.6.2
 */
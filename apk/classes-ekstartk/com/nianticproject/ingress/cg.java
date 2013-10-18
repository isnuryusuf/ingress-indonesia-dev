package com.nianticproject.ingress;

import android.content.res.Resources;
import android.util.TypedValue;
import com.nianticproject.ingress.common.w.m;

final class cg
  implements m
{
  cg(NemesisApplication paramNemesisApplication)
  {
  }

  public final float a(float paramFloat)
  {
    return TypedValue.applyDimension(1, paramFloat, this.a.getResources().getDisplayMetrics());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cg
 * JD-Core Version:    0.6.2
 */
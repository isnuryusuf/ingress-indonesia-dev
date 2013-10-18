package com.nianticproject.ingress;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.nianticproject.ingress.o.f;

final class di
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  di(PortalAddActivity paramPortalAddActivity, View paramView)
  {
  }

  public final void onGlobalLayout()
  {
    f.a(this.a, this);
    if (PortalAddActivity.g(this.b) == 0)
      PortalAddActivity.h(this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.di
 * JD-Core Version:    0.6.2
 */
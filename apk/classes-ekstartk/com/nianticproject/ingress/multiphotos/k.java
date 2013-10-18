package com.nianticproject.ingress.multiphotos;

import android.view.View;
import android.view.View.OnClickListener;

final class k
  implements View.OnClickListener
{
  k(LightboxActivity paramLightboxActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(PortalImageGridActivity.a(paramView.getContext(), this.a.c));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.k
 * JD-Core Version:    0.6.2
 */
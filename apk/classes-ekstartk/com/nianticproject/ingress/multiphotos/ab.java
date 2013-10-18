package com.nianticproject.ingress.multiphotos;

import android.view.View;
import android.view.View.OnClickListener;

final class ab
  implements View.OnClickListener
{
  ab(MoreInfoActivity paramMoreInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (MoreInfoActivity.e(this.a).c() > 0)
      this.a.startActivityForResult(LightboxActivity.a(this.a, MoreInfoActivity.f(this.a), MoreInfoActivity.g(this.a)), 3);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.ab
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.nianticproject.ingress.service.NemesisService;

final class dh
  implements View.OnClickListener
{
  dh(PortalAddActivity paramPortalAddActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (!PortalAddActivity.d(this.a).isEnabled())
      return;
    PortalAddActivity.d(this.a).setEnabled(false);
    NemesisService.a(this.a, PortalAddActivity.e(this.a), PortalAddActivity.f(this.a).getWidth());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dh
 * JD-Core Version:    0.6.2
 */
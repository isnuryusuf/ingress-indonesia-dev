package com.nianticproject.ingress.ui;

import android.text.style.ClickableSpan;
import android.view.View;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.scanner.gf;
import com.nianticproject.ingress.shared.plext.PortalMarkupArgSet;

final class ac extends ClickableSpan
{
  private final PortalMarkupArgSet a;

  public ac(PortalMarkupArgSet paramPortalMarkupArgSet)
  {
    this.a = ((PortalMarkupArgSet)an.a(paramPortalMarkupArgSet));
  }

  public final void onClick(View paramView)
  {
    NemesisActivity localNemesisActivity = (NemesisActivity)paramView.getContext();
    PortalMarkupArgSet localPortalMarkupArgSet = this.a;
    localNemesisActivity.a(new gf(localPortalMarkupArgSet.d(), u.a(localPortalMarkupArgSet.e(), localPortalMarkupArgSet.f()), localPortalMarkupArgSet.a(), localPortalMarkupArgSet.c()));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.ac
 * JD-Core Version:    0.6.2
 */
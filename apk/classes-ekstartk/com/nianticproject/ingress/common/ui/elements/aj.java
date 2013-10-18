package com.nianticproject.ingress.common.ui.elements;

import com.nianticproject.ingress.common.ag;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.ui.widget.z;

final class aj
  implements z
{
  aj(PortalInfoDialog paramPortalInfoDialog)
  {
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if (!PortalInfoDialog.i(this.a).d())
    {
      PortalInfoDialog.a(this.a);
      return;
    }
    ag.a().a(paramFloat1, paramFloat2);
    PortalInfoDialog.f(this.a).c(PortalInfoDialog.j(this.a));
    PortalInfoDialog.a(this.a);
    this.a.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.aj
 * JD-Core Version:    0.6.2
 */
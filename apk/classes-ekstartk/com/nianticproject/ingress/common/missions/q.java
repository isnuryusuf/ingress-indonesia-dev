package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.g;

final class q extends g
{
  q(a parama, String paramString)
  {
    super(paramString);
  }

  private void d()
  {
    TutorialDialog localTutorialDialog = this.a.d();
    if (localTutorialDialog == null)
    {
      this.a.t().a(this.a.d);
      return;
    }
    localTutorialDialog.a(new r(this));
    this.a.a(localTutorialDialog);
  }

  public final void a()
  {
    d();
  }

  public final void u_()
  {
    this.a.a(du.g());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.q
 * JD-Core Version:    0.6.2
 */
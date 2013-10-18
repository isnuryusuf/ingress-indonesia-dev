package com.nianticproject.ingress;

import android.view.View;
import android.widget.Button;
import com.nianticproject.ingress.common.w.g;

final class bk extends g
{
  private final bl b;

  public bk(InviteActivity paramInviteActivity, bl parambl)
  {
    super(parambl.name());
    this.b = parambl;
  }

  public final void a()
  {
    bl localbl = this.b;
    ec.a("setUiState");
    InviteActivity.a(this.a);
    new java.lang.Object[1][0] = localbl.name();
    if (InviteActivity.b(this.a) == localbl)
    {
      InviteActivity.a(this.a);
      return;
    }
    InviteActivity.a(this.a, localbl);
    InviteActivity.c(this.a).setVisibility(8);
    InviteActivity.d(this.a).setVisibility(8);
    InviteActivity.e(this.a).setVisibility(8);
    switch (bj.a[localbl.ordinal()])
    {
    default:
      return;
    case 1:
      InviteActivity.c(this.a).setVisibility(0);
      return;
    case 2:
    case 3:
    case 4:
      InviteActivity.d(this.a).setVisibility(0);
      return;
    case 5:
    }
    InviteActivity.e(this.a).setVisibility(0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bk
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress;

import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.nianticproject.ingress.common.m.a;
import com.nianticproject.ingress.common.w.b;

final class bc
  implements View.OnClickListener
{
  bc(InviteActivity paramInviteActivity)
  {
  }

  public final void onClick(View paramView)
  {
    InviteActivity.g(this.a).a(InviteActivity.f(this.a));
    this.a.getSupportLoaderManager().b(this.a);
    InviteActivity.h(this.a).a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bc
 * JD-Core Version:    0.6.2
 */
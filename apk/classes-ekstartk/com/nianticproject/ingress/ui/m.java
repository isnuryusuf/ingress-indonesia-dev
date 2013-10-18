package com.nianticproject.ingress.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class m
  implements View.OnClickListener
{
  private m(CommSlidingDrawer paramCommSlidingDrawer)
  {
  }

  public final void onClick(View paramView)
  {
    if (CommSlidingDrawer.a(this.a))
      return;
    if (CommSlidingDrawer.b(this.a))
    {
      this.a.g();
      return;
    }
    this.a.f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.m
 * JD-Core Version:    0.6.2
 */
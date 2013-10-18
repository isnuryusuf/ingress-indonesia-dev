package com.nianticproject.ingress.multiphotos;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class at
  implements AbsListView.OnScrollListener
{
  at(PortalImageGridActivity paramPortalImageGridActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((!ba.a(this.a.i().f())) && (paramInt == 0))
      this.a.i().a(false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.at
 * JD-Core Version:    0.6.2
 */
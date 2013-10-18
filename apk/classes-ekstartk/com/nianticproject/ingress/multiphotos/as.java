package com.nianticproject.ingress.multiphotos;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class as
  implements AdapterView.OnItemClickListener
{
  as(PortalImageGridActivity paramPortalImageGridActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    PortalImageGridActivity.a(this.a, paramInt, paramView);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.as
 * JD-Core Version:    0.6.2
 */
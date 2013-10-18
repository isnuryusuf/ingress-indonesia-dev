package com.nianticproject.ingress.multiphotos;

import android.text.TextUtils;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.v;
import com.nianticproject.ingress.o.f;
import com.nianticproject.ingress.shared.portal.a;

final class ak
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ak(ag paramag)
  {
  }

  public final void onGlobalLayout()
  {
    f.a(ag.b(this.a), this);
    if (ag.c(this.a) == null)
      ag.F().b("image is null upon first global layout, not requesting image to load.");
    int i;
    String str;
    do
    {
      return;
      i = Math.max(ag.b(this.a).getWidth(), ag.b(this.a).getHeight());
      str = ag.c(this.a).b();
    }
    while (TextUtils.isEmpty(str));
    ag.a(this.a, v.a(str, i));
    ag.a(this.a, ao.a);
    ag.b(this.a).post(new al(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.ak
 * JD-Core Version:    0.6.2
 */
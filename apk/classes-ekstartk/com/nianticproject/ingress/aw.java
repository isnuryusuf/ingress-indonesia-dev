package com.nianticproject.ingress;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import com.nianticproject.ingress.common.w.v;
import com.nianticproject.ingress.o.f;
import com.nianticproject.ingress.service.NemesisService;

final class aw
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  aw(EnterCorrectTextActivity paramEnterCorrectTextActivity)
  {
  }

  public final void onGlobalLayout()
  {
    EnterCorrectTextActivity.a(this.a, v.a(EnterCorrectTextActivity.a(this.a), Math.max(EnterCorrectTextActivity.b(this.a).getWidth(), EnterCorrectTextActivity.b(this.a).getHeight())));
    NemesisService.c(this.a, EnterCorrectTextActivity.a(this.a));
    f.a(EnterCorrectTextActivity.b(this.a), this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.aw
 * JD-Core Version:    0.6.2
 */
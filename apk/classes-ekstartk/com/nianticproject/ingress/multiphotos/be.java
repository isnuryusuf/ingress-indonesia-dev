package com.nianticproject.ingress.multiphotos;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import com.nianticproject.ingress.o.f;

final class be
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  be(bd parambd, ImageView paramImageView, String paramString)
  {
  }

  public final void onGlobalLayout()
  {
    f.a(this.a, this);
    int i = Math.max(this.a.getWidth(), this.a.getHeight());
    bd.a(this.c, this.a, this.b, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.be
 * JD-Core Version:    0.6.2
 */
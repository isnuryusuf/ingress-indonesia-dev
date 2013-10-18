package com.nianticproject.ingress.ui;

import android.graphics.Paint;

final class l
  implements Runnable
{
  l(CommHandle paramCommHandle, int paramInt)
  {
  }

  public final void run()
  {
    CommHandle.a(this.b, this.a);
    int i = this.a * CommHandle.a(this.b).getAlpha() / 255;
    CommHandle.b(this.b).setAlpha(i);
    CommHandle.c(this.b).setAlpha(this.a);
    CommHandle.d(this.b).setAlpha(this.a);
    this.b.invalidate();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.l
 * JD-Core Version:    0.6.2
 */
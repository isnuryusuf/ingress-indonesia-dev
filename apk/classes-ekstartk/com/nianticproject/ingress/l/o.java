package com.nianticproject.ingress.l;

import android.database.ContentObserver;
import android.os.Handler;

final class o extends ContentObserver
{
  o(f paramf, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    f.f(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.o
 * JD-Core Version:    0.6.2
 */
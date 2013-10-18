package com.google.analytics.tracking.android;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

final class s
  implements Handler.Callback
{
  s(q paramq)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (q.e().equals(paramMessage.obj)))
    {
      ah.a().a(true);
      this.a.c();
      ah.a().a(false);
      if ((q.b(this.a) > 0) && (!q.c(this.a)))
        q.d(this.a).sendMessageDelayed(q.d(this.a).obtainMessage(1, q.e()), 1000 * q.b(this.a));
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.s
 * JD-Core Version:    0.6.2
 */
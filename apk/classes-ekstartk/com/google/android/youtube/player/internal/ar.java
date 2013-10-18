package com.google.android.youtube.player.internal;

import android.os.Handler;
import android.os.Message;
import com.google.android.youtube.player.c;
import java.util.ArrayList;

final class ar extends Handler
{
  ar(ap paramap)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 3)
      this.a.a((c)paramMessage.obj);
    do
    {
      return;
      if (paramMessage.what == 4)
        synchronized (ap.a(this.a))
        {
          if ((ap.b(this.a)) && (this.a.f()) && (ap.a(this.a).contains(paramMessage.obj)))
            ((az)paramMessage.obj).a();
          return;
        }
    }
    while (((paramMessage.what == 2) && (!this.a.f())) || ((paramMessage.what != 2) && (paramMessage.what != 1)));
    ((as)paramMessage.obj).a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.ar
 * JD-Core Version:    0.6.2
 */
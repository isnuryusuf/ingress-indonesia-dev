package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.a;
import com.google.android.gms.common.c;
import java.util.ArrayList;

final class fm extends Handler
{
  public fm(fl paramfl, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    do
    {
      synchronized (fl.a(this.a))
      {
        this.a.d = false;
        if (paramMessage.what == 3)
        {
          this.a.a(new a(((Integer)paramMessage.obj).intValue(), null));
          return;
        }
      }
      if (paramMessage.what == 4)
        synchronized (fl.b(this.a))
        {
          if ((this.a.c) && (this.a.f()) && (fl.b(this.a).contains(paramMessage.obj)))
          {
            c localc = (c)paramMessage.obj;
            fl.j();
            localc.a();
          }
          return;
        }
    }
    while (((paramMessage.what == 2) && (!this.a.f())) || ((paramMessage.what != 2) && (paramMessage.what != 1)));
    ((fn)paramMessage.obj).b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fm
 * JD-Core Version:    0.6.2
 */
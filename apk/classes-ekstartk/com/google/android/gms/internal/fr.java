package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

public final class fr
  implements Handler.Callback
{
  private static fr a;
  private final Context b;
  private final HashMap<String, fs> c = new HashMap();
  private final Handler d = new Handler(paramContext.getMainLooper(), this);

  private fr(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
  }

  public static fr a(Context paramContext)
  {
    if (a == null)
      a = new fr(paramContext.getApplicationContext());
    return a;
  }

  public final boolean a(String paramString, fl<?>.fp paramfl)
  {
    while (true)
    {
      fs localfs;
      synchronized (this.c)
      {
        localfs = (fs)this.c.get(paramString);
        if (localfs == null)
        {
          localfs = new fs(this, paramString);
          localfs.a(paramfl);
          localfs.a(this.b.bindService(new Intent(paramString), localfs.a(), 129));
          this.c.put(paramString, localfs);
          boolean bool = localfs.c();
          return bool;
        }
        this.d.removeMessages(0, localfs);
        if (localfs.c(paramfl))
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + paramString);
      }
      localfs.a(paramfl);
      switch (localfs.d())
      {
      case 1:
        paramfl.onServiceConnected(localfs.g(), localfs.f());
        break;
      case 2:
        Intent localIntent = new Intent(paramString);
        localfs.a(this.b.bindService(localIntent, localfs.a(), 129));
      }
    }
  }

  public final void b(String paramString, fl<?>.fp paramfl)
  {
    fs localfs;
    synchronized (this.c)
    {
      localfs = (fs)this.c.get(paramString);
      if (localfs == null)
        throw new IllegalStateException("Nonexistent connection status for service action: " + paramString);
    }
    if (!localfs.c(paramfl))
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + paramString);
    localfs.b(paramfl);
    if (localfs.e())
    {
      Message localMessage = this.d.obtainMessage(0, localfs);
      this.d.sendMessageDelayed(localMessage, 5000L);
    }
  }

  public final boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return false;
    case 0:
    }
    fs localfs = (fs)paramMessage.obj;
    synchronized (this.c)
    {
      if (localfs.e())
      {
        this.b.unbindService(localfs.a());
        this.c.remove(localfs.b());
      }
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fr
 * JD-Core Version:    0.6.2
 */
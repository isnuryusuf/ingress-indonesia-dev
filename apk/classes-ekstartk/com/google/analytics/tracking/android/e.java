package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.c;

final class e
  implements ServiceConnection
{
  e(d paramd)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aq.a("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        aq.a("bound to service");
        d.a(this.a, c.a(paramIBinder));
        d.a(this.a);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      d.b(this.a).unbindService(this);
      d.c(this.a);
      d.d(this.a).a(2);
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aq.a("service disconnected: " + paramComponentName);
    d.c(this.a);
    d.e(this.a).b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.e
 * JD-Core Version:    0.6.2
 */
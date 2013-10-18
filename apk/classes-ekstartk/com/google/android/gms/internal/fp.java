package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class fp
  implements ServiceConnection
{
  fp(fl paramfl)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.b(paramIBinder);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    fl.a(this.a, null);
    this.a.k();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fp
 * JD-Core Version:    0.6.2
 */
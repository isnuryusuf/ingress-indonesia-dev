package com.google.android.youtube.player.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class av
  implements ServiceConnection
{
  av(ap paramap)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.b(paramIBinder);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    ap.a(this.a, null);
    this.a.h();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.av
 * JD-Core Version:    0.6.2
 */
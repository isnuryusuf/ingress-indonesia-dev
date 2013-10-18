package com.nianticproject.ingress.sync;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class SyncService extends Service
{
  private static a a;

  public IBinder onBind(Intent paramIntent)
  {
    return a.getSyncAdapterBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    if (a == null)
      a = new a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.sync.SyncService
 * JD-Core Version:    0.6.2
 */
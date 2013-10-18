package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.analytics.internal.b;
import java.util.List;
import java.util.Map;

final class d
  implements c
{
  private ServiceConnection a;
  private f b;
  private g c;
  private Context d;
  private b e;

  public d(Context paramContext, f paramf, g paramg)
  {
    this.d = paramContext;
    if (paramf == null)
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    this.b = paramf;
    if (paramg == null)
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    this.c = paramg;
  }

  private b d()
  {
    if (this.e != null);
    for (int i = 1; i == 0; i = 0)
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    return this.e;
  }

  public final void a()
  {
    try
    {
      d().a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      aq.b("clear hits failed: " + localRemoteException);
    }
  }

  public final void a(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    try
    {
      d().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      aq.b("sendHit failed: " + localRemoteException);
    }
  }

  public final void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", this.d.getPackageName());
    if (this.a != null)
      aq.b("Calling connect() while still connected, missing disconnect().");
    boolean bool;
    do
    {
      return;
      this.a = new e(this);
      bool = this.d.bindService(localIntent, this.a, 129);
      aq.d("connect: bindService returned " + bool + " for " + localIntent);
    }
    while (bool);
    this.a = null;
    this.c.a(1);
  }

  public final void c()
  {
    this.e = null;
    if (this.a != null);
    try
    {
      this.d.unbindService(this.a);
      label23: this.a = null;
      this.b.b();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label23;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label23;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.d
 * JD-Core Version:    0.6.2
 */
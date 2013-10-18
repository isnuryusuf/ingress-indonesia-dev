package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

public final class ft
  implements ServiceConnection
{
  public ft(fs paramfs)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (fr.a(this.a.a))
    {
      fs.a(this.a, paramIBinder);
      fs.a(this.a, paramComponentName);
      Iterator localIterator = fs.a(this.a).iterator();
      if (localIterator.hasNext())
        ((fp)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
    }
    fs.a(this.a, 1);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (fr.a(this.a.a))
    {
      fs.a(this.a, null);
      fs.a(this.a, paramComponentName);
      Iterator localIterator = fs.a(this.a).iterator();
      if (localIterator.hasNext())
        ((fp)localIterator.next()).onServiceDisconnected(paramComponentName);
    }
    fs.a(this.a, 2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ft
 * JD-Core Version:    0.6.2
 */
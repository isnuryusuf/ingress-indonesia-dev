package com.google.android.gms.internal;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class az
{
  private final bh<aw> a;
  private final ContentResolver b;
  private ContentProviderClient c = null;
  private HashMap<d, bb> d = new HashMap();

  public az(Context paramContext, bh<aw> parambh)
  {
    this.a = parambh;
    this.b = paramContext.getContentResolver();
  }

  public final Location a()
  {
    this.a.a();
    try
    {
      Location localLocation = ((aw)this.a.b()).a();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }

  public final void a(LocationRequest paramLocationRequest, d paramd)
  {
    this.a.a();
    gg.a(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    while (true)
    {
      bb localbb1;
      synchronized (this.d)
      {
        localbb1 = (bb)this.d.get(paramd);
        if (localbb1 == null)
        {
          localbb2 = new bb(paramd);
          this.d.put(paramd, localbb2);
          try
          {
            ((aw)this.a.b()).a(paramLocationRequest, localbb2);
            return;
          }
          catch (RemoteException localRemoteException)
          {
            throw new IllegalStateException(localRemoteException);
          }
        }
      }
      bb localbb2 = localbb1;
    }
  }

  public final void a(d paramd)
  {
    this.a.a();
    gg.a(paramd, "Invalid null listener");
    synchronized (this.d)
    {
      bb localbb = (bb)this.d.remove(paramd);
      if ((this.c != null) && (this.d.isEmpty()))
      {
        this.c.release();
        this.c = null;
      }
      if (localbb != null);
      try
      {
        ((aw)this.a.b()).a(localbb);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new IllegalStateException(localRemoteException);
      }
    }
  }

  public final void b()
  {
    try
    {
      synchronized (this.d)
      {
        Iterator localIterator = this.d.values().iterator();
        while (localIterator.hasNext())
        {
          bb localbb = (bb)localIterator.next();
          if (localbb != null)
            ((aw)this.a.b()).a(localbb);
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
    this.d.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.az
 * JD-Core Version:    0.6.2
 */
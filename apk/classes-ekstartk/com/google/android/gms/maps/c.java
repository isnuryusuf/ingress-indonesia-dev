package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.gg;
import com.google.android.gms.maps.a.d;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.i;
import com.google.android.gms.maps.model.m;

public final class c
{
  private final d a;

  protected c(d paramd)
  {
    this.a = ((d)gg.a(paramd));
  }

  final d a()
  {
    return this.a;
  }

  public final i a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      dg localdg = this.a.a(paramMarkerOptions);
      if (localdg != null)
      {
        i locali = new i(localdg);
        return locali;
      }
      return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void a(a parama)
  {
    try
    {
      this.a.a(parama.a());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final CameraPosition b()
  {
    try
    {
      CameraPosition localCameraPosition = this.a.a();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void c()
  {
    try
    {
      this.a.a(4);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void d()
  {
    try
    {
      this.a.c(true);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final Location e()
  {
    try
    {
      Location localLocation = this.a.j();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.c
 * JD-Core Version:    0.6.2
 */
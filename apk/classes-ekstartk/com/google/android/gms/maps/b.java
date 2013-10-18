package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.internal.gg;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.m;

public final class b
{
  private static com.google.android.gms.maps.a.a a;

  public static a a(LatLng paramLatLng)
  {
    try
    {
      a locala = new a(((com.google.android.gms.maps.a.a)gg.a(a, "CameraUpdateFactory is not initialized")).a(paramLatLng, 17.0F));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  static void a(com.google.android.gms.maps.a.a parama)
  {
    if (a != null)
      return;
    a = (com.google.android.gms.maps.a.a)gg.a(parama);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.b
 * JD-Core Version:    0.6.2
 */
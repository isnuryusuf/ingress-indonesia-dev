package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.cx;
import com.google.android.gms.internal.gg;

public final class b
{
  private static cx a;

  public static a a()
  {
    try
    {
      a locala = new a(((cx)gg.a(a, "IBitmapDescriptorFactory is not initialized")).a(2130837554));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public static void a(cx paramcx)
  {
    if (a != null)
      return;
    a = (cx)gg.a(paramcx);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.b
 * JD-Core Version:    0.6.2
 */
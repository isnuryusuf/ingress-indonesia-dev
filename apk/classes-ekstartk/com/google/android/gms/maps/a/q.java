package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.android.gms.maps.model.h;

public abstract class q extends Binder
  implements p
{
  public static p a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof p)))
      return (p)localIInterface;
    return new r(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IProjectionDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      LatLng localLatLng2 = a(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      if (localLatLng2 != null)
      {
        paramParcel2.writeInt(1);
        localLatLng2.writeToParcel(paramParcel2, 1);
      }
      while (true)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLng localLatLng1 = h.a(paramParcel1); ; localLatLng1 = null)
      {
        af localaf = a(localLatLng1);
        paramParcel2.writeNoException();
        IBinder localIBinder = null;
        if (localaf != null)
          localIBinder = localaf.asBinder();
        paramParcel2.writeStrongBinder(localIBinder);
        return true;
      }
    case 3:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    VisibleRegion localVisibleRegion = a();
    paramParcel2.writeNoException();
    if (localVisibleRegion != null)
    {
      paramParcel2.writeInt(1);
      localVisibleRegion.writeToParcel(paramParcel2, 1);
    }
    while (true)
    {
      return true;
      paramParcel2.writeInt(0);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.q
 * JD-Core Version:    0.6.2
 */
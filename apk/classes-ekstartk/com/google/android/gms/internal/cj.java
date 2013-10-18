package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.h;

public abstract class cj extends Binder
  implements ci
{
  public static ci a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof ci)))
      return (ci)localIInterface;
    return new ck(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapLongClickListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
    if (paramParcel1.readInt() != 0);
    for (LatLng localLatLng = h.a(paramParcel1); ; localLatLng = null)
    {
      a(localLatLng);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cj
 * JD-Core Version:    0.6.2
 */
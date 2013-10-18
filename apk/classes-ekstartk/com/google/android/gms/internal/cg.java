package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.h;

public abstract class cg extends Binder
  implements ce
{
  public static ce a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof ce)))
      return (ce)localIInterface;
    return new ch(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapClickListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapClickListener");
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
 * Qualified Name:     com.google.android.gms.internal.cg
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.d;

public abstract class bt extends Binder
  implements bs
{
  public static bs a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnCameraChangeListener");
    if ((localIInterface != null) && ((localIInterface instanceof bs)))
      return (bs)localIInterface;
    return new bu(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnCameraChangeListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnCameraChangeListener");
    if (paramParcel1.readInt() != 0);
    for (CameraPosition localCameraPosition = d.a(paramParcel1); ; localCameraPosition = null)
    {
      a(localCameraPosition);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bt
 * JD-Core Version:    0.6.2
 */
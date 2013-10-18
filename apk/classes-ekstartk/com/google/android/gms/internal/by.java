package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class by extends Binder
  implements bv
{
  public static bv a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof bv)))
      return (bv)localIInterface;
    return new ca(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
    a(dh.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.by
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bq extends Binder
  implements bp
{
  public static bp a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    if ((localIInterface != null) && ((localIInterface instanceof bp)))
      return (bp)localIInterface;
    return new br(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      af localaf2 = a(dh.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (localaf2 != null)
        localIBinder2 = localaf2.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      return true;
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    af localaf1 = b(dh.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    IBinder localIBinder1 = null;
    if (localaf1 != null)
      localIBinder1 = localaf1.asBinder();
    paramParcel2.writeStrongBinder(localIBinder1);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bq
 * JD-Core Version:    0.6.2
 */
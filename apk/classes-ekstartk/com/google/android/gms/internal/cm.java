package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cm extends Binder
  implements cl
{
  public static cl a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof cl)))
      return (cl)localIInterface;
    return new cn(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerClickListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    boolean bool = a(dh.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    if (bool);
    for (int i = 1; ; i = 0)
    {
      paramParcel2.writeInt(i);
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cm
 * JD-Core Version:    0.6.2
 */
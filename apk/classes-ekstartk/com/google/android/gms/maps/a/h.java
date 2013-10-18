package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.Parcel;
import com.google.android.gms.internal.cc;

public abstract class h extends Binder
  implements g
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      a(cc.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
    a();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.h
 * JD-Core Version:    0.6.2
 */
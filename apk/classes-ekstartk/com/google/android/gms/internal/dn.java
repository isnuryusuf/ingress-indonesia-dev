package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dn extends Binder
  implements dm
{
  public static dm a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof dm)))
      return (dm)localIInterface;
    return new do(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      b();
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      String str = c();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      float f = d();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      int m = paramParcel1.readInt();
      boolean bool3 = false;
      if (m != 0)
        bool3 = true;
      a(bool3);
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      boolean bool2 = e();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 9:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    int i = f();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dn
 * JD-Core Version:    0.6.2
 */
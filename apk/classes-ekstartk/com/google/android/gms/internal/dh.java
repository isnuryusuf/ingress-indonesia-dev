package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.h;

public abstract class dh extends Binder
  implements dg
{
  public static dg a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof dg)))
      return (dg)localIInterface;
    return new di(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      String str3 = b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str3);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLng localLatLng2 = h.a(paramParcel1); ; localLatLng2 = null)
      {
        a(localLatLng2);
        paramParcel2.writeNoException();
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      LatLng localLatLng1 = c();
      paramParcel2.writeNoException();
      if (localLatLng1 != null)
      {
        paramParcel2.writeInt(1);
        localLatLng1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      String str2 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str2);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      b(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      String str1 = e();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str1);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      int i2 = paramParcel1.readInt();
      boolean bool6 = false;
      if (i2 != 0)
        bool6 = true;
      a(bool6);
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      boolean bool5 = f();
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool5)
        i1 = 1;
      paramParcel2.writeInt(i1);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      g();
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      h();
      paramParcel2.writeNoException();
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      boolean bool4 = i();
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      int m = paramParcel1.readInt();
      boolean bool3 = false;
      if (m != 0)
        bool3 = true;
      b(bool3);
      paramParcel2.writeNoException();
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      boolean bool2 = j();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      int i = k();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i);
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
      a(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 19:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
    a(paramParcel1.readFloat(), paramParcel1.readFloat());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dh
 * JD-Core Version:    0.6.2
 */
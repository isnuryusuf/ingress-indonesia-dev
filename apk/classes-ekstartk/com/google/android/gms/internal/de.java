package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.h;

public abstract class de extends Binder
  implements dd
{
  public static dd a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof dd)))
      return (dd)localIInterface;
    return new df(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      String str = b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      int n = paramParcel1.readInt();
      LatLng localLatLng2 = null;
      if (n != 0)
        localLatLng2 = h.a(paramParcel1);
      a(localLatLng2);
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
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
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      a(paramParcel1.readFloat(), paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      float f5 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f5);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      float f4 = e();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f4);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      int m = paramParcel1.readInt();
      LatLngBounds localLatLngBounds2 = null;
      if (m != 0)
        localLatLngBounds2 = g.a(paramParcel1);
      a(localLatLngBounds2);
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      LatLngBounds localLatLngBounds1 = f();
      paramParcel2.writeNoException();
      if (localLatLngBounds1 != null)
      {
        paramParcel2.writeInt(1);
        localLatLngBounds1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      float f3 = g();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f3);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      c(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      float f2 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f2);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      if (paramParcel1.readInt() != 0);
      for (boolean bool3 = true; ; bool3 = false)
      {
        a(bool3);
        paramParcel2.writeNoException();
        return true;
      }
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      boolean bool2 = i();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      d(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      float f1 = j();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 20:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    int i = k();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.de
 * JD-Core Version:    0.6.2
 */
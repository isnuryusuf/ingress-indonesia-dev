package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.h;

public abstract class db extends Binder
  implements da
{
  public static da a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof da)))
      return (da)localIInterface;
    return new dc(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.ICircleDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      String str = b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLng localLatLng2 = h.a(paramParcel1); ; localLatLng2 = null)
      {
        a(localLatLng2);
        paramParcel2.writeNoException();
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
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
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      a(paramParcel1.readDouble());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      double d = d();
      paramParcel2.writeNoException();
      paramParcel2.writeDouble(d);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      float f2 = e();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f2);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      int i1 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      int n = g();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(n);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      float f1 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      int m = paramParcel1.readInt();
      boolean bool3 = false;
      if (m != 0)
        bool3 = true;
      a(bool3);
      paramParcel2.writeNoException();
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      boolean bool2 = i();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 18:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
    int i = j();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.db
 * JD-Core Version:    0.6.2
 */
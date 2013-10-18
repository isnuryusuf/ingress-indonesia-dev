package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

public abstract class dk extends Binder
  implements dj
{
  public static dj a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof dj)))
      return (dj)localIInterface;
    return new dl(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      String str = b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      a(paramParcel1.createTypedArrayList(LatLng.a));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      List localList2 = c();
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList2);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      b(paramParcel1.readArrayList(getClass().getClassLoader()));
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      List localList1 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeList(localList1);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      float f2 = e();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f2);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      int i3 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i3);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      b(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      int i2 = g();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i2);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      float f1 = h();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      int i1 = paramParcel1.readInt();
      boolean bool5 = false;
      if (i1 != 0)
        bool5 = true;
      a(bool5);
      paramParcel2.writeNoException();
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      boolean bool4 = i();
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      int m = paramParcel1.readInt();
      boolean bool3 = false;
      if (m != 0)
        bool3 = true;
      b(bool3);
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      boolean bool2 = j();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 20:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
    int i = k();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dk
 * JD-Core Version:    0.6.2
 */
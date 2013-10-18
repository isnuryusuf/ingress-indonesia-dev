package com.google.android.gms.maps.model.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

public abstract class b extends Binder
  implements a
{
  public static a a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof a)))
      return (a)localIInterface;
    return new c(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      String str = b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      a(paramParcel1.createTypedArrayList(LatLng.a));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      List localList = c();
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      float f2 = d();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f2);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      int i2 = e();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i2);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      float f1 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f1);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      int i1 = paramParcel1.readInt();
      boolean bool5 = false;
      if (i1 != 0)
        bool5 = true;
      a(bool5);
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      boolean bool4 = g();
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      int m = paramParcel1.readInt();
      boolean bool3 = false;
      if (m != 0)
        bool3 = true;
      b(bool3);
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      boolean bool2 = h();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      boolean bool1 = a(a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 16:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
    int i = i();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.a.b
 * JD-Core Version:    0.6.2
 */
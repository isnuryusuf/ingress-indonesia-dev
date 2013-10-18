package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.af;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.d;
import com.google.android.gms.maps.model.g;
import com.google.android.gms.maps.model.h;

public abstract class b extends Binder
  implements a
{
  public static a a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf11 = a();
      paramParcel2.writeNoException();
      IBinder localIBinder11 = null;
      if (localaf11 != null)
        localIBinder11 = localaf11.asBinder();
      paramParcel2.writeStrongBinder(localIBinder11);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf10 = b();
      paramParcel2.writeNoException();
      IBinder localIBinder10 = null;
      if (localaf10 != null)
        localIBinder10 = localaf10.asBinder();
      paramParcel2.writeStrongBinder(localIBinder10);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf9 = a(paramParcel1.readFloat(), paramParcel1.readFloat());
      paramParcel2.writeNoException();
      IBinder localIBinder9 = null;
      if (localaf9 != null)
        localIBinder9 = localaf9.asBinder();
      paramParcel2.writeStrongBinder(localIBinder9);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf8 = a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      IBinder localIBinder8 = null;
      if (localaf8 != null)
        localIBinder8 = localaf8.asBinder();
      paramParcel2.writeStrongBinder(localIBinder8);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf7 = b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      IBinder localIBinder7 = null;
      if (localaf7 != null)
        localIBinder7 = localaf7.asBinder();
      paramParcel2.writeStrongBinder(localIBinder7);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      af localaf6 = a(paramParcel1.readFloat(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      IBinder localIBinder6 = null;
      if (localaf6 != null)
        localIBinder6 = localaf6.asBinder();
      paramParcel2.writeStrongBinder(localIBinder6);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (CameraPosition localCameraPosition = d.a(paramParcel1); ; localCameraPosition = null)
      {
        af localaf5 = a(localCameraPosition);
        paramParcel2.writeNoException();
        IBinder localIBinder5 = null;
        if (localaf5 != null)
          localIBinder5 = localaf5.asBinder();
        paramParcel2.writeStrongBinder(localIBinder5);
        return true;
      }
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLng localLatLng2 = h.a(paramParcel1); ; localLatLng2 = null)
      {
        af localaf4 = a(localLatLng2);
        paramParcel2.writeNoException();
        IBinder localIBinder4 = null;
        if (localaf4 != null)
          localIBinder4 = localaf4.asBinder();
        paramParcel2.writeStrongBinder(localIBinder4);
        return true;
      }
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLng localLatLng1 = h.a(paramParcel1); ; localLatLng1 = null)
      {
        af localaf3 = a(localLatLng1, paramParcel1.readFloat());
        paramParcel2.writeNoException();
        IBinder localIBinder3 = null;
        if (localaf3 != null)
          localIBinder3 = localaf3.asBinder();
        paramParcel2.writeStrongBinder(localIBinder3);
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (LatLngBounds localLatLngBounds2 = g.a(paramParcel1); ; localLatLngBounds2 = null)
      {
        af localaf2 = a(localLatLngBounds2, paramParcel1.readInt());
        paramParcel2.writeNoException();
        IBinder localIBinder2 = null;
        if (localaf2 != null)
          localIBinder2 = localaf2.asBinder();
        paramParcel2.writeStrongBinder(localIBinder2);
        return true;
      }
    case 11:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    if (paramParcel1.readInt() != 0);
    for (LatLngBounds localLatLngBounds1 = g.a(paramParcel1); ; localLatLngBounds1 = null)
    {
      af localaf1 = a(localLatLngBounds1, paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      IBinder localIBinder1 = null;
      if (localaf1 != null)
        localIBinder1 = localaf1.asBinder();
      paramParcel2.writeStrongBinder(localIBinder1);
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.b
 * JD-Core Version:    0.6.2
 */
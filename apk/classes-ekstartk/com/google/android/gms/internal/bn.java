package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.d;

public abstract class bn extends Binder
  implements bm
{
  public static bm a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
    if ((localIInterface != null) && ((localIInterface instanceof bm)))
      return (bm)localIInterface;
    return new bo(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.ICreator");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      a(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      j localj = b(ah.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      IBinder localIBinder4 = null;
      if (localj != null)
        localIBinder4 = localj.asBinder();
      paramParcel2.writeStrongBinder(localIBinder4);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      af localaf = ah.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (GoogleMapOptions localGoogleMapOptions = d.a(paramParcel1); ; localGoogleMapOptions = null)
      {
        m localm = a(localaf, localGoogleMapOptions);
        paramParcel2.writeNoException();
        IBinder localIBinder3 = null;
        if (localm != null)
          localIBinder3 = localm.asBinder();
        paramParcel2.writeStrongBinder(localIBinder3);
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      a locala = a();
      paramParcel2.writeNoException();
      IBinder localIBinder2 = null;
      if (locala != null)
        localIBinder2 = locala.asBinder();
      paramParcel2.writeStrongBinder(localIBinder2);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      cx localcx = b();
      paramParcel2.writeNoException();
      IBinder localIBinder1 = null;
      if (localcx != null)
        localIBinder1 = localcx.asBinder();
      paramParcel2.writeStrongBinder(localIBinder1);
      return true;
    case 6:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
    a(ah.a(paramParcel1.readStrongBinder()), paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bn
 * JD-Core Version:    0.6.2
 */
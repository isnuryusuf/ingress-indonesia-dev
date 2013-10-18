package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.maps.GoogleMapOptions;

public abstract class k extends Binder
  implements j
{
  public static j a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof j)))
      return (j)localIInterface;
    return new l(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      d locald = a();
      paramParcel2.writeNoException();
      if (locald != null);
      for (IBinder localIBinder2 = locald.asBinder(); ; localIBinder2 = null)
      {
        paramParcel2.writeStrongBinder(localIBinder2);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      af localaf4 = ah.a(paramParcel1.readStrongBinder());
      GoogleMapOptions localGoogleMapOptions;
      if (paramParcel1.readInt() != 0)
      {
        localGoogleMapOptions = com.google.android.gms.maps.d.a(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label245;
      }
      for (Bundle localBundle4 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle4 = null)
      {
        a(localaf4, localGoogleMapOptions, localBundle4);
        paramParcel2.writeNoException();
        return true;
        localGoogleMapOptions = null;
        break;
      }
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle3 = null)
      {
        a(localBundle3);
        paramParcel2.writeNoException();
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      af localaf1 = ah.a(paramParcel1.readStrongBinder());
      af localaf2 = ah.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle2 = null)
      {
        af localaf3 = a(localaf1, localaf2, localBundle2);
        paramParcel2.writeNoException();
        IBinder localIBinder1 = null;
        if (localaf3 != null)
          localIBinder1 = localaf3.asBinder();
        paramParcel2.writeStrongBinder(localIBinder1);
        return true;
      }
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      b();
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      c();
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      d();
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      e();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      f();
      paramParcel2.writeNoException();
      return true;
    case 10:
      label245: paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle1 = null)
      {
        b(localBundle1);
        paramParcel2.writeNoException();
        if (localBundle1 == null)
          break;
        paramParcel2.writeInt(1);
        localBundle1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 11:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    boolean bool = g();
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
 * Qualified Name:     com.google.android.gms.maps.a.k
 * JD-Core Version:    0.6.2
 */
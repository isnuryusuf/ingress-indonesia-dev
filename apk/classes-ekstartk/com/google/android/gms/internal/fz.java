package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class fz extends Binder
  implements fy
{
  public static fy a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    if ((localIInterface != null) && ((localIInterface instanceof fy)))
      return (fy)localIInterface;
    return new ga(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv8 = fw.a(paramParcel1.readStrongBinder());
      int i9 = paramParcel1.readInt();
      String str11 = paramParcel1.readString();
      String str12 = paramParcel1.readString();
      String[] arrayOfString2 = paramParcel1.createStringArray();
      String str13 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle8 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle8 = null)
      {
        a(localfv8, i9, str11, str12, arrayOfString2, str13, localBundle8);
        paramParcel2.writeNoException();
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv7 = fw.a(paramParcel1.readStrongBinder());
      int i7 = paramParcel1.readInt();
      String str10 = paramParcel1.readString();
      int i8 = paramParcel1.readInt();
      Bundle localBundle7 = null;
      if (i8 != 0)
        localBundle7 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      a(localfv7, i7, str10, localBundle7);
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(fw.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(fw.a(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv6 = fw.a(paramParcel1.readStrongBinder());
      int i5 = paramParcel1.readInt();
      String str9 = paramParcel1.readString();
      int i6 = paramParcel1.readInt();
      Bundle localBundle6 = null;
      if (i6 != 0)
        localBundle6 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      b(localfv6, i5, str9, localBundle6);
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv5 = fw.a(paramParcel1.readStrongBinder());
      int i3 = paramParcel1.readInt();
      String str8 = paramParcel1.readString();
      int i4 = paramParcel1.readInt();
      Bundle localBundle5 = null;
      if (i4 != 0)
        localBundle5 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      c(localfv5, i3, str8, localBundle5);
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv4 = fw.a(paramParcel1.readStrongBinder());
      int i1 = paramParcel1.readInt();
      String str7 = paramParcel1.readString();
      int i2 = paramParcel1.readInt();
      Bundle localBundle4 = null;
      if (i2 != 0)
        localBundle4 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      d(localfv4, i1, str7, localBundle4);
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv3 = fw.a(paramParcel1.readStrongBinder());
      int m = paramParcel1.readInt();
      String str6 = paramParcel1.readString();
      int n = paramParcel1.readInt();
      Bundle localBundle3 = null;
      if (n != 0)
        localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      e(localfv3, m, str6, localBundle3);
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      fv localfv2 = fw.a(paramParcel1.readStrongBinder());
      int k = paramParcel1.readInt();
      String str2 = paramParcel1.readString();
      String str3 = paramParcel1.readString();
      String[] arrayOfString1 = paramParcel1.createStringArray();
      String str4 = paramParcel1.readString();
      IBinder localIBinder = paramParcel1.readStrongBinder();
      String str5 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle2 = null)
      {
        a(localfv2, k, str2, str3, arrayOfString1, str4, localIBinder, str5, localBundle2);
        paramParcel2.writeNoException();
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(fw.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 11:
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    fv localfv1 = fw.a(paramParcel1.readStrongBinder());
    int i = paramParcel1.readInt();
    String str1 = paramParcel1.readString();
    int j = paramParcel1.readInt();
    Bundle localBundle1 = null;
    if (j != 0)
      localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
    f(localfv1, i, str1, localBundle1);
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fz
 * JD-Core Version:    0.6.2
 */
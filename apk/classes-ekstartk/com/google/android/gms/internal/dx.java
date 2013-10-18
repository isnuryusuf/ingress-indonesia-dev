package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;

public abstract class dx extends Binder
  implements dw
{
  public dx()
  {
    attachInterface(this, "com.google.android.gms.plus.internal.IPlusCallbacks");
  }

  public static dw a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof dw)))
      return (dw)localIInterface;
    return new dy(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.plus.internal.IPlusCallbacks");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i9 = paramParcel1.readInt();
      Bundle localBundle9;
      if (paramParcel1.readInt() != 0)
      {
        localBundle9 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label210;
      }
      for (Bundle localBundle10 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle10 = null)
      {
        a(i9, localBundle9, localBundle10);
        paramParcel2.writeNoException();
        return true;
        localBundle9 = null;
        break;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i8 = paramParcel1.readInt();
      Bundle localBundle8;
      if (paramParcel1.readInt() != 0)
      {
        localBundle8 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label292;
      }
      for (ParcelFileDescriptor localParcelFileDescriptor = (ParcelFileDescriptor)ParcelFileDescriptor.CREATOR.createFromParcel(paramParcel1); ; localParcelFileDescriptor = null)
      {
        a(i8, localBundle8, localParcelFileDescriptor);
        paramParcel2.writeNoException();
        return true;
        localBundle8 = null;
        break;
      }
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i7 = paramParcel1.readInt();
      k localk3 = null;
      if (i7 != 0)
        localk3 = fi.a(paramParcel1);
      a(localk3, paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i5 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle7 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle7 = null)
      {
        int i6 = paramParcel1.readInt();
        at localat = null;
        if (i6 != 0)
          localat = p.a(paramParcel1);
        a(i5, localBundle7, localat);
        paramParcel2.writeNoException();
        return true;
      }
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i4 = paramParcel1.readInt();
      k localk2 = null;
      if (i4 != 0)
        localk2 = fi.a(paramParcel1);
      a(localk2, paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i3 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle6 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle6 = null)
      {
        a(i3, localBundle6);
        paramParcel2.writeNoException();
        return true;
      }
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i2 = paramParcel1.readInt();
      k localk1 = null;
      if (i2 != 0)
        localk1 = fi.a(paramParcel1);
      b(localk1, paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int i1 = paramParcel1.readInt();
      Bundle localBundle4;
      if (paramParcel1.readInt() != 0)
      {
        localBundle4 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label668;
      }
      for (Bundle localBundle5 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle5 = null)
      {
        b(i1, localBundle4, localBundle5);
        paramParcel2.writeNoException();
        return true;
        localBundle4 = null;
        break;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      int m = paramParcel1.readInt();
      int n = paramParcel1.readInt();
      Bundle localBundle3 = null;
      if (n != 0)
        localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      a(m, localBundle3, paramParcel1.readString(), paramParcel1.createStringArrayList(), paramParcel1.createStringArrayList(), paramParcel1.createStringArrayList());
      paramParcel2.writeNoException();
      return true;
    case 11:
      label210: paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
      label292: int j = paramParcel1.readInt();
      label668: if (paramParcel1.readInt() != 0);
      for (Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle2 = null)
      {
        String str = paramParcel1.readString();
        int k = paramParcel1.readInt();
        eb localeb = null;
        if (k != 0)
          localeb = er.a(paramParcel1);
        a(j, localBundle2, str, localeb);
        paramParcel2.writeNoException();
        return true;
      }
    case 12:
    }
    paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
    int i = paramParcel1.readInt();
    if (paramParcel1.readInt() != 0);
    for (Bundle localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle1 = null)
    {
      b(i, localBundle1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dx
 * JD-Core Version:    0.6.2
 */
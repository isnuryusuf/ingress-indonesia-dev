package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ec extends Binder
  implements ea
{
  public static ea a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
    if ((localIInterface != null) && ((localIInterface instanceof ea)))
      return (ea)localIInterface;
    return new ee(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.plus.internal.IPlusService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      b(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      if (paramParcel1.readInt() != 0);
      for (at localat = p.a(paramParcel1); ; localat = null)
      {
        a(localat);
        paramParcel2.writeNoException();
        return true;
      }
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      String str4 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      b();
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      c(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      dw localdw5 = dx.a(paramParcel1.readStrongBinder());
      Uri localUri2;
      if (paramParcel1.readInt() != 0)
      {
        localUri2 = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label533;
      }
      for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle = null)
      {
        a(localdw5, localUri2, localBundle);
        paramParcel2.writeNoException();
        return true;
        localUri2 = null;
        break;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      d(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      b(dx.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      dw localdw4 = dx.a(paramParcel1.readStrongBinder());
      int m = paramParcel1.readInt();
      String str3 = paramParcel1.readString();
      int n = paramParcel1.readInt();
      Uri localUri1 = null;
      if (n != 0)
        localUri1 = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
      a(localdw4, m, str3, localUri1, paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      e(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      c(dx.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 20:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 21:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      dw localdw3 = dx.a(paramParcel1.readStrongBinder());
      String str2 = paramParcel1.readString();
      int k = paramParcel1.readInt();
      boolean bool3 = false;
      if (k != 0)
        bool3 = true;
      a(localdw3, str2, bool3);
      paramParcel2.writeNoException();
      return true;
    case 22:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      dw localdw2 = dx.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (boolean bool1 = true; ; bool1 = false)
      {
        int j = paramParcel1.readInt();
        boolean bool2 = false;
        if (j != 0)
          bool2 = true;
        a(localdw2, bool1, bool2);
        paramParcel2.writeNoException();
        return true;
      }
    case 23:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      a(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.createStringArrayList(), paramParcel1.createStringArrayList(), paramParcel1.createStringArrayList());
      paramParcel2.writeNoException();
      return true;
    case 24:
      paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      f(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 25:
      label533: paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
      dw localdw1 = dx.a(paramParcel1.readStrongBinder());
      String str1 = paramParcel1.readString();
      int i = paramParcel1.readInt();
      eb localeb = null;
      if (i != 0)
        localeb = er.a(paramParcel1);
      a(localdw1, str1, localeb);
      paramParcel2.writeNoException();
      return true;
    case 26:
    }
    paramParcel1.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
    g(dx.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ec
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class t extends Binder
  implements s
{
  public static s a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof s)))
      return (s)localIInterface;
    return new u(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i10 = paramParcel1.readInt();
      boolean bool15 = false;
      if (i10 != 0)
        bool15 = true;
      a(bool15);
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i9 = paramParcel1.readInt();
      boolean bool14 = false;
      if (i9 != 0)
        bool14 = true;
      b(bool14);
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i8 = paramParcel1.readInt();
      boolean bool13 = false;
      if (i8 != 0)
        bool13 = true;
      c(bool13);
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i7 = paramParcel1.readInt();
      boolean bool12 = false;
      if (i7 != 0)
        bool12 = true;
      d(bool12);
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i6 = paramParcel1.readInt();
      boolean bool11 = false;
      if (i6 != 0)
        bool11 = true;
      e(bool11);
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i5 = paramParcel1.readInt();
      boolean bool10 = false;
      if (i5 != 0)
        bool10 = true;
      f(bool10);
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i4 = paramParcel1.readInt();
      boolean bool9 = false;
      if (i4 != 0)
        bool9 = true;
      g(bool9);
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      int i3 = paramParcel1.readInt();
      boolean bool8 = false;
      if (i3 != 0)
        bool8 = true;
      h(bool8);
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool7 = a();
      paramParcel2.writeNoException();
      int i2 = 0;
      if (bool7)
        i2 = 1;
      paramParcel2.writeInt(i2);
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool6 = b();
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool6)
        i1 = 1;
      paramParcel2.writeInt(i1);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool5 = c();
      paramParcel2.writeNoException();
      int n = 0;
      if (bool5)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool4 = d();
      paramParcel2.writeNoException();
      int m = 0;
      if (bool4)
        m = 1;
      paramParcel2.writeInt(m);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool3 = e();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool3)
        k = 1;
      paramParcel2.writeInt(k);
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
      boolean bool2 = f();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool2)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 15:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
    boolean bool1 = g();
    paramParcel2.writeNoException();
    int i = 0;
    if (bool1)
      i = 1;
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.t
 * JD-Core Version:    0.6.2
 */
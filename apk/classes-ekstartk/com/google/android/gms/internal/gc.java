package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class gc extends Binder
  implements gb
{
  public static gb a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    if ((localIInterface != null) && ((localIInterface instanceof gb)))
      return (gb)localIInterface;
    return new gd(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    af localaf = a(ah.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    if (localaf != null);
    for (IBinder localIBinder = localaf.asBinder(); ; localIBinder = null)
    {
      paramParcel2.writeStrongBinder(localIBinder);
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gc
 * JD-Core Version:    0.6.2
 */
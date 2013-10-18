package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class fw extends Binder
  implements fv
{
  public fw()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
  }

  public static fv a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof fv)))
      return (fv)localIInterface;
    return new fx(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    int i = paramParcel1.readInt();
    IBinder localIBinder = paramParcel1.readStrongBinder();
    if (paramParcel1.readInt() != 0);
    for (Bundle localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle = null)
    {
      a(i, localIBinder, localBundle);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fw
 * JD-Core Version:    0.6.2
 */
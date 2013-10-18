package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ah extends Binder
  implements af
{
  public ah()
  {
    attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
  }

  public static af a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
    if ((localIInterface != null) && ((localIInterface instanceof af)))
      return (af)localIInterface;
    return new aj(paramIBinder);
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
    }
    paramParcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ah
 * JD-Core Version:    0.6.2
 */
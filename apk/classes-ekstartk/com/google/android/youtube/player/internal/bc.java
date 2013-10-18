package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bc extends Binder
  implements bb
{
  public bc()
  {
    attachInterface(this, "com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
  }

  public static bb a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
    if ((localIInterface != null) && ((localIInterface instanceof bb)))
      return (bb)localIInterface;
    return new bd(paramIBinder);
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
    paramParcel2.writeString("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.bc
 * JD-Core Version:    0.6.2
 */
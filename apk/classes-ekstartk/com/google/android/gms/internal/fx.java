package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

final class fx
  implements fv
{
  private IBinder a;

  fx(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsCallbacks");
      localParcel1.writeInt(paramInt);
      localParcel1.writeStrongBinder(paramIBinder);
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fx
 * JD-Core Version:    0.6.2
 */
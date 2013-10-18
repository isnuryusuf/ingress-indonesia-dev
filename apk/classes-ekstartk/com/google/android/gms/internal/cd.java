package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class cd
  implements cb
{
  private IBinder a;

  cd(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(af paramaf)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnLocationChangeListener");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
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
 * Qualified Name:     com.google.android.gms.internal.cd
 * JD-Core Version:    0.6.2
 */
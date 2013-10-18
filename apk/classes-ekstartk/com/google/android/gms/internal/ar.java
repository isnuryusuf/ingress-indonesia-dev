package com.google.android.gms.internal;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;

final class ar
  implements ao
{
  private IBinder a;

  ar(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(Location paramLocation)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.location.ILocationListener");
      if (paramLocation != null)
      {
        localParcel.writeInt(1);
        paramLocation.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.a.transact(1, localParcel, null, 1);
        return;
        localParcel.writeInt(0);
      }
    }
    finally
    {
      localParcel.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ar
 * JD-Core Version:    0.6.2
 */
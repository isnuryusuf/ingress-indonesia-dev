package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;

final class ck
  implements ci
{
  private IBinder a;

  ck(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(LatLng paramLatLng)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLongClickListener");
      if (paramLatLng != null)
      {
        localParcel1.writeInt(1);
        paramLatLng.writeToParcel(localParcel1, 0);
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
 * Qualified Name:     com.google.android.gms.internal.ck
 * JD-Core Version:    0.6.2
 */
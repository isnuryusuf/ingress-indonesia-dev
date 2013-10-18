package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;

final class bu
  implements bs
{
  private IBinder a;

  bu(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(CameraPosition paramCameraPosition)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnCameraChangeListener");
      if (paramCameraPosition != null)
      {
        localParcel1.writeInt(1);
        paramCameraPosition.writeToParcel(localParcel1, 0);
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
 * Qualified Name:     com.google.android.gms.internal.bu
 * JD-Core Version:    0.6.2
 */
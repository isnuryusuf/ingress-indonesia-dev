package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;
import com.google.android.gms.maps.model.h;

final class r
  implements p
{
  private IBinder a;

  r(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final af a(LatLng paramLatLng)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramLatLng != null)
      {
        localParcel1.writeInt(1);
        paramLatLng.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        af localaf = ah.a(localParcel2.readStrongBinder());
        return localaf;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final LatLng a(af paramaf)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        Object localObject2 = null;
        if (i != 0)
        {
          LatLng localLatLng = h.a(localParcel2);
          localObject2 = localLatLng;
        }
        return localObject2;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final VisibleRegion a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      if (localParcel2.readInt() != 0)
      {
        VisibleRegion localVisibleRegion2 = com.google.android.gms.maps.model.r.a(localParcel2);
        localVisibleRegion1 = localVisibleRegion2;
        return localVisibleRegion1;
      }
      VisibleRegion localVisibleRegion1 = null;
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
 * Qualified Name:     com.google.android.gms.maps.a.r
 * JD-Core Version:    0.6.2
 */
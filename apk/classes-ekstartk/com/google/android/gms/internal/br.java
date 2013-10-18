package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class br
  implements bp
{
  private IBinder a;

  br(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final af a(dg paramdg)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (paramdg != null);
      for (IBinder localIBinder = paramdg.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        af localaf = ah.a(localParcel2.readStrongBinder());
        return localaf;
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

  public final af b(dg paramdg)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (paramdg != null);
      for (IBinder localIBinder = paramdg.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        af localaf = ah.a(localParcel2.readStrongBinder());
        return localaf;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.br
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class cn
  implements cl
{
  private IBinder a;

  cn(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final boolean a(dg paramdg)
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerClickListener");
      IBinder localIBinder;
      if (paramdg != null)
      {
        localIBinder = paramdg.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i == 0)
          break label84;
      }
      while (true)
      {
        return bool;
        localIBinder = null;
        break;
        label84: bool = false;
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
 * Qualified Name:     com.google.android.gms.internal.cn
 * JD-Core Version:    0.6.2
 */
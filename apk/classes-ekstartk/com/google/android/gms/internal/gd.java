package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class gd
  implements gb
{
  private IBinder a;

  gd(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final af a(af paramaf, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gd
 * JD-Core Version:    0.6.2
 */
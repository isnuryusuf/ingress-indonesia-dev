package com.google.android.youtube.player.internal;

import android.os.IBinder;
import android.os.Parcel;

final class ak
  implements ai
{
  private IBinder a;

  ak(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final IBinder a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      IBinder localIBinder = localParcel2.readStrongBinder();
      return localIBinder;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af a(ac paramac)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
      if (paramac != null);
      for (IBinder localIBinder = paramac.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        af localaf = ag.a(localParcel2.readStrongBinder());
        return localaf;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
      int i = 0;
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
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
 * Qualified Name:     com.google.android.youtube.player.internal.ak
 * JD-Core Version:    0.6.2
 */
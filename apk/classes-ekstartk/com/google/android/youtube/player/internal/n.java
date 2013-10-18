package com.google.android.youtube.player.internal;

import android.os.IBinder;
import android.os.Parcel;

final class n
  implements l
{
  private IBinder a;

  n(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(boolean paramBoolean)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IOnFullscreenListener");
      if (paramBoolean);
      while (true)
      {
        localParcel1.writeInt(i);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        i = 0;
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
 * Qualified Name:     com.google.android.youtube.player.internal.n
 * JD-Core Version:    0.6.2
 */
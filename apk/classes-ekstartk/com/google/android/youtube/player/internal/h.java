package com.google.android.youtube.player.internal;

import android.os.IBinder;
import android.os.Parcel;

final class h
  implements f
{
  private IBinder a;

  h(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(String paramString, IBinder paramIBinder)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IConnectionCallbacks");
      localParcel1.writeString(paramString);
      localParcel1.writeStrongBinder(paramIBinder);
      this.a.transact(1, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.youtube.player.internal.h
 * JD-Core Version:    0.6.2
 */
package com.google.android.youtube.player.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

final class ab
  implements x
{
  private IBinder a;

  ab(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(f paramf, int paramInt, String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IServiceBroker");
      IBinder localIBinder;
      if (paramf != null)
      {
        localIBinder = paramf.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeString(paramString3);
        if (paramBundle == null)
          break label119;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localIBinder = null;
        break;
        label119: localParcel1.writeInt(0);
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
 * Qualified Name:     com.google.android.youtube.player.internal.ab
 * JD-Core Version:    0.6.2
 */
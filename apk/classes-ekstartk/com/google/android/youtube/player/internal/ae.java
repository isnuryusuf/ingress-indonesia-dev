package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;

final class ae
  implements ac
{
  private IBinder a;

  ae(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(Bitmap paramBitmap, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
        if (paramBitmap != null)
        {
          localParcel1.writeInt(1);
          paramBitmap.writeToParcel(localParcel1, 0);
          localParcel1.writeString(paramString);
          if (paramBoolean1)
          {
            j = i;
            localParcel1.writeInt(j);
            if (!paramBoolean2)
              break label132;
            localParcel1.writeInt(i);
            this.a.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      int j = 0;
      continue;
      label132: i = 0;
    }
  }

  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
      localParcel1.writeString(paramString);
      int j;
      if (paramBoolean1)
      {
        j = i;
        localParcel1.writeInt(j);
        if (!paramBoolean2)
          break label90;
      }
      while (true)
      {
        localParcel1.writeInt(i);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        j = 0;
        break;
        label90: i = 0;
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
 * Qualified Name:     com.google.android.youtube.player.internal.ae
 * JD-Core Version:    0.6.2
 */
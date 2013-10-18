package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.n;

final class dr
  implements dp
{
  private IBinder a;

  dr(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final Tile a(int paramInt1, int paramInt2, int paramInt3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      localParcel1.writeInt(paramInt3);
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      if (localParcel2.readInt() != 0)
      {
        Tile localTile2 = n.a(localParcel2);
        localTile1 = localTile2;
        return localTile1;
      }
      Tile localTile1 = null;
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
 * Qualified Name:     com.google.android.gms.internal.dr
 * JD-Core Version:    0.6.2
 */
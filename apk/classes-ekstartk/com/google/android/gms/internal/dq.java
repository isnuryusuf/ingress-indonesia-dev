package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;

public abstract class dq extends Binder
  implements dp
{
  public static dp a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof dp)))
      return (dp)localIInterface;
    return new dr(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    Tile localTile = a(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    if (localTile != null)
    {
      paramParcel2.writeInt(1);
      localTile.writeToParcel(paramParcel2, 1);
      return true;
    }
    paramParcel2.writeInt(0);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dq
 * JD-Core Version:    0.6.2
 */
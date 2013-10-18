package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ag extends Binder
  implements af
{
  public static af a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
    if ((localIInterface != null) && ((localIInterface instanceof af)))
      return (af)localIInterface;
    return new ah(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      a(paramParcel1.readString(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      a();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      b();
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
      c();
      paramParcel2.writeNoException();
      return true;
    case 6:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IThumbnailLoaderService");
    d();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.ag
 * JD-Core Version:    0.6.2
 */
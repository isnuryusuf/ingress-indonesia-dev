package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Parcel;

public abstract class v extends Binder
  implements u
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IPlaylistEventListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
      b();
      paramParcel2.writeNoException();
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
    c();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.v
 * JD-Core Version:    0.6.2
 */
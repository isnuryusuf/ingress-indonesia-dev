package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Parcel;

public abstract class p extends Binder
  implements o
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IPlaybackEventListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
      b();
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
      c();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
      if (paramParcel1.readInt() != 0);
      for (boolean bool = true; ; bool = false)
      {
        a(bool);
        paramParcel2.writeNoException();
        return true;
      }
    case 5:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaybackEventListener");
    a(paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.p
 * JD-Core Version:    0.6.2
 */
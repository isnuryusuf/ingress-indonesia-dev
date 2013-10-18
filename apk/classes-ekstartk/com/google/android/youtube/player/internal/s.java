package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class s extends Binder
  implements r
{
  public s()
  {
    attachInterface(this, "com.google.android.youtube.player.internal.IPlayerStateChangeListener");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      b();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      c();
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
      d();
      paramParcel2.writeNoException();
      return true;
    case 6:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
    b(paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.s
 * JD-Core Version:    0.6.2
 */
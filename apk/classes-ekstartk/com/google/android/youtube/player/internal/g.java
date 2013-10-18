package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class g extends Binder
  implements f
{
  public g()
  {
    attachInterface(this, "com.google.android.youtube.player.internal.IConnectionCallbacks");
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
      paramParcel2.writeString("com.google.android.youtube.player.internal.IConnectionCallbacks");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
    a(paramParcel1.readString(), paramParcel1.readStrongBinder());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.g
 * JD-Core Version:    0.6.2
 */
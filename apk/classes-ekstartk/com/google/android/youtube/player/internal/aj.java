package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class aj extends Binder
  implements ai
{
  public static ai a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
    if ((localIInterface != null) && ((localIInterface instanceof ai)))
      return (ai)localIInterface;
    return new ak(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IYouTubeService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
      IBinder localIBinder3 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeStrongBinder(localIBinder3);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
      IBinder localIBinder1 = paramParcel1.readStrongBinder();
      Object localObject;
      if (localIBinder1 == null)
        localObject = null;
      while (true)
      {
        af localaf = a((ac)localObject);
        paramParcel2.writeNoException();
        IBinder localIBinder2 = null;
        if (localaf != null)
          localIBinder2 = localaf.asBinder();
        paramParcel2.writeStrongBinder(localIBinder2);
        return true;
        IInterface localIInterface = localIBinder1.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
        if ((localIInterface != null) && ((localIInterface instanceof ac)))
          localObject = (ac)localIInterface;
        else
          localObject = new ae(localIBinder1);
      }
    case 3:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
    if (paramParcel1.readInt() != 0);
    for (boolean bool = true; ; bool = false)
    {
      a(bool);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.aj
 * JD-Core Version:    0.6.2
 */
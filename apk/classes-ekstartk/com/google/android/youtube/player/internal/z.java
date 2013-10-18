package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class z extends Binder
  implements x
{
  public static x a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
    if ((localIInterface != null) && ((localIInterface instanceof x)))
      return (x)localIInterface;
    return new ab(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.youtube.player.internal.IServiceBroker");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IServiceBroker");
    IBinder localIBinder = paramParcel1.readStrongBinder();
    Object localObject;
    if (localIBinder == null)
      localObject = null;
    while (true)
    {
      int i = paramParcel1.readInt();
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      String str3 = paramParcel1.readString();
      int j = paramParcel1.readInt();
      Bundle localBundle = null;
      if (j != 0)
        localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      a((f)localObject, i, str1, str2, str3, localBundle);
      paramParcel2.writeNoException();
      return true;
      IInterface localIInterface = localIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
      if ((localIInterface != null) && ((localIInterface instanceof f)))
        localObject = (f)localIInterface;
      else
        localObject = new h(localIBinder);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.z
 * JD-Core Version:    0.6.2
 */
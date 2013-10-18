package com.google.android.gms.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ap extends Binder
  implements ao
{
  public ap()
  {
    attachInterface(this, "com.google.android.gms.location.ILocationListener");
  }

  public static ao a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
    if ((localIInterface != null) && ((localIInterface instanceof ao)))
      return (ao)localIInterface;
    return new ar(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.location.ILocationListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.ILocationListener");
    if (paramParcel1.readInt() != 0);
    for (Location localLocation = (Location)Location.CREATOR.createFromParcel(paramParcel1); ; localLocation = null)
    {
      a(localLocation);
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ap
 * JD-Core Version:    0.6.2
 */
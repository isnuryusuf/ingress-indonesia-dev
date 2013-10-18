package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class au extends Binder
  implements as
{
  public static as a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof as)))
      return (as)localIInterface;
    return new av(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.location.internal.IGeofencerCallbacks");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
      a(paramParcel1.readInt(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
      b(paramParcel1.readInt(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
    int i = paramParcel1.readInt();
    if (paramParcel1.readInt() != 0);
    for (PendingIntent localPendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1); ; localPendingIntent = null)
    {
      a(i, localPendingIntent);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.au
 * JD-Core Version:    0.6.2
 */
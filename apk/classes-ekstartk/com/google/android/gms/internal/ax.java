package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import java.util.ArrayList;

public abstract class ax extends Binder
  implements aw
{
  public static aw a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
    if ((localIInterface != null) && ((localIInterface instanceof aw)))
      return (aw)localIInterface;
    return new ay(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      ArrayList localArrayList = paramParcel1.createTypedArrayList(cf.a);
      int i3 = paramParcel1.readInt();
      PendingIntent localPendingIntent6 = null;
      if (i3 != 0)
        localPendingIntent6 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
      a(localArrayList, localPendingIntent6, au.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      int i2 = paramParcel1.readInt();
      PendingIntent localPendingIntent5 = null;
      if (i2 != 0)
        localPendingIntent5 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
      a(localPendingIntent5, au.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      a(paramParcel1.createStringArray(), au.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      a(au.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      long l = paramParcel1.readLong();
      int n = paramParcel1.readInt();
      boolean bool = false;
      if (n != 0)
        bool = true;
      int i1 = paramParcel1.readInt();
      PendingIntent localPendingIntent4 = null;
      if (i1 != 0)
        localPendingIntent4 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
      a(l, bool, localPendingIntent4);
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      int m = paramParcel1.readInt();
      PendingIntent localPendingIntent3 = null;
      if (m != 0)
        localPendingIntent3 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
      a(localPendingIntent3);
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      Location localLocation = a();
      paramParcel2.writeNoException();
      if (localLocation != null)
      {
        paramParcel2.writeInt(1);
        localLocation.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      int k = paramParcel1.readInt();
      LocationRequest localLocationRequest2 = null;
      if (k != 0)
        localLocationRequest2 = e.a(paramParcel1);
      a(localLocationRequest2, ap.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramParcel1.readInt() != 0);
      for (LocationRequest localLocationRequest1 = e.a(paramParcel1); ; localLocationRequest1 = null)
      {
        int j = paramParcel1.readInt();
        PendingIntent localPendingIntent2 = null;
        if (j != 0)
          localPendingIntent2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
        a(localLocationRequest1, localPendingIntent2);
        paramParcel2.writeNoException();
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      a(ap.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 11:
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
    int i = paramParcel1.readInt();
    PendingIntent localPendingIntent1 = null;
    if (i != 0)
      localPendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
    b(localPendingIntent1);
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ax
 * JD-Core Version:    0.6.2
 */
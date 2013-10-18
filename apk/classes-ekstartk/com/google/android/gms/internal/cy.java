package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class cy extends Binder
  implements cx
{
  public static cx a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof cx)))
      return (cx)localIInterface;
    return new cz(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      af localaf7 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (localaf7 != null);
      for (IBinder localIBinder7 = localaf7.asBinder(); ; localIBinder7 = null)
      {
        paramParcel2.writeStrongBinder(localIBinder7);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      af localaf6 = a(paramParcel1.readString());
      paramParcel2.writeNoException();
      IBinder localIBinder6 = null;
      if (localaf6 != null)
        localIBinder6 = localaf6.asBinder();
      paramParcel2.writeStrongBinder(localIBinder6);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      af localaf5 = b(paramParcel1.readString());
      paramParcel2.writeNoException();
      IBinder localIBinder5 = null;
      if (localaf5 != null)
        localIBinder5 = localaf5.asBinder();
      paramParcel2.writeStrongBinder(localIBinder5);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      af localaf4 = a();
      paramParcel2.writeNoException();
      IBinder localIBinder4 = null;
      if (localaf4 != null)
        localIBinder4 = localaf4.asBinder();
      paramParcel2.writeStrongBinder(localIBinder4);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      af localaf3 = a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      IBinder localIBinder3 = null;
      if (localaf3 != null)
        localIBinder3 = localaf3.asBinder();
      paramParcel2.writeStrongBinder(localIBinder3);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (Bitmap localBitmap = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1); ; localBitmap = null)
      {
        af localaf2 = a(localBitmap);
        paramParcel2.writeNoException();
        IBinder localIBinder2 = null;
        if (localaf2 != null)
          localIBinder2 = localaf2.asBinder();
        paramParcel2.writeStrongBinder(localIBinder2);
        return true;
      }
    case 7:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    af localaf1 = c(paramParcel1.readString());
    paramParcel2.writeNoException();
    IBinder localIBinder1 = null;
    if (localaf1 != null)
      localIBinder1 = localaf1.asBinder();
    paramParcel2.writeStrongBinder(localIBinder1);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cy
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;

final class cz
  implements cx
{
  private IBinder a;

  cz(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final af a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af a(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af a(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localParcel1.writeInt(paramInt);
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af a(Bitmap paramBitmap)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      if (paramBitmap != null)
      {
        localParcel1.writeInt(1);
        paramBitmap.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        af localaf = ah.a(localParcel2.readStrongBinder());
        return localaf;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af a(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localParcel1.writeString(paramString);
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final af b(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localParcel1.writeString(paramString);
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final af c(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localParcel1.writeString(paramString);
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      af localaf = ah.a(localParcel2.readStrongBinder());
      return localaf;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cz
 * JD-Core Version:    0.6.2
 */
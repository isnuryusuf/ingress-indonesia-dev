package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

final class c
  implements a
{
  private IBinder a;

  c(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final af a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
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

  public final af a(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
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

  public final af a(float paramFloat1, float paramFloat2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat1);
      localParcel1.writeFloat(paramFloat2);
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

  public final af a(float paramFloat, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      this.a.transact(6, localParcel1, localParcel2, 0);
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

  public final af a(CameraPosition paramCameraPosition)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramCameraPosition != null)
      {
        localParcel1.writeInt(1);
        paramCameraPosition.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(7, localParcel1, localParcel2, 0);
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

  public final af a(LatLng paramLatLng)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLng != null)
      {
        localParcel1.writeInt(1);
        paramLatLng.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(8, localParcel1, localParcel2, 0);
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

  public final af a(LatLng paramLatLng, float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLng != null)
      {
        localParcel1.writeInt(1);
        paramLatLng.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeFloat(paramFloat);
        this.a.transact(9, localParcel1, localParcel2, 0);
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

  public final af a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLngBounds != null)
      {
        localParcel1.writeInt(1);
        paramLatLngBounds.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeInt(paramInt);
        this.a.transact(10, localParcel1, localParcel2, 0);
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

  public final af a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramLatLngBounds != null)
      {
        localParcel1.writeInt(1);
        paramLatLngBounds.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        localParcel1.writeInt(paramInt3);
        this.a.transact(11, localParcel1, localParcel2, 0);
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

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final af b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
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

  public final af b(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.c
 * JD-Core Version:    0.6.2
 */
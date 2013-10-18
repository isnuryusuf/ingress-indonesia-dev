package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

final class do
  implements dm
{
  private IBinder a;

  do(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      localParcel1.writeFloat(paramFloat);
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      int i = 0;
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean a(dm paramdm)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      if (paramdm != null);
      for (IBinder localIBinder = paramdm.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(8, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        boolean bool = false;
        if (i != 0)
          bool = true;
        return bool;
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

  public final void b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final String c()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final float d()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      float f = localParcel2.readFloat();
      return f;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean e()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      boolean bool = false;
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final int f()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      this.a.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.do
 * JD-Core Version:    0.6.2
 */
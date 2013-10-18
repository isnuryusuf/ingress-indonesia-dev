package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

final class c
  implements a
{
  private IBinder a;

  c(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      localParcel1.writeFloat(paramFloat);
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      localParcel1.writeInt(paramInt);
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(List<LatLng> paramList)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      localParcel1.writeTypedList(paramList);
      this.a.transact(3, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      int i = 0;
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean a(a parama)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      if (parama != null);
      for (IBinder localIBinder = parama.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(15, localParcel1, localParcel2, 0);
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

  public final String b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(2, localParcel1, localParcel2, 0);
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

  public final void b(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      localParcel1.writeFloat(paramFloat);
      this.a.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void b(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      int i = 0;
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(13, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final List<LatLng> c()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ArrayList localArrayList = localParcel2.createTypedArrayList(LatLng.a);
      return localArrayList;
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(6, localParcel1, localParcel2, 0);
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

  public final int e()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(8, localParcel1, localParcel2, 0);
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

  public final float f()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(10, localParcel1, localParcel2, 0);
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

  public final boolean g()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(12, localParcel1, localParcel2, 0);
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

  public final boolean h()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(14, localParcel1, localParcel2, 0);
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

  public final int i()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolylineDelegate");
      this.a.transact(16, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.maps.model.a.c
 * JD-Core Version:    0.6.2
 */
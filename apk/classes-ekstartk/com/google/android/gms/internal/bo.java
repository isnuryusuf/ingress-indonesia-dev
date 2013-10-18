package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.a.b;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.a.k;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.a.n;

final class bo
  implements bm
{
  private IBinder a;

  bo(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final a a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      a locala = b.a(localParcel2.readStrongBinder());
      return locala;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final m a(af paramaf, GoogleMapOptions paramGoogleMapOptions)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      IBinder localIBinder;
      if (paramaf != null)
      {
        localIBinder = paramaf.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        if (paramGoogleMapOptions == null)
          break label96;
        localParcel1.writeInt(1);
        paramGoogleMapOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        m localm = n.a(localParcel2.readStrongBinder());
        return localm;
        localIBinder = null;
        break;
        label96: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(af paramaf)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(af paramaf, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt);
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
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

  public final cx b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      cx localcx = cy.a(localParcel2.readStrongBinder());
      return localcx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final j b(af paramaf)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramaf != null);
      for (IBinder localIBinder = paramaf.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        j localj = k.a(localParcel2.readStrongBinder());
        return localj;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bo
 * JD-Core Version:    0.6.2
 */
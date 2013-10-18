package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import java.util.List;

final class dy
  implements dw
{
  private IBinder a;

  dy(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(int paramInt, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      localParcel1.writeInt(paramInt);
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(int paramInt, Bundle paramBundle1, Bundle paramBundle2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
        localParcel1.writeInt(paramInt);
        if (paramBundle1 != null)
        {
          localParcel1.writeInt(1);
          paramBundle1.writeToParcel(localParcel1, 0);
          if (paramBundle2 != null)
          {
            localParcel1.writeInt(1);
            paramBundle2.writeToParcel(localParcel1, 0);
            this.a.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      localParcel1.writeInt(0);
    }
  }

  public final void a(int paramInt, Bundle paramBundle, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
        localParcel1.writeInt(paramInt);
        if (paramBundle != null)
        {
          localParcel1.writeInt(1);
          paramBundle.writeToParcel(localParcel1, 0);
          if (paramParcelFileDescriptor != null)
          {
            localParcel1.writeInt(1);
            paramParcelFileDescriptor.writeToParcel(localParcel1, 0);
            this.a.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      localParcel1.writeInt(0);
    }
  }

  public final void a(int paramInt, Bundle paramBundle, at paramat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
        localParcel1.writeInt(paramInt);
        if (paramBundle != null)
        {
          localParcel1.writeInt(1);
          paramBundle.writeToParcel(localParcel1, 0);
          if (paramat != null)
          {
            localParcel1.writeInt(1);
            paramat.writeToParcel(localParcel1, 0);
            this.a.transact(5, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      localParcel1.writeInt(0);
    }
  }

  public final void a(int paramInt, Bundle paramBundle, String paramString, eb parameb)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
        localParcel1.writeInt(paramInt);
        if (paramBundle != null)
        {
          localParcel1.writeInt(1);
          paramBundle.writeToParcel(localParcel1, 0);
          localParcel1.writeString(paramString);
          if (parameb != null)
          {
            localParcel1.writeInt(1);
            parameb.writeToParcel(localParcel1, 0);
            this.a.transact(11, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      localParcel1.writeInt(0);
    }
  }

  public final void a(int paramInt, Bundle paramBundle, String paramString, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      localParcel1.writeInt(paramInt);
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeString(paramString);
        localParcel1.writeStringList(paramList1);
        localParcel1.writeStringList(paramList2);
        localParcel1.writeStringList(paramList3);
        this.a.transact(10, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(k paramk, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      if (paramk != null)
      {
        localParcel1.writeInt(1);
        paramk.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeString(paramString);
        this.a.transact(4, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(k paramk, String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      if (paramk != null)
      {
        localParcel1.writeInt(1);
        paramk.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      localParcel1.writeString(paramString);
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

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final void b(int paramInt, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      localParcel1.writeInt(paramInt);
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(12, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void b(int paramInt, Bundle paramBundle1, Bundle paramBundle2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
        localParcel1.writeInt(paramInt);
        if (paramBundle1 != null)
        {
          localParcel1.writeInt(1);
          paramBundle1.writeToParcel(localParcel1, 0);
          if (paramBundle2 != null)
          {
            localParcel1.writeInt(1);
            paramBundle2.writeToParcel(localParcel1, 0);
            this.a.transact(9, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      localParcel1.writeInt(0);
    }
  }

  public final void b(k paramk, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
      if (paramk != null)
      {
        localParcel1.writeInt(1);
        paramk.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeString(paramString);
        this.a.transact(8, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
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
 * Qualified Name:     com.google.android.gms.internal.dy
 * JD-Core Version:    0.6.2
 */
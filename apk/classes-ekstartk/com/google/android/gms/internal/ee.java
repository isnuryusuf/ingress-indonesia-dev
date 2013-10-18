package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

final class ee
  implements ea
{
  private IBinder a;

  ee(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final String a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      this.a.transact(5, localParcel1, localParcel2, 0);
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

  public final void a(at paramat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramat != null)
      {
        localParcel1.writeInt(1);
        paramat.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
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

  public final void a(dw paramdw)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(8, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        localParcel1.writeInt(paramInt3);
        localParcel1.writeString(paramString);
        this.a.transact(16, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, int paramInt, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(20, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      IBinder localIBinder;
      if (paramdw != null)
      {
        localIBinder = paramdw.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        if (paramUri == null)
          break label120;
        localParcel1.writeInt(1);
        paramUri.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeString(paramString2);
        localParcel1.writeString(paramString3);
        this.a.transact(14, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localIBinder = null;
        break;
        label120: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(dw paramdw, Uri paramUri, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        IBinder localIBinder;
        if (paramdw != null)
        {
          localIBinder = paramdw.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          if (paramUri != null)
          {
            localParcel1.writeInt(1);
            paramUri.writeToParcel(localParcel1, 0);
            if (paramBundle == null)
              break label133;
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
            this.a.transact(9, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localIBinder = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      label133: localParcel1.writeInt(0);
    }
  }

  public final void a(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
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

  public final void a(dw paramdw, String paramString, eb parameb)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      IBinder localIBinder;
      if (paramdw != null)
      {
        localIBinder = paramdw.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        if (parameb == null)
          break label98;
        localParcel1.writeInt(1);
        parameb.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(25, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localIBinder = null;
        break;
        label98: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(dw paramdw, String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        this.a.transact(2, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString3);
        this.a.transact(12, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, String paramString, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        localParcel1.writeStringList(paramList1);
        localParcel1.writeStringList(paramList2);
        localParcel1.writeStringList(paramList3);
        this.a.transact(23, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, String paramString, boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        int i = 0;
        if (paramBoolean)
          i = 1;
        localParcel1.writeInt(i);
        this.a.transact(21, localParcel1, localParcel2, 0);
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

  public final void a(dw paramdw, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      IBinder localIBinder;
      int j;
      if (paramdw != null)
      {
        localIBinder = paramdw.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        if (!paramBoolean1)
          break label104;
        j = i;
        label47: localParcel1.writeInt(j);
        if (!paramBoolean2)
          break label110;
      }
      while (true)
      {
        localParcel1.writeInt(i);
        this.a.transact(22, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localIBinder = null;
        break;
        label104: j = 0;
        break label47;
        label110: i = 0;
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
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      localParcel1.writeString(paramString);
      this.a.transact(17, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
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

  public final void b(dw paramdw)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(13, localParcel1, localParcel2, 0);
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

  public final void b(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(3, localParcel1, localParcel2, 0);
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

  public final void c(dw paramdw)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(19, localParcel1, localParcel2, 0);
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

  public final void c(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(7, localParcel1, localParcel2, 0);
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

  public final void d(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(10, localParcel1, localParcel2, 0);
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

  public final void e(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(18, localParcel1, localParcel2, 0);
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

  public final void f(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(24, localParcel1, localParcel2, 0);
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

  public final void g(dw paramdw, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
      if (paramdw != null);
      for (IBinder localIBinder = paramdw.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        localParcel1.writeString(paramString);
        this.a.transact(26, localParcel1, localParcel2, 0);
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ee
 * JD-Core Version:    0.6.2
 */
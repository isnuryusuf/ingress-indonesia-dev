package com.google.android.gms.internal;

import android.database.CursorWindow;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class fi
  implements Parcelable.Creator<k>
{
  public static k a(Parcel paramParcel)
  {
    k localk = new k();
    int i = b.a(paramParcel);
    while (paramParcel.dataPosition() < i)
    {
      int j = paramParcel.readInt();
      switch (0xFFFF & j)
      {
      default:
        b.b(paramParcel, j);
        break;
      case 1:
        localk.c = b.q(paramParcel, j);
        break;
      case 1000:
        localk.b = b.f(paramParcel, j);
        break;
      case 2:
        Parcelable.Creator localCreator = CursorWindow.CREATOR;
        int k = b.a(paramParcel, j);
        int m = paramParcel.dataPosition();
        Object[] arrayOfObject;
        if (k == 0)
          arrayOfObject = null;
        while (true)
        {
          localk.e = ((CursorWindow[])arrayOfObject);
          break;
          arrayOfObject = paramParcel.createTypedArray(localCreator);
          paramParcel.setDataPosition(m + k);
        }
      case 3:
        localk.f = b.f(paramParcel, j);
        break;
      case 4:
        localk.g = b.n(paramParcel, j);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    localk.a();
    return localk;
  }

  static void a(k paramk, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, paramk.c);
    d.a(paramParcel, 1000, paramk.b);
    d.a(paramParcel, paramk.e, paramInt);
    d.a(paramParcel, 3, paramk.f);
    d.a(paramParcel, paramk.g);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fi
 * JD-Core Version:    0.6.2
 */
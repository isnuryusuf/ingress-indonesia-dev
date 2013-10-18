package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class n
  implements Parcelable.Creator<Tile>
{
  public static Tile a(Parcel paramParcel)
  {
    int i = 0;
    int j = b.a(paramParcel);
    byte[] arrayOfByte = null;
    int k = 0;
    int m = 0;
    while (paramParcel.dataPosition() < j)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default:
        b.b(paramParcel, n);
        break;
      case 1:
        m = b.f(paramParcel, n);
        break;
      case 2:
        k = b.f(paramParcel, n);
        break;
      case 3:
        i = b.f(paramParcel, n);
        break;
      case 4:
        arrayOfByte = b.o(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != j)
      throw new c("Overread allowed size end=" + j, paramParcel);
    return new Tile(m, k, i, arrayOfByte);
  }

  static void a(Tile paramTile, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramTile.a());
    d.a(paramParcel, 2, paramTile.b);
    d.a(paramParcel, 3, paramTile.c);
    d.a(paramParcel, paramTile.d);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.n
 * JD-Core Version:    0.6.2
 */
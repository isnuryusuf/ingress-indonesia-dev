package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class p
  implements Parcelable.Creator<TileOverlayOptions>
{
  public static TileOverlayOptions a(Parcel paramParcel)
  {
    boolean bool = false;
    int i = b.a(paramParcel);
    IBinder localIBinder = null;
    float f = 0.0F;
    int j = 0;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        b.b(paramParcel, k);
        break;
      case 1:
        j = b.f(paramParcel, k);
        break;
      case 2:
        localIBinder = b.m(paramParcel, k);
        break;
      case 3:
        bool = b.c(paramParcel, k);
        break;
      case 4:
        f = b.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new TileOverlayOptions(j, localIBinder, bool, f);
  }

  static void a(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramTileOverlayOptions.a());
    d.a(paramParcel, 2, paramTileOverlayOptions.b());
    d.a(paramParcel, 3, paramTileOverlayOptions.d());
    d.a(paramParcel, 4, paramTileOverlayOptions.c());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.p
 * JD-Core Version:    0.6.2
 */
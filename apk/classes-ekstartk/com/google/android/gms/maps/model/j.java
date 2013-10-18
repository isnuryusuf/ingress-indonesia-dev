package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class j
  implements Parcelable.Creator<MarkerOptions>
{
  public static MarkerOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    IBinder localIBinder = null;
    int i = b.a(paramParcel);
    boolean bool2 = false;
    float f2 = 0.0F;
    String str1 = null;
    String str2 = null;
    LatLng localLatLng = null;
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
        localLatLng = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 3:
        str2 = b.l(paramParcel, k);
        break;
      case 4:
        str1 = b.l(paramParcel, k);
        break;
      case 5:
        localIBinder = b.m(paramParcel, k);
        break;
      case 6:
        f2 = b.i(paramParcel, k);
        break;
      case 7:
        f1 = b.i(paramParcel, k);
        break;
      case 8:
        bool2 = b.c(paramParcel, k);
        break;
      case 9:
        bool1 = b.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new MarkerOptions(j, localLatLng, str2, str1, localIBinder, f2, f1, bool2, bool1);
  }

  static void a(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramMarkerOptions.a());
    d.a(paramParcel, 2, paramMarkerOptions.d(), paramInt, false);
    d.a(paramParcel, 3, paramMarkerOptions.e(), false);
    d.a(paramParcel, 4, paramMarkerOptions.f(), false);
    d.a(paramParcel, 5, paramMarkerOptions.b());
    d.a(paramParcel, 6, paramMarkerOptions.g());
    d.a(paramParcel, 7, paramMarkerOptions.h());
    d.a(paramParcel, 8, paramMarkerOptions.i());
    d.a(paramParcel, 9, paramMarkerOptions.j());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.j
 * JD-Core Version:    0.6.2
 */
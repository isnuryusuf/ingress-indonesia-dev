package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class f
  implements Parcelable.Creator<GroundOverlayOptions>
{
  public static GroundOverlayOptions a(Parcel paramParcel)
  {
    boolean bool = false;
    LatLngBounds localLatLngBounds = null;
    float f1 = 0.0F;
    int i = b.a(paramParcel);
    float f2 = 0.0F;
    float f3 = 0.0F;
    float f4 = 0.0F;
    float f5 = 0.0F;
    float f6 = 0.0F;
    float f7 = 0.0F;
    LatLng localLatLng = null;
    IBinder localIBinder = null;
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
        localLatLng = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 4:
        f7 = b.i(paramParcel, k);
        break;
      case 5:
        f6 = b.i(paramParcel, k);
        break;
      case 6:
        localLatLngBounds = (LatLngBounds)b.a(paramParcel, k, LatLngBounds.a);
        break;
      case 7:
        f5 = b.i(paramParcel, k);
        break;
      case 8:
        f4 = b.i(paramParcel, k);
        break;
      case 9:
        bool = b.c(paramParcel, k);
        break;
      case 10:
        f3 = b.i(paramParcel, k);
        break;
      case 11:
        f2 = b.i(paramParcel, k);
        break;
      case 12:
        f1 = b.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new GroundOverlayOptions(j, localIBinder, localLatLng, f7, f6, localLatLngBounds, f5, f4, bool, f3, f2, f1);
  }

  static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramGroundOverlayOptions.b());
    d.a(paramParcel, 2, paramGroundOverlayOptions.a());
    d.a(paramParcel, 3, paramGroundOverlayOptions.c(), paramInt, false);
    d.a(paramParcel, 4, paramGroundOverlayOptions.d());
    d.a(paramParcel, 5, paramGroundOverlayOptions.e());
    d.a(paramParcel, 6, paramGroundOverlayOptions.f(), paramInt, false);
    d.a(paramParcel, 7, paramGroundOverlayOptions.g());
    d.a(paramParcel, 8, paramGroundOverlayOptions.h());
    d.a(paramParcel, 9, paramGroundOverlayOptions.l());
    d.a(paramParcel, 10, paramGroundOverlayOptions.i());
    d.a(paramParcel, 11, paramGroundOverlayOptions.j());
    d.a(paramParcel, 12, paramGroundOverlayOptions.k());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.f
 * JD-Core Version:    0.6.2
 */
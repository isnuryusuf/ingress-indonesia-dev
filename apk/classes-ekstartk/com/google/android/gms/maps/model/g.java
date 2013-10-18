package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class g
  implements Parcelable.Creator<LatLngBounds>
{
  public static LatLngBounds a(Parcel paramParcel)
  {
    int i = b.a(paramParcel);
    LatLng localLatLng1 = null;
    int j = 0;
    LatLng localLatLng2 = null;
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
        localLatLng1 = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 3:
        localLatLng2 = (LatLng)b.a(paramParcel, k, LatLng.a);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new LatLngBounds(j, localLatLng1, localLatLng2);
  }

  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramLatLngBounds.a());
    d.a(paramParcel, 2, paramLatLngBounds.b, paramInt, false);
    d.a(paramParcel, 3, paramLatLngBounds.c, paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.g
 * JD-Core Version:    0.6.2
 */
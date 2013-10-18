package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class r
  implements Parcelable.Creator<VisibleRegion>
{
  public static VisibleRegion a(Parcel paramParcel)
  {
    LatLngBounds localLatLngBounds = null;
    int i = b.a(paramParcel);
    int j = 0;
    LatLng localLatLng1 = null;
    LatLng localLatLng2 = null;
    LatLng localLatLng3 = null;
    LatLng localLatLng4 = null;
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
        localLatLng4 = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 3:
        localLatLng3 = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 4:
        localLatLng2 = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 5:
        localLatLng1 = (LatLng)b.a(paramParcel, k, LatLng.a);
        break;
      case 6:
        localLatLngBounds = (LatLngBounds)b.a(paramParcel, k, LatLngBounds.a);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new VisibleRegion(j, localLatLng4, localLatLng3, localLatLng2, localLatLng1, localLatLngBounds);
  }

  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramVisibleRegion.a());
    d.a(paramParcel, 2, paramVisibleRegion.b, paramInt, false);
    d.a(paramParcel, 3, paramVisibleRegion.c, paramInt, false);
    d.a(paramParcel, 4, paramVisibleRegion.d, paramInt, false);
    d.a(paramParcel, 5, paramVisibleRegion.e, paramInt, false);
    d.a(paramParcel, 6, paramVisibleRegion.f, paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.r
 * JD-Core Version:    0.6.2
 */
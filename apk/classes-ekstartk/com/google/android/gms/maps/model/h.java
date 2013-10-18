package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class h
  implements Parcelable.Creator<LatLng>
{
  public static LatLng a(Parcel paramParcel)
  {
    double d1 = 0.0D;
    int i = b.a(paramParcel);
    int j = 0;
    double d2 = d1;
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
        d2 = b.j(paramParcel, k);
        break;
      case 3:
        d1 = b.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new LatLng(j, d2, d1);
  }

  static void a(LatLng paramLatLng, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramLatLng.a());
    d.a(paramParcel, 2, paramLatLng.b);
    d.a(paramParcel, 3, paramLatLng.c);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.h
 * JD-Core Version:    0.6.2
 */
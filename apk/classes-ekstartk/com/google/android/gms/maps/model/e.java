package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class e
  implements Parcelable.Creator<CircleOptions>
{
  public static CircleOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool = false;
    int i = b.a(paramParcel);
    LatLng localLatLng = null;
    double d = 0.0D;
    int j = 0;
    int k = 0;
    float f2 = 0.0F;
    int m = 0;
    while (paramParcel.dataPosition() < i)
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
        localLatLng = (LatLng)b.a(paramParcel, n, LatLng.a);
        break;
      case 3:
        d = b.j(paramParcel, n);
        break;
      case 4:
        f2 = b.i(paramParcel, n);
        break;
      case 5:
        k = b.f(paramParcel, n);
        break;
      case 6:
        j = b.f(paramParcel, n);
        break;
      case 7:
        f1 = b.i(paramParcel, n);
        break;
      case 8:
        bool = b.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new CircleOptions(m, localLatLng, d, f2, k, j, f1, bool);
  }

  static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramCircleOptions.a());
    d.a(paramParcel, 2, paramCircleOptions.b(), paramInt, false);
    d.a(paramParcel, 3, paramCircleOptions.c());
    d.a(paramParcel, 4, paramCircleOptions.d());
    d.a(paramParcel, 5, paramCircleOptions.e());
    d.a(paramParcel, 6, paramCircleOptions.f());
    d.a(paramParcel, 7, paramCircleOptions.g());
    d.a(paramParcel, 8, paramCircleOptions.h());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.e
 * JD-Core Version:    0.6.2
 */
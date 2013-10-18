package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import java.util.ArrayList;

public final class l
  implements Parcelable.Creator<PolylineOptions>
{
  public static PolylineOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    int i = b.a(paramParcel);
    ArrayList localArrayList = null;
    boolean bool2 = false;
    int j = 0;
    float f2 = 0.0F;
    int k = 0;
    while (paramParcel.dataPosition() < i)
    {
      int m = paramParcel.readInt();
      switch (0xFFFF & m)
      {
      default:
        b.b(paramParcel, m);
        break;
      case 1:
        k = b.f(paramParcel, m);
        break;
      case 2:
        localArrayList = b.b(paramParcel, m, LatLng.a);
        break;
      case 3:
        f2 = b.i(paramParcel, m);
        break;
      case 4:
        j = b.f(paramParcel, m);
        break;
      case 5:
        f1 = b.i(paramParcel, m);
        break;
      case 6:
        bool2 = b.c(paramParcel, m);
        break;
      case 7:
        bool1 = b.c(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new PolylineOptions(k, localArrayList, f2, j, f1, bool2, bool1);
  }

  static void a(PolylineOptions paramPolylineOptions, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramPolylineOptions.a());
    d.a(paramParcel, 2, paramPolylineOptions.b(), false);
    d.a(paramParcel, 3, paramPolylineOptions.c());
    d.a(paramParcel, 4, paramPolylineOptions.d());
    d.a(paramParcel, 5, paramPolylineOptions.e());
    d.a(paramParcel, 6, paramPolylineOptions.f());
    d.a(paramParcel, 7, paramPolylineOptions.g());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.l
 * JD-Core Version:    0.6.2
 */
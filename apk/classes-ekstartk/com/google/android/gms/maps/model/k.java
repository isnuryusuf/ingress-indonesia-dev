package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;
import java.util.ArrayList;

public final class k
  implements Parcelable.Creator<PolygonOptions>
{
  static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramPolygonOptions.a());
    d.a(paramParcel, 2, paramPolygonOptions.c(), false);
    d.b(paramParcel, paramPolygonOptions.b());
    d.a(paramParcel, 4, paramPolygonOptions.d());
    d.a(paramParcel, 5, paramPolygonOptions.e());
    d.a(paramParcel, 6, paramPolygonOptions.f());
    d.a(paramParcel, 7, paramPolygonOptions.g());
    d.a(paramParcel, 8, paramPolygonOptions.h());
    d.a(paramParcel, 9, paramPolygonOptions.i());
    d.a(paramParcel, i);
  }

  public final PolygonOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    int i = b.a(paramParcel);
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = new ArrayList();
    boolean bool2 = false;
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
        localArrayList1 = b.b(paramParcel, n, LatLng.a);
        break;
      case 3:
        ClassLoader localClassLoader = getClass().getClassLoader();
        int i1 = b.a(paramParcel, n);
        int i2 = paramParcel.dataPosition();
        if (i1 != 0)
        {
          paramParcel.readList(localArrayList2, localClassLoader);
          paramParcel.setDataPosition(i1 + i2);
        }
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
        bool2 = b.c(paramParcel, n);
        break;
      case 9:
        bool1 = b.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new PolygonOptions(m, localArrayList1, localArrayList2, f2, k, j, f1, bool2, bool1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.k
 * JD-Core Version:    0.6.2
 */
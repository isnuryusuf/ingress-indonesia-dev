package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;

public final class d
  implements Parcelable.Creator<CameraPosition>
{
  public static CameraPosition a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    int i = b.a(paramParcel);
    int j = 0;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    float f3 = 0.0F;
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
        f3 = b.i(paramParcel, k);
        break;
      case 4:
        f2 = b.i(paramParcel, k);
        break;
      case 5:
        f1 = b.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new CameraPosition(j, localLatLng, f3, f2, f1);
  }

  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.internal.d.a(paramParcel);
    com.google.android.gms.internal.d.a(paramParcel, 1, paramCameraPosition.a());
    com.google.android.gms.internal.d.a(paramParcel, 2, paramCameraPosition.b, paramInt, false);
    com.google.android.gms.internal.d.a(paramParcel, 3, paramCameraPosition.c);
    com.google.android.gms.internal.d.a(paramParcel, 4, paramCameraPosition.d);
    com.google.android.gms.internal.d.a(paramParcel, 5, paramCameraPosition.e);
    com.google.android.gms.internal.d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.d
 * JD-Core Version:    0.6.2
 */
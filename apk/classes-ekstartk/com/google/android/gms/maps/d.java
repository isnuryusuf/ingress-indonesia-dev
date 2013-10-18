package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.maps.model.CameraPosition;

public final class d
  implements Parcelable.Creator<GoogleMapOptions>
{
  public static GoogleMapOptions a(Parcel paramParcel)
  {
    byte b1 = 0;
    int i = b.a(paramParcel);
    CameraPosition localCameraPosition = null;
    byte b2 = 0;
    byte b3 = 0;
    byte b4 = 0;
    byte b5 = 0;
    byte b6 = 0;
    int j = 0;
    byte b7 = 0;
    byte b8 = 0;
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
        b8 = b.d(paramParcel, m);
        break;
      case 3:
        b7 = b.d(paramParcel, m);
        break;
      case 4:
        j = b.f(paramParcel, m);
        break;
      case 5:
        localCameraPosition = (CameraPosition)b.a(paramParcel, m, CameraPosition.a);
        break;
      case 6:
        b6 = b.d(paramParcel, m);
        break;
      case 7:
        b5 = b.d(paramParcel, m);
        break;
      case 8:
        b4 = b.d(paramParcel, m);
        break;
      case 9:
        b3 = b.d(paramParcel, m);
        break;
      case 10:
        b2 = b.d(paramParcel, m);
        break;
      case 11:
        b1 = b.d(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new GoogleMapOptions(k, b8, b7, j, localCameraPosition, b6, b5, b4, b3, b2, b1);
  }

  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.internal.d.a(paramParcel);
    com.google.android.gms.internal.d.a(paramParcel, 1, paramGoogleMapOptions.a());
    com.google.android.gms.internal.d.a(paramParcel, 2, paramGoogleMapOptions.b());
    com.google.android.gms.internal.d.a(paramParcel, 3, paramGoogleMapOptions.c());
    com.google.android.gms.internal.d.a(paramParcel, 4, paramGoogleMapOptions.j());
    com.google.android.gms.internal.d.a(paramParcel, 5, paramGoogleMapOptions.k(), paramInt, false);
    com.google.android.gms.internal.d.a(paramParcel, 6, paramGoogleMapOptions.d());
    com.google.android.gms.internal.d.a(paramParcel, 7, paramGoogleMapOptions.e());
    com.google.android.gms.internal.d.a(paramParcel, 8, paramGoogleMapOptions.f());
    com.google.android.gms.internal.d.a(paramParcel, 9, paramGoogleMapOptions.g());
    com.google.android.gms.internal.d.a(paramParcel, 10, paramGoogleMapOptions.h());
    com.google.android.gms.internal.d.a(paramParcel, 11, paramGoogleMapOptions.i());
    com.google.android.gms.internal.d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.d
 * JD-Core Version:    0.6.2
 */
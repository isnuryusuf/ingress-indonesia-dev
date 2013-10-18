package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.d;

public final class e
  implements Parcelable.Creator<LocationRequest>
{
  public static LocationRequest a(Parcel paramParcel)
  {
    LocationRequest localLocationRequest = new LocationRequest();
    int i = b.a(paramParcel);
    while (paramParcel.dataPosition() < i)
    {
      int j = paramParcel.readInt();
      switch (0xFFFF & j)
      {
      default:
        b.b(paramParcel, j);
        break;
      case 1:
        localLocationRequest.b = b.f(paramParcel, j);
        break;
      case 1000:
        localLocationRequest.a = b.f(paramParcel, j);
        break;
      case 2:
        localLocationRequest.c = b.g(paramParcel, j);
        break;
      case 3:
        localLocationRequest.d = b.g(paramParcel, j);
        break;
      case 4:
        localLocationRequest.e = b.c(paramParcel, j);
        break;
      case 5:
        localLocationRequest.f = b.g(paramParcel, j);
        break;
      case 6:
        localLocationRequest.g = b.f(paramParcel, j);
        break;
      case 7:
        localLocationRequest.h = b.i(paramParcel, j);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return localLocationRequest;
  }

  static void a(LocationRequest paramLocationRequest, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramLocationRequest.b);
    d.a(paramParcel, 1000, paramLocationRequest.a);
    d.a(paramParcel, 2, paramLocationRequest.c);
    d.a(paramParcel, 3, paramLocationRequest.d);
    d.a(paramParcel, 4, paramLocationRequest.e);
    d.a(paramParcel, 5, paramLocationRequest.f);
    d.a(paramParcel, 6, paramLocationRequest.g);
    d.a(paramParcel, 7, paramLocationRequest.h);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.e
 * JD-Core Version:    0.6.2
 */
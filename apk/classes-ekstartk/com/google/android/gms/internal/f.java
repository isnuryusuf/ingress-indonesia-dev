package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class f
  implements Parcelable.Creator<ag>
{
  static void a(ag paramag, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramag.b());
    d.a(paramParcel, 1000, paramag.a());
    d.a(paramParcel, 2, paramag.c());
    d.a(paramParcel, 3, paramag.d(), false);
    d.a(paramParcel, 4, paramag.e(), false);
    d.a(paramParcel, 5, paramag.f(), false);
    d.a(paramParcel, 6, paramag.g(), false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.f
 * JD-Core Version:    0.6.2
 */
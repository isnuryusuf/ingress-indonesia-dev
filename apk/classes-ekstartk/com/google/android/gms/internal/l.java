package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class l
  implements Parcelable.Creator<an.a>
{
  static void a(an.a parama, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, parama.a());
    d.a(paramParcel, 2, parama.b());
    d.a(paramParcel, 3, parama.c());
    d.a(paramParcel, 4, parama.d());
    d.a(paramParcel, 5, parama.e());
    d.a(paramParcel, 6, parama.f(), false);
    d.a(paramParcel, 7, parama.g());
    d.a(paramParcel, 8, parama.i(), false);
    d.a(paramParcel, 9, parama.k(), paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.l
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class be
  implements Parcelable.Creator<cf>
{
  static void a(cf paramcf, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramcf.f(), false);
    d.a(paramParcel, 1000, paramcf.a());
    d.a(paramParcel, 2, paramcf.g());
    d.a(paramParcel, paramcf.b());
    d.a(paramParcel, 4, paramcf.c());
    d.a(paramParcel, 5, paramcf.d());
    d.a(paramParcel, 6, paramcf.e());
    d.a(paramParcel, 7, paramcf.h());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.be
 * JD-Core Version:    0.6.2
 */
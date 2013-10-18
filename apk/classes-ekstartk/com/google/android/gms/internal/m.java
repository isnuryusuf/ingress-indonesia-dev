package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class m
  implements Parcelable.Creator<aq.b>
{
  static void a(aq.b paramb, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramb.b);
    d.a(paramParcel, 2, paramb.c, false);
    d.a(paramParcel, 3, paramb.d, paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.m
 * JD-Core Version:    0.6.2
 */
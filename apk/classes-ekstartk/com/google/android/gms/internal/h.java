package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class h
  implements Parcelable.Creator<ak>
{
  static void a(ak paramak, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramak.a());
    d.a(paramParcel, 2, paramak.b(), false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.h
 * JD-Core Version:    0.6.2
 */
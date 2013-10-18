package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class o
  implements Parcelable.Creator<aq.a>
{
  static void a(aq.a parama, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, parama.b);
    d.a(paramParcel, 2, parama.c, false);
    d.a(paramParcel, 3, parama.d, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.o
 * JD-Core Version:    0.6.2
 */
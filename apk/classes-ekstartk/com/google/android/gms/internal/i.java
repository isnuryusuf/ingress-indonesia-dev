package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class i
  implements Parcelable.Creator<ak.a>
{
  static void a(ak.a parama, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, parama.b);
    d.a(paramParcel, 2, parama.c, false);
    d.a(paramParcel, 3, parama.d);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.i
 * JD-Core Version:    0.6.2
 */
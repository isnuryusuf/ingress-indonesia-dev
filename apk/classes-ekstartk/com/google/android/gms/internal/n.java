package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class n
  implements Parcelable.Creator<aq>
{
  static void a(aq paramaq, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramaq.a());
    d.a(paramParcel, 2, paramaq.b(), false);
    d.a(paramParcel, 3, paramaq.c(), false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.n
 * JD-Core Version:    0.6.2
 */
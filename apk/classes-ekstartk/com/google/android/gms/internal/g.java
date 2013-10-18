package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class g
  implements Parcelable.Creator<ai>
{
  static void a(ai paramai, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramai.a());
    d.a(paramParcel, 2, paramai.b(), paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.g
 * JD-Core Version:    0.6.2
 */
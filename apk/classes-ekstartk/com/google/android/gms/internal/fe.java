package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class fe
  implements Parcelable.Creator<eq.i>
{
  static void a(eq.i parami, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = parami.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, parami.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, parami.g());
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, parami.h());
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, parami.i(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fe
 * JD-Core Version:    0.6.2
 */
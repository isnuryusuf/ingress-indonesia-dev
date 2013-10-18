package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class ey
  implements Parcelable.Creator<eq.c>
{
  static void a(eq.c paramc, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = paramc.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramc.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramc.g());
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, paramc.h());
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, paramc.i(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ey
 * JD-Core Version:    0.6.2
 */
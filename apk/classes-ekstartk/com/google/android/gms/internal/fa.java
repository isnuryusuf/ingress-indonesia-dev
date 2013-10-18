package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class fa
  implements Parcelable.Creator<eq.e>
{
  static void a(eq.e parame, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = parame.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, parame.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, parame.g(), true);
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, parame.h(), true);
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, parame.i(), true);
    if (localSet.contains(Integer.valueOf(5)))
      d.a(paramParcel, 5, parame.j(), true);
    if (localSet.contains(Integer.valueOf(6)))
      d.a(paramParcel, 6, parame.k(), true);
    if (localSet.contains(Integer.valueOf(7)))
      d.a(paramParcel, 7, parame.l(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fa
 * JD-Core Version:    0.6.2
 */
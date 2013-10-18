package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class fb
  implements Parcelable.Creator<eq.g>
{
  static void a(eq.g paramg, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = paramg.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramg.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramg.g(), true);
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, paramg.h(), true);
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, paramg.i(), true);
    if (localSet.contains(Integer.valueOf(5)))
      d.a(paramParcel, 5, paramg.j(), true);
    if (localSet.contains(Integer.valueOf(6)))
      d.a(paramParcel, 6, paramg.k(), true);
    if (localSet.contains(Integer.valueOf(7)))
      d.a(paramParcel, 7, paramg.l());
    if (localSet.contains(Integer.valueOf(8)))
      d.a(paramParcel, 8, paramg.m(), true);
    if (localSet.contains(Integer.valueOf(9)))
      d.a(paramParcel, 9, paramg.n(), true);
    if (localSet.contains(Integer.valueOf(10)))
      d.a(paramParcel, 10, paramg.o());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fb
 * JD-Core Version:    0.6.2
 */
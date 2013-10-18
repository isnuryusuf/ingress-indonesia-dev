package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class et
  implements Parcelable.Creator<ef>
{
  static void a(ef paramef, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    Set localSet = paramef.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramef.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramef.g(), true);
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, paramef.h(), paramInt, true);
    if (localSet.contains(Integer.valueOf(5)))
      d.a(paramParcel, 5, paramef.i(), true);
    if (localSet.contains(Integer.valueOf(6)))
      d.a(paramParcel, 6, paramef.j(), paramInt, true);
    if (localSet.contains(Integer.valueOf(7)))
      d.a(paramParcel, 7, paramef.k(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.et
 * JD-Core Version:    0.6.2
 */
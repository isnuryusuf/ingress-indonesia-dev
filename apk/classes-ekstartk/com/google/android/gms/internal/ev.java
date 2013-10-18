package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class ev
  implements Parcelable.Creator<eq.b>
{
  static void a(eq.b paramb, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    Set localSet = paramb.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramb.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramb.g(), paramInt, true);
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, paramb.h(), paramInt, true);
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, paramb.i());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ev
 * JD-Core Version:    0.6.2
 */
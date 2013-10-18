package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class fd
  implements Parcelable.Creator<eq.h>
{
  static void a(eq.h paramh, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = paramh.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramh.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramh.g());
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, paramh.h(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fd
 * JD-Core Version:    0.6.2
 */
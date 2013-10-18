package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class ew
  implements Parcelable.Creator<eq.b.a>
{
  static void a(eq.b.a parama, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = parama.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, parama.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, parama.g());
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, parama.h());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ew
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class ez
  implements Parcelable.Creator<eq.d>
{
  static void a(eq.d paramd, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    Set localSet = paramd.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, paramd.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, paramd.g(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ez
 * JD-Core Version:    0.6.2
 */
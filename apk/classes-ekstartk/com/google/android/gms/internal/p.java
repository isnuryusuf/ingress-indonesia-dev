package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class p
  implements Parcelable.Creator<at>
{
  public static at a(Parcel paramParcel)
  {
    aq localaq = null;
    int i = b.a(paramParcel);
    int j = 0;
    Parcel localParcel = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        b.b(paramParcel, k);
        break;
      case 1:
        j = b.f(paramParcel, k);
        break;
      case 2:
        localParcel = b.r(paramParcel, k);
        break;
      case 3:
        localaq = (aq)b.a(paramParcel, k, aq.a);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new at(j, localParcel, localaq);
  }

  static void a(at paramat, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramat.a());
    d.a(paramParcel, paramat.e());
    d.a(paramParcel, 3, paramat.f(), paramInt, false);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.p
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public final class er
  implements Parcelable.Creator<eb>
{
  public static eb a(Parcel paramParcel)
  {
    boolean bool = false;
    ArrayList localArrayList1 = null;
    int i = b.a(paramParcel);
    ArrayList localArrayList2 = null;
    String str = null;
    int j = 0;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        b.b(paramParcel, k);
        break;
      case 1:
        str = b.l(paramParcel, k);
        break;
      case 1000:
        j = b.f(paramParcel, k);
        break;
      case 2:
        localArrayList2 = b.b(paramParcel, k, ag.a);
        break;
      case 3:
        localArrayList1 = b.b(paramParcel, k, ag.a);
        break;
      case 4:
        bool = b.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new eb(j, str, localArrayList2, localArrayList1, bool);
  }

  static void a(eb parameb, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, parameb.b(), false);
    d.a(paramParcel, 1000, parameb.a());
    d.a(paramParcel, 2, parameb.c(), false);
    d.a(paramParcel, 3, parameb.d(), false);
    d.a(paramParcel, 4, parameb.e());
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.er
 * JD-Core Version:    0.6.2
 */
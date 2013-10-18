package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public final class fc
  implements Parcelable.Creator<eq>
{
  public static eq a(Parcel paramParcel)
  {
    int i = b.a(paramParcel);
    HashSet localHashSet = new HashSet();
    int j = 0;
    String str1 = null;
    Object localObject1 = null;
    String str2 = null;
    String str3 = null;
    int k = 0;
    Object localObject2 = null;
    String str4 = null;
    String str5 = null;
    ArrayList localArrayList1 = null;
    String str6 = null;
    int m = 0;
    boolean bool1 = false;
    String str7 = null;
    Object localObject3 = null;
    boolean bool2 = false;
    String str8 = null;
    Object localObject4 = null;
    String str9 = null;
    int n = 0;
    ArrayList localArrayList2 = null;
    ArrayList localArrayList3 = null;
    int i1 = 0;
    int i2 = 0;
    String str10 = null;
    String str11 = null;
    ArrayList localArrayList4 = null;
    boolean bool3 = false;
    while (paramParcel.dataPosition() < i)
    {
      int i3 = paramParcel.readInt();
      switch (0xFFFF & i3)
      {
      case 17:
      default:
        b.b(paramParcel, i3);
        break;
      case 1:
        j = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(1));
        break;
      case 2:
        str1 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(2));
        break;
      case 3:
        eq.a locala = (eq.a)b.a(paramParcel, i3, eq.a.a);
        localHashSet.add(Integer.valueOf(3));
        localObject1 = locala;
        break;
      case 4:
        str2 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(4));
        break;
      case 5:
        str3 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(5));
        break;
      case 6:
        k = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(6));
        break;
      case 7:
        eq.b localb = (eq.b)b.a(paramParcel, i3, eq.b.a);
        localHashSet.add(Integer.valueOf(7));
        localObject2 = localb;
        break;
      case 8:
        str4 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(8));
        break;
      case 9:
        str5 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(9));
        break;
      case 10:
        localArrayList1 = b.b(paramParcel, i3, eq.c.a);
        localHashSet.add(Integer.valueOf(10));
        break;
      case 11:
        str6 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(11));
        break;
      case 12:
        m = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(12));
        break;
      case 13:
        bool1 = b.c(paramParcel, i3);
        localHashSet.add(Integer.valueOf(13));
        break;
      case 14:
        str7 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(14));
        break;
      case 15:
        eq.d locald = (eq.d)b.a(paramParcel, i3, eq.d.a);
        localHashSet.add(Integer.valueOf(15));
        localObject3 = locald;
        break;
      case 16:
        bool2 = b.c(paramParcel, i3);
        localHashSet.add(Integer.valueOf(16));
        break;
      case 19:
        eq.e locale = (eq.e)b.a(paramParcel, i3, eq.e.a);
        localHashSet.add(Integer.valueOf(19));
        localObject4 = locale;
        break;
      case 18:
        str8 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(18));
        break;
      case 21:
        n = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(21));
        break;
      case 20:
        str9 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(20));
        break;
      case 23:
        localArrayList3 = b.b(paramParcel, i3, eq.h.a);
        localHashSet.add(Integer.valueOf(23));
        break;
      case 22:
        localArrayList2 = b.b(paramParcel, i3, eq.g.a);
        localHashSet.add(Integer.valueOf(22));
        break;
      case 25:
        i2 = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(25));
        break;
      case 24:
        i1 = b.f(paramParcel, i3);
        localHashSet.add(Integer.valueOf(24));
        break;
      case 27:
        str11 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(27));
        break;
      case 26:
        str10 = b.l(paramParcel, i3);
        localHashSet.add(Integer.valueOf(26));
        break;
      case 29:
        bool3 = b.c(paramParcel, i3);
        localHashSet.add(Integer.valueOf(29));
        break;
      case 28:
        localArrayList4 = b.b(paramParcel, i3, eq.i.a);
        localHashSet.add(Integer.valueOf(28));
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    return new eq(localHashSet, j, str1, localObject1, str2, str3, k, localObject2, str4, str5, localArrayList1, str6, m, bool1, str7, localObject3, bool2, str8, localObject4, str9, n, localArrayList2, localArrayList3, i1, i2, str10, str11, localArrayList4, bool3);
  }

  static void a(eq parameq, Parcel paramParcel, int paramInt)
  {
    int i = d.a(paramParcel);
    Set localSet = parameq.e();
    if (localSet.contains(Integer.valueOf(1)))
      d.a(paramParcel, 1, parameq.f());
    if (localSet.contains(Integer.valueOf(2)))
      d.a(paramParcel, 2, parameq.g(), true);
    if (localSet.contains(Integer.valueOf(3)))
      d.a(paramParcel, 3, parameq.h(), paramInt, true);
    if (localSet.contains(Integer.valueOf(4)))
      d.a(paramParcel, 4, parameq.i(), true);
    if (localSet.contains(Integer.valueOf(5)))
      d.a(paramParcel, 5, parameq.j(), true);
    if (localSet.contains(Integer.valueOf(6)))
      d.a(paramParcel, 6, parameq.k());
    if (localSet.contains(Integer.valueOf(7)))
      d.a(paramParcel, 7, parameq.l(), paramInt, true);
    if (localSet.contains(Integer.valueOf(8)))
      d.a(paramParcel, 8, parameq.m(), true);
    if (localSet.contains(Integer.valueOf(9)))
      d.a(paramParcel, 9, parameq.n(), true);
    if (localSet.contains(Integer.valueOf(10)))
      d.a(paramParcel, 10, parameq.o(), true);
    if (localSet.contains(Integer.valueOf(11)))
      d.a(paramParcel, 11, parameq.p(), true);
    if (localSet.contains(Integer.valueOf(12)))
      d.a(paramParcel, 12, parameq.q());
    if (localSet.contains(Integer.valueOf(13)))
      d.a(paramParcel, 13, parameq.r());
    if (localSet.contains(Integer.valueOf(14)))
      d.a(paramParcel, 14, parameq.s(), true);
    if (localSet.contains(Integer.valueOf(15)))
      d.a(paramParcel, 15, parameq.t(), paramInt, true);
    if (localSet.contains(Integer.valueOf(16)))
      d.a(paramParcel, 16, parameq.u());
    if (localSet.contains(Integer.valueOf(19)))
      d.a(paramParcel, 19, parameq.w(), paramInt, true);
    if (localSet.contains(Integer.valueOf(18)))
      d.a(paramParcel, 18, parameq.v(), true);
    if (localSet.contains(Integer.valueOf(21)))
      d.a(paramParcel, 21, parameq.y());
    if (localSet.contains(Integer.valueOf(20)))
      d.a(paramParcel, 20, parameq.x(), true);
    if (localSet.contains(Integer.valueOf(23)))
      d.a(paramParcel, 23, parameq.A(), true);
    if (localSet.contains(Integer.valueOf(22)))
      d.a(paramParcel, 22, parameq.z(), true);
    if (localSet.contains(Integer.valueOf(25)))
      d.a(paramParcel, 25, parameq.C());
    if (localSet.contains(Integer.valueOf(24)))
      d.a(paramParcel, 24, parameq.B());
    if (localSet.contains(Integer.valueOf(27)))
      d.a(paramParcel, 27, parameq.E(), true);
    if (localSet.contains(Integer.valueOf(26)))
      d.a(paramParcel, 26, parameq.D(), true);
    if (localSet.contains(Integer.valueOf(29)))
      d.a(paramParcel, 29, parameq.G());
    if (localSet.contains(Integer.valueOf(28)))
      d.a(paramParcel, 28, parameq.F(), true);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fc
 * JD-Core Version:    0.6.2
 */
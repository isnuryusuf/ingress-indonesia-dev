package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new c();
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;

  public BackStackState(Parcel paramParcel)
  {
    this.a = paramParcel.createIntArray();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.h = paramParcel.readInt();
    this.i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }

  public BackStackState(a parama)
  {
    b localb1 = parama.b;
    int j = 0;
    while (localb1 != null)
    {
      if (localb1.i != null)
        j += localb1.i.size();
      localb1 = localb1.a;
    }
    this.a = new int[j + 7 * parama.d];
    if (!parama.k)
      throw new IllegalStateException("Not on back stack");
    b localb2 = parama.b;
    int k = 0;
    if (localb2 != null)
    {
      int[] arrayOfInt1 = this.a;
      int m = k + 1;
      arrayOfInt1[k] = localb2.c;
      int[] arrayOfInt2 = this.a;
      int n = m + 1;
      if (localb2.d != null);
      int i5;
      int i7;
      for (int i1 = localb2.d.o; ; i1 = -1)
      {
        arrayOfInt2[m] = i1;
        int[] arrayOfInt3 = this.a;
        int i2 = n + 1;
        arrayOfInt3[n] = localb2.e;
        int[] arrayOfInt4 = this.a;
        int i3 = i2 + 1;
        arrayOfInt4[i2] = localb2.f;
        int[] arrayOfInt5 = this.a;
        int i4 = i3 + 1;
        arrayOfInt5[i3] = localb2.g;
        int[] arrayOfInt6 = this.a;
        i5 = i4 + 1;
        arrayOfInt6[i4] = localb2.h;
        if (localb2.i == null)
          break label343;
        int i6 = localb2.i.size();
        int[] arrayOfInt8 = this.a;
        i7 = i5 + 1;
        arrayOfInt8[i5] = i6;
        int i8 = 0;
        while (i8 < i6)
        {
          int[] arrayOfInt9 = this.a;
          int i9 = i7 + 1;
          arrayOfInt9[i7] = ((Fragment)localb2.i.get(i8)).o;
          i8++;
          i7 = i9;
        }
      }
      k = i7;
      while (true)
      {
        localb2 = localb2.a;
        break;
        label343: int[] arrayOfInt7 = this.a;
        k = i5 + 1;
        arrayOfInt7[i5] = 0;
      }
    }
    this.b = parama.i;
    this.c = parama.j;
    this.d = parama.m;
    this.e = parama.o;
    this.f = parama.p;
    this.g = parama.q;
    this.h = parama.r;
    this.i = parama.s;
  }

  public final a a(k paramk)
  {
    a locala = new a(paramk);
    int j = 0;
    while (j < this.a.length)
    {
      b localb = new b();
      int[] arrayOfInt1 = this.a;
      int k = j + 1;
      localb.c = arrayOfInt1[j];
      if (k.a)
        new StringBuilder("BSE ").append(locala).append(" set base fragment #").append(this.a[k]).toString();
      int[] arrayOfInt2 = this.a;
      int m = k + 1;
      int n = arrayOfInt2[k];
      if (n >= 0);
      for (localb.d = ((Fragment)paramk.f.get(n)); ; localb.d = null)
      {
        int[] arrayOfInt3 = this.a;
        int i1 = m + 1;
        localb.e = arrayOfInt3[m];
        int[] arrayOfInt4 = this.a;
        int i2 = i1 + 1;
        localb.f = arrayOfInt4[i1];
        int[] arrayOfInt5 = this.a;
        int i3 = i2 + 1;
        localb.g = arrayOfInt5[i2];
        int[] arrayOfInt6 = this.a;
        int i4 = i3 + 1;
        localb.h = arrayOfInt6[i3];
        int[] arrayOfInt7 = this.a;
        j = i4 + 1;
        int i5 = arrayOfInt7[i4];
        if (i5 <= 0)
          break;
        localb.i = new ArrayList(i5);
        int i6 = 0;
        while (i6 < i5)
        {
          if (k.a)
            new StringBuilder("BSE ").append(locala).append(" set remove fragment #").append(this.a[j]).toString();
          ArrayList localArrayList = paramk.f;
          int[] arrayOfInt8 = this.a;
          int i7 = j + 1;
          Fragment localFragment = (Fragment)localArrayList.get(arrayOfInt8[j]);
          localb.i.add(localFragment);
          i6++;
          j = i7;
        }
      }
      locala.a(localb);
    }
    locala.i = this.b;
    locala.j = this.c;
    locala.m = this.d;
    locala.o = this.e;
    locala.k = true;
    locala.p = this.f;
    locala.q = this.g;
    locala.r = this.h;
    locala.s = this.i;
    locala.a(1);
    return locala;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    TextUtils.writeToParcel(this.g, paramParcel, 0);
    paramParcel.writeInt(this.h);
    TextUtils.writeToParcel(this.i, paramParcel, 0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.6.2
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new q();
  final String a;
  final int b;
  final boolean c;
  final int d;
  final int e;
  final String f;
  final boolean g;
  final boolean h;
  final Bundle i;
  Bundle j;
  Fragment k;

  public FragmentState(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    boolean bool2;
    boolean bool3;
    if (paramParcel.readInt() != 0)
    {
      bool2 = bool1;
      this.c = bool2;
      this.d = paramParcel.readInt();
      this.e = paramParcel.readInt();
      this.f = paramParcel.readString();
      if (paramParcel.readInt() == 0)
        break label110;
      bool3 = bool1;
      label70: this.g = bool3;
      if (paramParcel.readInt() == 0)
        break label116;
    }
    while (true)
    {
      this.h = bool1;
      this.i = paramParcel.readBundle();
      this.j = paramParcel.readBundle();
      return;
      bool2 = false;
      break;
      label110: bool3 = false;
      break label70;
      label116: bool1 = false;
    }
  }

  public FragmentState(Fragment paramFragment)
  {
    this.a = paramFragment.getClass().getName();
    this.b = paramFragment.o;
    this.c = paramFragment.x;
    this.d = paramFragment.D;
    this.e = paramFragment.E;
    this.f = paramFragment.F;
    this.g = paramFragment.I;
    this.h = paramFragment.H;
    this.i = paramFragment.q;
  }

  public final Fragment a(FragmentActivity paramFragmentActivity)
  {
    if (this.k != null)
      return this.k;
    if (this.i != null)
      this.i.setClassLoader(paramFragmentActivity.getClassLoader());
    this.k = Fragment.a(paramFragmentActivity, this.a, this.i);
    if (this.j != null)
    {
      this.j.setClassLoader(paramFragmentActivity.getClassLoader());
      this.k.m = this.j;
    }
    this.k.a(this.b);
    this.k.x = this.c;
    this.k.z = true;
    this.k.D = this.d;
    this.k.E = this.e;
    this.k.F = this.f;
    this.k.I = this.g;
    this.k.H = this.h;
    this.k.B = paramFragmentActivity.mFragments;
    if (k.a)
      new StringBuilder("Instantiated fragment ").append(this.k).toString();
    return this.k;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    int n;
    int i1;
    if (this.c)
    {
      n = m;
      paramParcel.writeInt(n);
      paramParcel.writeInt(this.d);
      paramParcel.writeInt(this.e);
      paramParcel.writeString(this.f);
      if (!this.g)
        break label109;
      i1 = m;
      label68: paramParcel.writeInt(i1);
      if (!this.h)
        break label115;
    }
    while (true)
    {
      paramParcel.writeInt(m);
      paramParcel.writeBundle(this.i);
      paramParcel.writeBundle(this.j);
      return;
      n = 0;
      break;
      label109: i1 = 0;
      break label68;
      label115: m = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.6.2
 */
package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public final class Presence
  implements Parcelable
{
  public static final Parcelable.Creator<Presence> CREATOR = new d();
  public static final Presence a = new Presence();
  private boolean b;
  private e c;
  private String d;
  private boolean e;
  private List<String> f;
  private List<String> g;
  private int h;
  private int i;
  private int j;
  private boolean k;

  public Presence()
  {
    this(e.a);
  }

  public Presence(Parcel paramParcel)
  {
    this.h = paramParcel.readInt();
    this.i = paramParcel.readInt();
    this.j = paramParcel.readInt();
    boolean bool2;
    boolean bool3;
    if (paramParcel.readInt() != 0)
    {
      bool2 = bool1;
      this.k = bool2;
      if (paramParcel.readInt() == 0)
        break label149;
      bool3 = bool1;
      label54: this.b = bool3;
      this.c = ((e)Enum.valueOf(e.class, paramParcel.readString()));
      this.d = paramParcel.readString();
      if (paramParcel.readInt() == 0)
        break label155;
    }
    while (true)
    {
      this.e = bool1;
      if (bool1);
      this.f = new ArrayList();
      paramParcel.readStringList(this.f);
      this.g = new ArrayList();
      paramParcel.readStringList(this.g);
      return;
      bool2 = false;
      break;
      label149: bool3 = false;
      break label54;
      label155: bool1 = false;
    }
  }

  private Presence(e parame)
  {
    this.b = false;
    this.c = parame;
    this.d = null;
    this.e = false;
    this.f = new ArrayList();
    this.g = new ArrayList();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String toString()
  {
    if (!this.b)
      return "UNAVAILABLE";
    if (this.e)
      return "INVISIBLE";
    if (this.c == e.a)
      return "AVAILABLE(x)";
    return this.c.toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = 1;
    paramParcel.writeInt(this.h);
    paramParcel.writeInt(this.i);
    paramParcel.writeInt(this.j);
    int n;
    int i1;
    if (this.k)
    {
      n = m;
      paramParcel.writeInt(n);
      if (!this.b)
        break label112;
      i1 = m;
      label52: paramParcel.writeInt(i1);
      paramParcel.writeString(this.c.toString());
      paramParcel.writeString(this.d);
      if (!this.e)
        break label118;
    }
    while (true)
    {
      paramParcel.writeInt(m);
      paramParcel.writeStringList(this.f);
      paramParcel.writeStringList(this.g);
      return;
      n = 0;
      break;
      label112: i1 = 0;
      break label52;
      label118: m = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gtalkservice.Presence
 * JD-Core Version:    0.6.2
 */
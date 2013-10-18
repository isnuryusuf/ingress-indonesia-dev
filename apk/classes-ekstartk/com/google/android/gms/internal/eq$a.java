package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public final class eq$a extends an
  implements ae, b
{
  public static final eu a = new eu();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private int e;
  private int f;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("max", an.a.a("max", 2));
    b.put("min", an.a.a("min", 3));
  }

  public eq$a()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$a(Set<Integer> paramSet, int paramInt1, int paramInt2, int paramInt3)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramInt3;
  }

  protected final boolean a(an.a parama)
  {
    return this.c.contains(Integer.valueOf(parama.g()));
  }

  protected final Object b(an.a parama)
  {
    switch (parama.g())
    {
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.g());
    case 2:
      return Integer.valueOf(this.e);
    case 3:
    }
    return Integer.valueOf(this.f);
  }

  public final HashMap<String, an.a<?, ?>> b()
  {
    return b;
  }

  protected final Object c()
  {
    return null;
  }

  protected final boolean d()
  {
    return false;
  }

  public final int describeContents()
  {
    return 0;
  }

  final Set<Integer> e()
  {
    return this.c;
  }

  final int f()
  {
    return this.d;
  }

  public final int g()
  {
    return this.e;
  }

  public final int h()
  {
    return this.f;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    eu.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.a
 * JD-Core Version:    0.6.2
 */
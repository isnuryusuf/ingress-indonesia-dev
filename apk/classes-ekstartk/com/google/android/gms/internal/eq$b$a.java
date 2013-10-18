package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$b$a extends an
  implements ae, d
{
  public static final ew a = new ew();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private int e;
  private int f;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("leftImageOffset", an.a.a("leftImageOffset", 2));
    b.put("topImageOffset", an.a.a("topImageOffset", 3));
  }

  public eq$b$a()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$b$a(Set<Integer> paramSet, int paramInt1, int paramInt2, int paramInt3)
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

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a))
      return false;
    if (this == paramObject)
      return true;
    a locala = (a)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala1 = (an.a)localIterator.next();
      if (a(locala1))
      {
        if (locala.a(locala1))
        {
          if (!b(locala1).equals(locala.b(locala1)))
            return false;
        }
        else
          return false;
      }
      else if (locala.a(locala1))
        return false;
    }
    return true;
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

  public final int hashCode()
  {
    Iterator localIterator = b.values().iterator();
    int i = 0;
    an.a locala;
    if (localIterator.hasNext())
    {
      locala = (an.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int j = i + locala.g() + b(locala).hashCode(); ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ew.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.b.a
 * JD-Core Version:    0.6.2
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.c;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$b extends an
  implements ae, c
{
  public static final ev a = new ev();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private eq.b.a e;
  private eq.b.b f;
  private int g;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("coverInfo", an.a.a("coverInfo", 2, eq.b.a.class));
    b.put("coverPhoto", an.a.a("coverPhoto", 3, eq.b.b.class));
    b.put("layout", an.a.a("layout", 4, new ak().a("banner", 0)));
  }

  public eq$b()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$b(Set<Integer> paramSet, int paramInt1, eq.b.a parama, eq.b.b paramb, int paramInt2)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = parama;
    this.f = paramb;
    this.g = paramInt2;
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
      return this.e;
    case 3:
      return this.f;
    case 4:
    }
    return Integer.valueOf(this.g);
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
    if (!(paramObject instanceof b))
      return false;
    if (this == paramObject)
      return true;
    b localb = (b)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localb.a(locala))
        {
          if (!b(locala).equals(localb.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localb.a(locala))
        return false;
    }
    return true;
  }

  final int f()
  {
    return this.d;
  }

  final eq.b.a g()
  {
    return this.e;
  }

  final eq.b.b h()
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

  public final int i()
  {
    return this.g;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ev.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.b
 * JD-Core Version:    0.6.2
 */
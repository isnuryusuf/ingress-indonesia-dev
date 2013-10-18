package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.j;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$h extends an
  implements ae, j
{
  public static final fd a = new fd();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private boolean e;
  private String f;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("primary", an.a.c("primary", 2));
    b.put("value", an.a.d("value", 3));
  }

  public eq$h()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$h(Set<Integer> paramSet, int paramInt, boolean paramBoolean, String paramString)
  {
    this.c = paramSet;
    this.d = paramInt;
    this.e = paramBoolean;
    this.f = paramString;
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
      return Boolean.valueOf(this.e);
    case 3:
    }
    return this.f;
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
    if (!(paramObject instanceof h))
      return false;
    if (this == paramObject)
      return true;
    h localh = (h)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localh.a(locala))
        {
          if (!b(locala).equals(localh.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localh.a(locala))
        return false;
    }
    return true;
  }

  final int f()
  {
    return this.d;
  }

  public final boolean g()
  {
    return this.e;
  }

  public final String h()
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
    fd.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.h
 * JD-Core Version:    0.6.2
 */
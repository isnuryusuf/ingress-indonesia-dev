package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.a.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class ef extends an
  implements ae, b
{
  public static final et a = new et();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private String e;
  private ed f;
  private String g;
  private ed h;
  private String i;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("id", an.a.d("id", 2));
    b.put("result", an.a.a("result", 4, ed.class));
    b.put("startDate", an.a.d("startDate", 5));
    b.put("target", an.a.a("target", 6, ed.class));
    b.put("type", an.a.d("type", 7));
  }

  public ef()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  ef(Set<Integer> paramSet, int paramInt, String paramString1, ed paramed1, String paramString2, ed paramed2, String paramString3)
  {
    this.c = paramSet;
    this.d = paramInt;
    this.e = paramString1;
    this.f = paramed1;
    this.g = paramString2;
    this.h = paramed2;
    this.i = paramString3;
  }

  protected final boolean a(an.a parama)
  {
    return this.c.contains(Integer.valueOf(parama.g()));
  }

  protected final Object b(an.a parama)
  {
    switch (parama.g())
    {
    case 3:
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.g());
    case 2:
      return this.e;
    case 4:
      return this.f;
    case 5:
      return this.g;
    case 6:
      return this.h;
    case 7:
    }
    return this.i;
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
    if (!(paramObject instanceof ef))
      return false;
    if (this == paramObject)
      return true;
    ef localef = (ef)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localef.a(locala))
        {
          if (!b(locala).equals(localef.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localef.a(locala))
        return false;
    }
    return true;
  }

  final int f()
  {
    return this.d;
  }

  public final String g()
  {
    return this.e;
  }

  final ed h()
  {
    return this.f;
  }

  public final int hashCode()
  {
    Iterator localIterator = b.values().iterator();
    int j = 0;
    an.a locala;
    if (localIterator.hasNext())
    {
      locala = (an.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int k = j + locala.g() + b(locala).hashCode(); ; k = j)
    {
      j = k;
      break;
      return j;
    }
  }

  public final String i()
  {
    return this.g;
  }

  final ed j()
  {
    return this.h;
  }

  public final String k()
  {
    return this.i;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    et.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ef
 * JD-Core Version:    0.6.2
 */
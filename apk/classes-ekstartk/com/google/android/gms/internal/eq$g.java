package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.i;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$g extends an
  implements ae, i
{
  public static final fb a = new fb();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private boolean j;
  private String k;
  private String l;
  private int m;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("department", an.a.d("department", 2));
    b.put("description", an.a.d("description", 3));
    b.put("endDate", an.a.d("endDate", 4));
    b.put("location", an.a.d("location", 5));
    b.put("name", an.a.d("name", 6));
    b.put("primary", an.a.c("primary", 7));
    b.put("startDate", an.a.d("startDate", 8));
    b.put("title", an.a.d("title", 9));
    b.put("type", an.a.a("type", 10, new ak().a("work", 0).a("school", 1)));
  }

  public eq$g()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$g(Set<Integer> paramSet, int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, String paramString6, String paramString7, int paramInt2)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.h = paramString4;
    this.i = paramString5;
    this.j = paramBoolean;
    this.k = paramString6;
    this.l = paramString7;
    this.m = paramInt2;
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
      return this.g;
    case 5:
      return this.h;
    case 6:
      return this.i;
    case 7:
      return Boolean.valueOf(this.j);
    case 8:
      return this.k;
    case 9:
      return this.l;
    case 10:
    }
    return Integer.valueOf(this.m);
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
    if (!(paramObject instanceof g))
      return false;
    if (this == paramObject)
      return true;
    g localg = (g)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localg.a(locala))
        {
          if (!b(locala).equals(localg.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localg.a(locala))
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

  public final String h()
  {
    return this.f;
  }

  public final int hashCode()
  {
    Iterator localIterator = b.values().iterator();
    int n = 0;
    an.a locala;
    if (localIterator.hasNext())
    {
      locala = (an.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int i1 = n + locala.g() + b(locala).hashCode(); ; i1 = n)
    {
      n = i1;
      break;
      return n;
    }
  }

  public final String i()
  {
    return this.g;
  }

  public final String j()
  {
    return this.h;
  }

  public final String k()
  {
    return this.i;
  }

  public final boolean l()
  {
    return this.j;
  }

  public final String m()
  {
    return this.k;
  }

  public final String n()
  {
    return this.l;
  }

  public final int o()
  {
    return this.m;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fb.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.g
 * JD-Core Version:    0.6.2
 */
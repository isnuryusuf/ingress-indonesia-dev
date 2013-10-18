package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$e extends an
  implements ae, h
{
  public static final fa a = new fa();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("familyName", an.a.d("familyName", 2));
    b.put("formatted", an.a.d("formatted", 3));
    b.put("givenName", an.a.d("givenName", 4));
    b.put("honorificPrefix", an.a.d("honorificPrefix", 5));
    b.put("honorificSuffix", an.a.d("honorificSuffix", 6));
    b.put("middleName", an.a.d("middleName", 7));
  }

  public eq$e()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$e(Set<Integer> paramSet, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.c = paramSet;
    this.d = paramInt;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.h = paramString4;
    this.i = paramString5;
    this.j = paramString6;
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
    }
    return this.j;
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
    if (!(paramObject instanceof e))
      return false;
    if (this == paramObject)
      return true;
    e locale = (e)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (locale.a(locala))
        {
          if (!b(locala).equals(locale.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (locale.a(locala))
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
    int k = 0;
    an.a locala;
    if (localIterator.hasNext())
    {
      locala = (an.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int m = k + locala.g() + b(locala).hashCode(); ; m = k)
    {
      k = m;
      break;
      return k;
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

  public final String l()
  {
    return this.j;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fa.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.e
 * JD-Core Version:    0.6.2
 */
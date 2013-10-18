package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.k;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$i extends an
  implements ae, k
{
  public static final fe a = new fe();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private boolean e;
  private int f;
  private String g;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("primary", an.a.c("primary", 2));
    b.put("type", an.a.a("type", 3, new ak().a("home", 0).a("work", 1).a("blog", 2).a("profile", 3).a("other", 4)));
    b.put("value", an.a.d("value", 4));
  }

  public eq$i()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$i(Set<Integer> paramSet, int paramInt1, boolean paramBoolean, int paramInt2, String paramString)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramBoolean;
    this.f = paramInt2;
    this.g = paramString;
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
      return Integer.valueOf(this.f);
    case 4:
    }
    return this.g;
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
    if (!(paramObject instanceof i))
      return false;
    if (this == paramObject)
      return true;
    i locali = (i)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (locali.a(locala))
        {
          if (!b(locala).equals(locali.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (locali.a(locala))
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

  public final String i()
  {
    return this.g;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fe.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.i
 * JD-Core Version:    0.6.2
 */
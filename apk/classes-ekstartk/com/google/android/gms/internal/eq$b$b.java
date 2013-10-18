package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.e;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eq$b$b extends an
  implements ae, e
{
  public static final ex a = new ex();
  private static final HashMap<String, an.a<?, ?>> b;
  private final Set<Integer> c;
  private final int d;
  private int e;
  private String f;
  private int g;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("height", an.a.a("height", 2));
    b.put("url", an.a.d("url", 3));
    b.put("width", an.a.a("width", 4));
  }

  public eq$b$b()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq$b$b(Set<Integer> paramSet, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramString;
    this.g = paramInt3;
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

  public final int g()
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

  public final int i()
  {
    return this.g;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ex.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq.b.b
 * JD-Core Version:    0.6.2
 */
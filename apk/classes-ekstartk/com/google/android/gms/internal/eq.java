package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.b.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class eq extends an
  implements ae, a
{
  public static final fc a = new fc();
  private static final HashMap<String, an.a<?, ?>> b;
  private int A;
  private String B;
  private String C;
  private List<eq.i> D;
  private boolean E;
  private final Set<Integer> c;
  private final int d;
  private String e;
  private eq.a f;
  private String g;
  private String h;
  private int i;
  private eq.b j;
  private String k;
  private String l;
  private List<eq.c> m;
  private String n;
  private int o;
  private boolean p;
  private String q;
  private eq.d r;
  private boolean s;
  private String t;
  private eq.e u;
  private String v;
  private int w;
  private List<eq.g> x;
  private List<eq.h> y;
  private int z;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("aboutMe", an.a.d("aboutMe", 2));
    b.put("ageRange", an.a.a("ageRange", 3, eq.a.class));
    b.put("birthday", an.a.d("birthday", 4));
    b.put("braggingRights", an.a.d("braggingRights", 5));
    b.put("circledByCount", an.a.a("circledByCount", 6));
    b.put("cover", an.a.a("cover", 7, eq.b.class));
    b.put("currentLocation", an.a.d("currentLocation", 8));
    b.put("displayName", an.a.d("displayName", 9));
    b.put("emails", an.a.b("emails", 10, eq.c.class));
    b.put("etag", an.a.d("etag", 11));
    b.put("gender", an.a.a("gender", 12, new ak().a("male", 0).a("female", 1).a("other", 2)));
    b.put("hasApp", an.a.c("hasApp", 13));
    b.put("id", an.a.d("id", 14));
    b.put("image", an.a.a("image", 15, eq.d.class));
    b.put("isPlusUser", an.a.c("isPlusUser", 16));
    b.put("language", an.a.d("language", 18));
    b.put("name", an.a.a("name", 19, eq.e.class));
    b.put("nickname", an.a.d("nickname", 20));
    b.put("objectType", an.a.a("objectType", 21, new ak().a("person", 0).a("page", 1)));
    b.put("organizations", an.a.b("organizations", 22, eq.g.class));
    b.put("placesLived", an.a.b("placesLived", 23, eq.h.class));
    b.put("plusOneCount", an.a.a("plusOneCount", 24));
    b.put("relationshipStatus", an.a.a("relationshipStatus", 25, new ak().a("single", 0).a("in_a_relationship", 1).a("engaged", 2).a("married", 3).a("its_complicated", 4).a("open_relationship", 5).a("widowed", 6).a("in_domestic_partnership", 7).a("in_civil_union", 8)));
    b.put("tagline", an.a.d("tagline", 26));
    b.put("url", an.a.d("url", 27));
    b.put("urls", an.a.b("urls", 28, eq.i.class));
    b.put("verified", an.a.c("verified", 29));
  }

  public eq()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  eq(Set<Integer> paramSet, int paramInt1, String paramString1, eq.a parama, String paramString2, String paramString3, int paramInt2, eq.b paramb, String paramString4, String paramString5, List<eq.c> paramList, String paramString6, int paramInt3, boolean paramBoolean1, String paramString7, eq.d paramd, boolean paramBoolean2, String paramString8, eq.e parame, String paramString9, int paramInt4, List<eq.g> paramList1, List<eq.h> paramList2, int paramInt5, int paramInt6, String paramString10, String paramString11, List<eq.i> paramList3, boolean paramBoolean3)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramString1;
    this.f = parama;
    this.g = paramString2;
    this.h = paramString3;
    this.i = paramInt2;
    this.j = paramb;
    this.k = paramString4;
    this.l = paramString5;
    this.m = paramList;
    this.n = paramString6;
    this.o = paramInt3;
    this.p = paramBoolean1;
    this.q = paramString7;
    this.r = paramd;
    this.s = paramBoolean2;
    this.t = paramString8;
    this.u = parame;
    this.v = paramString9;
    this.w = paramInt4;
    this.x = paramList1;
    this.y = paramList2;
    this.z = paramInt5;
    this.A = paramInt6;
    this.B = paramString10;
    this.C = paramString11;
    this.D = paramList3;
    this.E = paramBoolean3;
  }

  public static eq a(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    eq localeq = fc.a(localParcel);
    localParcel.recycle();
    return localeq;
  }

  final List<eq.h> A()
  {
    return this.y;
  }

  public final int B()
  {
    return this.z;
  }

  public final int C()
  {
    return this.A;
  }

  public final String D()
  {
    return this.B;
  }

  public final String E()
  {
    return this.C;
  }

  final List<eq.i> F()
  {
    return this.D;
  }

  public final boolean G()
  {
    return this.E;
  }

  protected final boolean a(an.a parama)
  {
    return this.c.contains(Integer.valueOf(parama.g()));
  }

  protected final Object b(an.a parama)
  {
    switch (parama.g())
    {
    case 17:
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
      return Integer.valueOf(this.i);
    case 7:
      return this.j;
    case 8:
      return this.k;
    case 9:
      return this.l;
    case 10:
      return this.m;
    case 11:
      return this.n;
    case 12:
      return Integer.valueOf(this.o);
    case 13:
      return Boolean.valueOf(this.p);
    case 14:
      return this.q;
    case 15:
      return this.r;
    case 16:
      return Boolean.valueOf(this.s);
    case 18:
      return this.t;
    case 19:
      return this.u;
    case 20:
      return this.v;
    case 21:
      return Integer.valueOf(this.w);
    case 22:
      return this.x;
    case 23:
      return this.y;
    case 24:
      return Integer.valueOf(this.z);
    case 25:
      return Integer.valueOf(this.A);
    case 26:
      return this.B;
    case 27:
      return this.C;
    case 28:
      return this.D;
    case 29:
    }
    return Boolean.valueOf(this.E);
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
    if (!(paramObject instanceof eq))
      return false;
    if (this == paramObject)
      return true;
    eq localeq = (eq)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localeq.a(locala))
        {
          if (!b(locala).equals(localeq.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localeq.a(locala))
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

  final eq.a h()
  {
    return this.f;
  }

  public final int hashCode()
  {
    Iterator localIterator = b.values().iterator();
    int i1 = 0;
    an.a locala;
    if (localIterator.hasNext())
    {
      locala = (an.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int i2 = i1 + locala.g() + b(locala).hashCode(); ; i2 = i1)
    {
      i1 = i2;
      break;
      return i1;
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

  public final int k()
  {
    return this.i;
  }

  final eq.b l()
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

  final List<eq.c> o()
  {
    return this.m;
  }

  public final String p()
  {
    return this.n;
  }

  public final int q()
  {
    return this.o;
  }

  public final boolean r()
  {
    return this.p;
  }

  public final String s()
  {
    return this.q;
  }

  final eq.d t()
  {
    return this.r;
  }

  public final boolean u()
  {
    return this.s;
  }

  public final String v()
  {
    return this.t;
  }

  final eq.e w()
  {
    return this.u;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fc.a(this, paramParcel, paramInt);
  }

  public final String x()
  {
    return this.v;
  }

  public final int y()
  {
    return this.w;
  }

  final List<eq.g> z()
  {
    return this.x;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eq
 * JD-Core Version:    0.6.2
 */
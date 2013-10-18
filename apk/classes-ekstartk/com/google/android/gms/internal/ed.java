package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.a.a.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ed extends an
  implements ae, a
{
  public static final es a = new es();
  private static final HashMap<String, an.a<?, ?>> b;
  private String A;
  private String B;
  private String C;
  private String D;
  private String E;
  private ed F;
  private String G;
  private String H;
  private String I;
  private String J;
  private ed K;
  private double L;
  private ed M;
  private double N;
  private String O;
  private ed P;
  private List<ed> Q;
  private String R;
  private String S;
  private String T;
  private String U;
  private ed V;
  private String W;
  private String X;
  private String Y;
  private ed Z;
  private String aa;
  private String ab;
  private String ac;
  private String ad;
  private String ae;
  private String af;
  private final Set<Integer> c;
  private final int d;
  private ed e;
  private List<String> f;
  private ed g;
  private String h;
  private String i;
  private String j;
  private List<ed> k;
  private int l;
  private List<ed> m;
  private ed n;
  private List<ed> o;
  private String p;
  private String q;
  private ed r;
  private String s;
  private String t;
  private String u;
  private List<ed> v;
  private String w;
  private String x;
  private String y;
  private String z;

  static
  {
    HashMap localHashMap = new HashMap();
    b = localHashMap;
    localHashMap.put("about", an.a.a("about", 2, ed.class));
    b.put("additionalName", an.a.a("additionalName"));
    b.put("address", an.a.a("address", 4, ed.class));
    b.put("addressCountry", an.a.d("addressCountry", 5));
    b.put("addressLocality", an.a.d("addressLocality", 6));
    b.put("addressRegion", an.a.d("addressRegion", 7));
    b.put("associated_media", an.a.b("associated_media", 8, ed.class));
    b.put("attendeeCount", an.a.a("attendeeCount", 9));
    b.put("attendees", an.a.b("attendees", 10, ed.class));
    b.put("audio", an.a.a("audio", 11, ed.class));
    b.put("author", an.a.b("author", 12, ed.class));
    b.put("bestRating", an.a.d("bestRating", 13));
    b.put("birthDate", an.a.d("birthDate", 14));
    b.put("byArtist", an.a.a("byArtist", 15, ed.class));
    b.put("caption", an.a.d("caption", 16));
    b.put("contentSize", an.a.d("contentSize", 17));
    b.put("contentUrl", an.a.d("contentUrl", 18));
    b.put("contributor", an.a.b("contributor", 19, ed.class));
    b.put("dateCreated", an.a.d("dateCreated", 20));
    b.put("dateModified", an.a.d("dateModified", 21));
    b.put("datePublished", an.a.d("datePublished", 22));
    b.put("description", an.a.d("description", 23));
    b.put("duration", an.a.d("duration", 24));
    b.put("embedUrl", an.a.d("embedUrl", 25));
    b.put("endDate", an.a.d("endDate", 26));
    b.put("familyName", an.a.d("familyName", 27));
    b.put("gender", an.a.d("gender", 28));
    b.put("geo", an.a.a("geo", 29, ed.class));
    b.put("givenName", an.a.d("givenName", 30));
    b.put("height", an.a.d("height", 31));
    b.put("id", an.a.d("id", 32));
    b.put("image", an.a.d("image", 33));
    b.put("inAlbum", an.a.a("inAlbum", 34, ed.class));
    b.put("latitude", an.a.b("latitude", 36));
    b.put("location", an.a.a("location", 37, ed.class));
    b.put("longitude", an.a.b("longitude", 38));
    b.put("name", an.a.d("name", 39));
    b.put("partOfTVSeries", an.a.a("partOfTVSeries", 40, ed.class));
    b.put("performers", an.a.b("performers", 41, ed.class));
    b.put("playerType", an.a.d("playerType", 42));
    b.put("postOfficeBoxNumber", an.a.d("postOfficeBoxNumber", 43));
    b.put("postalCode", an.a.d("postalCode", 44));
    b.put("ratingValue", an.a.d("ratingValue", 45));
    b.put("reviewRating", an.a.a("reviewRating", 46, ed.class));
    b.put("startDate", an.a.d("startDate", 47));
    b.put("streetAddress", an.a.d("streetAddress", 48));
    b.put("text", an.a.d("text", 49));
    b.put("thumbnail", an.a.a("thumbnail", 50, ed.class));
    b.put("thumbnailUrl", an.a.d("thumbnailUrl", 51));
    b.put("tickerSymbol", an.a.d("tickerSymbol", 52));
    b.put("type", an.a.d("type", 53));
    b.put("url", an.a.d("url", 54));
    b.put("width", an.a.d("width", 55));
    b.put("worstRating", an.a.d("worstRating", 56));
  }

  public ed()
  {
    this.d = 1;
    this.c = new HashSet();
  }

  ed(Set<Integer> paramSet, int paramInt1, ed paramed1, List<String> paramList, ed paramed2, String paramString1, String paramString2, String paramString3, List<ed> paramList1, int paramInt2, List<ed> paramList2, ed paramed3, List<ed> paramList3, String paramString4, String paramString5, ed paramed4, String paramString6, String paramString7, String paramString8, List<ed> paramList4, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, ed paramed5, String paramString18, String paramString19, String paramString20, String paramString21, ed paramed6, double paramDouble1, ed paramed7, double paramDouble2, String paramString22, ed paramed8, List<ed> paramList5, String paramString23, String paramString24, String paramString25, String paramString26, ed paramed9, String paramString27, String paramString28, String paramString29, ed paramed10, String paramString30, String paramString31, String paramString32, String paramString33, String paramString34, String paramString35)
  {
    this.c = paramSet;
    this.d = paramInt1;
    this.e = paramed1;
    this.f = paramList;
    this.g = paramed2;
    this.h = paramString1;
    this.i = paramString2;
    this.j = paramString3;
    this.k = paramList1;
    this.l = paramInt2;
    this.m = paramList2;
    this.n = paramed3;
    this.o = paramList3;
    this.p = paramString4;
    this.q = paramString5;
    this.r = paramed4;
    this.s = paramString6;
    this.t = paramString7;
    this.u = paramString8;
    this.v = paramList4;
    this.w = paramString9;
    this.x = paramString10;
    this.y = paramString11;
    this.z = paramString12;
    this.A = paramString13;
    this.B = paramString14;
    this.C = paramString15;
    this.D = paramString16;
    this.E = paramString17;
    this.F = paramed5;
    this.G = paramString18;
    this.H = paramString19;
    this.I = paramString20;
    this.J = paramString21;
    this.K = paramed6;
    this.L = paramDouble1;
    this.M = paramed7;
    this.N = paramDouble2;
    this.O = paramString22;
    this.P = paramed8;
    this.Q = paramList5;
    this.R = paramString23;
    this.S = paramString24;
    this.T = paramString25;
    this.U = paramString26;
    this.V = paramed9;
    this.W = paramString27;
    this.X = paramString28;
    this.Y = paramString29;
    this.Z = paramed10;
    this.aa = paramString30;
    this.ab = paramString31;
    this.ac = paramString32;
    this.ad = paramString33;
    this.ae = paramString34;
    this.af = paramString35;
  }

  public final String A()
  {
    return this.y;
  }

  public final String B()
  {
    return this.z;
  }

  public final String C()
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

  public final String F()
  {
    return this.D;
  }

  public final String G()
  {
    return this.E;
  }

  final ed H()
  {
    return this.F;
  }

  public final String I()
  {
    return this.G;
  }

  public final String J()
  {
    return this.H;
  }

  public final String K()
  {
    return this.I;
  }

  public final String L()
  {
    return this.J;
  }

  final ed M()
  {
    return this.K;
  }

  public final double N()
  {
    return this.L;
  }

  final ed O()
  {
    return this.M;
  }

  public final double P()
  {
    return this.N;
  }

  public final String Q()
  {
    return this.O;
  }

  final ed R()
  {
    return this.P;
  }

  final List<ed> S()
  {
    return this.Q;
  }

  public final String T()
  {
    return this.R;
  }

  public final String U()
  {
    return this.S;
  }

  public final String V()
  {
    return this.T;
  }

  public final String W()
  {
    return this.U;
  }

  final ed X()
  {
    return this.V;
  }

  public final String Y()
  {
    return this.W;
  }

  public final String Z()
  {
    return this.X;
  }

  protected final boolean a(an.a parama)
  {
    return this.c.contains(Integer.valueOf(parama.g()));
  }

  public final String aa()
  {
    return this.Y;
  }

  final ed ab()
  {
    return this.Z;
  }

  public final String ac()
  {
    return this.aa;
  }

  public final String ad()
  {
    return this.ab;
  }

  public final String ae()
  {
    return this.ac;
  }

  public final String af()
  {
    return this.ad;
  }

  public final String ag()
  {
    return this.ae;
  }

  public final String ah()
  {
    return this.af;
  }

  protected final Object b(an.a parama)
  {
    switch (parama.g())
    {
    case 35:
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
      return this.j;
    case 8:
      return this.k;
    case 9:
      return Integer.valueOf(this.l);
    case 10:
      return this.m;
    case 11:
      return this.n;
    case 12:
      return this.o;
    case 13:
      return this.p;
    case 14:
      return this.q;
    case 15:
      return this.r;
    case 16:
      return this.s;
    case 17:
      return this.t;
    case 18:
      return this.u;
    case 19:
      return this.v;
    case 20:
      return this.w;
    case 21:
      return this.x;
    case 22:
      return this.y;
    case 23:
      return this.z;
    case 24:
      return this.A;
    case 25:
      return this.B;
    case 26:
      return this.C;
    case 27:
      return this.D;
    case 28:
      return this.E;
    case 29:
      return this.F;
    case 30:
      return this.G;
    case 31:
      return this.H;
    case 32:
      return this.I;
    case 33:
      return this.J;
    case 34:
      return this.K;
    case 36:
      return Double.valueOf(this.L);
    case 37:
      return this.M;
    case 38:
      return Double.valueOf(this.N);
    case 39:
      return this.O;
    case 40:
      return this.P;
    case 41:
      return this.Q;
    case 42:
      return this.R;
    case 43:
      return this.S;
    case 44:
      return this.T;
    case 45:
      return this.U;
    case 46:
      return this.V;
    case 47:
      return this.W;
    case 48:
      return this.X;
    case 49:
      return this.Y;
    case 50:
      return this.Z;
    case 51:
      return this.aa;
    case 52:
      return this.ab;
    case 53:
      return this.ac;
    case 54:
      return this.ad;
    case 55:
      return this.ae;
    case 56:
    }
    return this.af;
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
    if (!(paramObject instanceof ed))
      return false;
    if (this == paramObject)
      return true;
    ed localed = (ed)paramObject;
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      an.a locala = (an.a)localIterator.next();
      if (a(locala))
      {
        if (localed.a(locala))
        {
          if (!b(locala).equals(localed.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localed.a(locala))
        return false;
    }
    return true;
  }

  final int f()
  {
    return this.d;
  }

  final ed g()
  {
    return this.e;
  }

  public final List<String> h()
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

  final ed i()
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

  final List<ed> m()
  {
    return this.k;
  }

  public final int n()
  {
    return this.l;
  }

  final List<ed> o()
  {
    return this.m;
  }

  final ed p()
  {
    return this.n;
  }

  final List<ed> q()
  {
    return this.o;
  }

  public final String r()
  {
    return this.p;
  }

  public final String s()
  {
    return this.q;
  }

  final ed t()
  {
    return this.r;
  }

  public final String u()
  {
    return this.s;
  }

  public final String v()
  {
    return this.t;
  }

  public final String w()
  {
    return this.u;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    es.a(this, paramParcel, paramInt);
  }

  final List<ed> x()
  {
    return this.v;
  }

  public final String y()
  {
    return this.w;
  }

  public final String z()
  {
    return this.x;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ed
 * JD-Core Version:    0.6.2
 */
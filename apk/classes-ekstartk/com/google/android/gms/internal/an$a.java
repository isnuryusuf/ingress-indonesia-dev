package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;

public class an$a<I, O>
  implements ae
{
  public static final l i = new l();
  protected final int a;
  protected final boolean b;
  protected final int c;
  protected final boolean d;
  protected final String e;
  protected final int f;
  protected final Class<? extends an> g;
  protected final String h;
  private final int j;
  private aq k;
  private j<I, O> l;

  an$a(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, ai paramai)
  {
    this.j = paramInt1;
    this.a = paramInt2;
    this.b = paramBoolean1;
    this.c = paramInt3;
    this.d = paramBoolean2;
    this.e = paramString1;
    this.f = paramInt4;
    if (paramString2 == null)
      this.g = null;
    for (this.h = null; paramai == null; this.h = paramString2)
    {
      this.l = null;
      return;
      this.g = at.class;
    }
    this.l = paramai.c();
  }

  private an$a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends an> paramClass, j<I, O> paramj)
  {
    this.j = 1;
    this.a = paramInt1;
    this.b = paramBoolean1;
    this.c = paramInt2;
    this.d = paramBoolean2;
    this.e = paramString;
    this.f = paramInt3;
    this.g = paramClass;
    if (paramClass == null);
    for (this.h = null; ; this.h = paramClass.getCanonicalName())
    {
      this.l = paramj;
      return;
    }
  }

  public static a<ArrayList<String>, ArrayList<String>> a(String paramString)
  {
    return new a(7, true, 7, true, paramString, 3, null, null);
  }

  public static a<Integer, Integer> a(String paramString, int paramInt)
  {
    return new a(0, false, 0, false, paramString, paramInt, null, null);
  }

  public static a a(String paramString, int paramInt, j<?, ?> paramj)
  {
    return new a(7, false, 0, false, paramString, paramInt, null, paramj);
  }

  public static <T extends an> a<T, T> a(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, false, 11, false, paramString, paramInt, paramClass, null);
  }

  public static a<Double, Double> b(String paramString, int paramInt)
  {
    return new a(4, false, 4, false, paramString, paramInt, null, null);
  }

  public static <T extends an> a<ArrayList<T>, ArrayList<T>> b(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, true, 11, true, paramString, paramInt, paramClass, null);
  }

  public static a<Boolean, Boolean> c(String paramString, int paramInt)
  {
    return new a(6, false, 6, false, paramString, paramInt, null, null);
  }

  public static a<String, String> d(String paramString, int paramInt)
  {
    return new a(7, false, 7, false, paramString, paramInt, null, null);
  }

  public final int a()
  {
    return this.j;
  }

  public final I a(O paramO)
  {
    return this.l.a(paramO);
  }

  public final void a(aq paramaq)
  {
    this.k = paramaq;
  }

  public final int b()
  {
    return this.a;
  }

  public final boolean c()
  {
    return this.b;
  }

  public final int d()
  {
    return this.c;
  }

  public int describeContents()
  {
    return 0;
  }

  public final boolean e()
  {
    return this.d;
  }

  public final String f()
  {
    return this.e;
  }

  public final int g()
  {
    return this.f;
  }

  public final Class<? extends an> h()
  {
    return this.g;
  }

  final String i()
  {
    if (this.h == null)
      return null;
    return this.h;
  }

  public final boolean j()
  {
    return this.l != null;
  }

  final ai k()
  {
    if (this.l == null)
      return null;
    return ai.a(this.l);
  }

  public final HashMap<String, a<?, ?>> l()
  {
    gg.a(this.h);
    gg.a(this.k);
    return this.k.a(this.h);
  }

  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Field\n");
    localStringBuilder1.append("            versionCode=").append(this.j).append('\n');
    localStringBuilder1.append("                 typeIn=").append(this.a).append('\n');
    localStringBuilder1.append("            typeInArray=").append(this.b).append('\n');
    localStringBuilder1.append("                typeOut=").append(this.c).append('\n');
    localStringBuilder1.append("           typeOutArray=").append(this.d).append('\n');
    localStringBuilder1.append("        outputFieldName=").append(this.e).append('\n');
    localStringBuilder1.append("      safeParcelFieldId=").append(this.f).append('\n');
    localStringBuilder1.append("       concreteTypeName=").append(i()).append('\n');
    if (this.g != null)
      localStringBuilder1.append("     concreteType.class=").append(this.g.getCanonicalName()).append('\n');
    StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
    if (this.l == null);
    for (String str = "null"; ; str = this.l.getClass().getCanonicalName())
    {
      localStringBuilder2.append(str).append('\n');
      return localStringBuilder1.toString();
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.an.a
 * JD-Core Version:    0.6.2
 */
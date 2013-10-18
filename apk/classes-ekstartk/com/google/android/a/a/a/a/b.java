package com.google.android.a.a.a.a;

import android.os.Build.VERSION;
import java.util.LinkedHashMap;
import java.util.Map;

public final class b
{
  private final String a;
  private final String b;
  private int c;
  private String d;
  private String e;
  private int f;
  private int g;
  private int h;
  private int i;
  private Map<String, String> j;
  private f k;
  private String l;
  private String m;

  public b()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Build.VERSION.RELEASE;
    this.a = String.format("Android %s", arrayOfObject);
    this.b = Build.VERSION.SDK;
    this.c = 3;
    this.d = "_s";
    this.e = "http://csi.gstatic.com/csi";
    this.f = 16;
    this.g = 3;
    this.h = 1;
    this.i = 1;
    this.j = new LinkedHashMap();
  }

  public final int a()
  {
    return this.c;
  }

  public final b a(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public final String b()
  {
    return this.d;
  }

  public final String c()
  {
    return this.e;
  }

  public final int d()
  {
    return this.f;
  }

  public final int e()
  {
    return this.g;
  }

  public final int f()
  {
    return this.h;
  }

  public final int g()
  {
    return this.i;
  }

  public final Map<String, String> h()
  {
    return this.j;
  }

  public final f i()
  {
    if (this.k == null)
      this.k = new h(this.l, this.m);
    return this.k;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */
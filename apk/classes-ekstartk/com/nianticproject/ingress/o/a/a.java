package com.nianticproject.ingress.o.a;

import com.nianticproject.ingress.ec;

public enum a
{
  private final String i;
  private final String j;

  static
  {
    a[] arrayOfa = new a[8];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    arrayOfa[7] = h;
  }

  private a(String paramString, int paramInt)
  {
    this(paramString, Integer.toString(paramInt));
  }

  private a(String paramString1, String paramString2)
  {
    this.i = paramString1;
    this.j = paramString2;
  }

  private a(String paramString, boolean paramBoolean)
  {
    this(paramString, Boolean.toString(paramBoolean));
  }

  private a(String paramString)
  {
    this(str1, null);
  }

  private String c()
  {
    if (ec.d())
      return c.a(this.i, this.j);
    return this.j;
  }

  public final boolean a()
  {
    return "TRUE".equalsIgnoreCase(c());
  }

  public final int b()
  {
    return Integer.parseInt(c());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.a.a
 * JD-Core Version:    0.6.2
 */
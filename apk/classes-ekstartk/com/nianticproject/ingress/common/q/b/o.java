package com.nianticproject.ingress.common.q.b;

public final class o
{
  private final q a;
  private final String b;
  private final boolean c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private long j;
  private String k;

  private o(p paramp)
  {
    this.a = p.a(paramp);
    this.b = p.b(paramp);
    this.d = p.c(paramp);
    this.e = p.d(paramp);
    this.f = p.e(paramp);
    this.h = p.f(paramp);
    this.i = p.g(paramp);
    this.c = p.h(paramp);
    this.g = (p.i(paramp) + "-" + this.f);
    this.j = this.a.a();
    this.k = this.a.b();
  }

  public final String a()
  {
    return this.b;
  }

  final void a(long paramLong)
  {
    try
    {
      if (this.j == 0L)
      {
        this.j = paramLong;
        this.a.a(paramLong);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(String paramString)
  {
    try
    {
      if (this.k == null)
      {
        this.k = paramString;
        this.a.a(paramString);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String b()
  {
    return this.d;
  }

  public final String c()
  {
    return this.e;
  }

  public final String d()
  {
    return this.f;
  }

  public final String e()
  {
    return this.g;
  }

  public final String f()
  {
    return this.h;
  }

  public final String g()
  {
    return this.i;
  }

  public final long h()
  {
    return this.j;
  }

  public final String i()
  {
    return this.k;
  }

  public final boolean j()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.o
 * JD-Core Version:    0.6.2
 */
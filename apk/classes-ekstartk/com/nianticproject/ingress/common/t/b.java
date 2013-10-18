package com.nianticproject.ingress.common.t;

import java.util.concurrent.atomic.AtomicInteger;

public final class b
{
  private static final AtomicInteger a = new AtomicInteger();
  private final String b;
  private final int c;
  private long d;
  private long e;
  private int f;
  private float g;
  private float h;

  b(String paramString)
  {
    this.b = paramString;
    this.c = a.incrementAndGet();
    this.d = 0L;
    this.e = 0L;
    this.f = 0;
  }

  public static void a(b paramb)
  {
    c.a().b(paramb);
  }

  public static void c()
  {
    c.a().a();
  }

  public final String a()
  {
    return this.b;
  }

  final void a(long paramLong1, long paramLong2)
  {
    this.d = (paramLong1 + this.d);
    this.e = (paramLong2 + this.e);
    this.f = (1 + this.f);
  }

  public final void b()
  {
    c.a().a(this);
  }

  final void b(long paramLong1, long paramLong2)
  {
    this.d -= paramLong1;
    this.e -= paramLong2;
    this.f = (-1 + this.f);
  }

  public final float d()
  {
    return this.g;
  }

  public final float e()
  {
    return this.h;
  }

  public final int f()
  {
    return this.f;
  }

  public final void g()
  {
    if (this.f == 0)
    {
      this.g = (0.0F / 0.0F);
      this.h = (0.0F / 0.0F);
      return;
    }
    this.g = ((float)this.d / (float)(1000000L * this.f));
    this.h = ((float)this.e / (float)(1000000L * this.f));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.b
 * JD-Core Version:    0.6.2
 */
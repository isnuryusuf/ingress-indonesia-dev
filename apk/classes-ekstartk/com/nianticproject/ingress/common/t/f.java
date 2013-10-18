package com.nianticproject.ingress.common.t;

final class f
{
  f a;
  private final b b;
  private long c;
  private long d;
  private long e;
  private long f;

  f(b paramb)
  {
    this.b = paramb;
    this.c = System.nanoTime();
  }

  final long a()
  {
    this.d = System.nanoTime();
    this.e = (this.d - this.c);
    this.f += this.e;
    return this.e;
  }

  final void a(long paramLong)
  {
    this.f -= paramLong;
  }

  final long b()
  {
    return this.d;
  }

  final void c()
  {
    this.b.a(this.f, this.e);
  }

  final void d()
  {
    this.b.b(this.f, this.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.f
 * JD-Core Version:    0.6.2
 */
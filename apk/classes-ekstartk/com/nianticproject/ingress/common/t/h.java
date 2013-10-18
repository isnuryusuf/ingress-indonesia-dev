package com.nianticproject.ingress.common.t;

final class h
{
  private f a;

  final f a(long paramLong)
  {
    if ((this.a == null) || (this.a.b() < paramLong))
      return null;
    f localf = this.a;
    this.a = this.a.a;
    return localf;
  }

  final void a()
  {
    this.a = null;
  }

  final void a(f paramf)
  {
    paramf.a = this.a;
    this.a = paramf;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.h
 * JD-Core Version:    0.6.2
 */
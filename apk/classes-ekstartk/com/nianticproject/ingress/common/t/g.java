package com.nianticproject.ingress.common.t;

final class g
{
  private f a;
  private f b;

  final f a(long paramLong)
  {
    if ((this.a == null) || (this.a.b() >= paramLong))
      return null;
    f localf = this.a;
    this.a = this.a.a;
    return localf;
  }

  final void a(f paramf)
  {
    if (this.a == null)
    {
      this.b = paramf;
      this.a = paramf;
      return;
    }
    this.b.a = paramf;
    this.b = paramf;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.g
 * JD-Core Version:    0.6.2
 */
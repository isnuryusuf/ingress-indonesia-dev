package com.nianticproject.ingress.common.c;

import com.nianticproject.ingress.common.w.r;

final class bf
  implements r<bf>, Comparable<bf>
{
  public final bn a;
  private final long c;
  private final long d;

  private bf(bb parambb, bn parambn)
  {
    this.a = parambn;
    this.d = parambn.t();
    this.c = (this.d + parambn.m());
  }

  public final boolean a(long paramLong)
  {
    return (this.a.j()) || (paramLong > this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bf
 * JD-Core Version:    0.6.2
 */
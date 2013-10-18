package com.nianticproject.ingress.common.x;

public final class p
{
  private long a;

  public p(long paramLong)
  {
    this.a = (paramLong + System.nanoTime());
  }

  public final long a()
  {
    return this.a - System.nanoTime();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.p
 * JD-Core Version:    0.6.2
 */
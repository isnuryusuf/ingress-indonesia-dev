package com.nianticproject.ingress.common.q.a;

public final class f
{
  private final long a;
  private final long b;
  private final long c;

  f(long paramLong)
  {
    this.c = paramLong;
    this.a = 0L;
    this.b = 0L;
  }

  public f(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    long l1 = paramLong1 >>> 16;
    long l2 = 0xFFFFFFFF & paramLong1 << 32 | paramLong2 >>> 32;
    long l3 = 0xFFFFFFFF & paramLong2;
    long l4 = l2 ^ 0xFFFFFFFF & (l1 << 4 ^ l1 >>> 44);
    this.c = (l3 ^ 0xFFFFFFFF & (l4 << 4 ^ l4 >>> 44));
  }

  private boolean a()
  {
    return (this.a == 0L) && (this.b == 0L);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    f localf;
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof f))
          break label73;
        localf = (f)paramObject;
        if ((!a()) && (!localf.a()))
          break;
      }
      while (this.c == localf.c);
      return false;
    }
    while ((this.a == localf.a) && (this.b == localf.b));
    return false;
    label73: return false;
  }

  public final int hashCode()
  {
    return (int)(this.c ^ this.c >>> 32);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.f
 * JD-Core Version:    0.6.2
 */
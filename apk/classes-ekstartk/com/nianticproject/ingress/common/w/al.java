package com.nianticproject.ingress.common.w;

public final class al
{
  private final String a;
  private long b = 0L;
  private long c = 0L;
  private boolean d = false;

  public al()
  {
    this("StopWatch");
  }

  private al(String paramString)
  {
    this.a = paramString;
  }

  public final al a()
  {
    this.b = System.nanoTime();
    this.d = true;
    return this;
  }

  public final al b()
  {
    this.c = System.nanoTime();
    this.d = false;
    return this;
  }

  public final long c()
  {
    if (this.d);
    for (long l = System.nanoTime() - this.b; ; l = this.c - this.b)
      return l / 1000000L;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.al
 * JD-Core Version:    0.6.2
 */
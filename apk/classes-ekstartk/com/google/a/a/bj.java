package com.google.a.a;

import java.util.concurrent.TimeUnit;

public final class bj
{
  private final bw a;
  private boolean b;
  private long c;
  private long d;

  @Deprecated
  public bj()
  {
    this(bw.b());
  }

  @Deprecated
  private bj(bw parambw)
  {
    this.a = ((bw)an.a(parambw, "ticker"));
  }

  private long b()
  {
    if (this.b)
      return this.a.a() - this.d + this.c;
    return this.c;
  }

  public final long a(TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.convert(b(), TimeUnit.NANOSECONDS);
  }

  public final bj a()
  {
    if (!this.b);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "This stopwatch is already running.");
      this.b = true;
      this.d = this.a.a();
      return this;
    }
  }

  public final String toString()
  {
    long l = b();
    TimeUnit localTimeUnit;
    if (TimeUnit.SECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L)
      localTimeUnit = TimeUnit.SECONDS;
    Object[] arrayOfObject;
    while (true)
    {
      double d1 = l / TimeUnit.NANOSECONDS.convert(1L, localTimeUnit);
      arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(d1);
      switch (bk.a[localTimeUnit.ordinal()])
      {
      default:
        throw new AssertionError();
        if (TimeUnit.MILLISECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L)
          localTimeUnit = TimeUnit.MILLISECONDS;
        else if (TimeUnit.MICROSECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L)
          localTimeUnit = TimeUnit.MICROSECONDS;
        else
          localTimeUnit = TimeUnit.NANOSECONDS;
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    String str = "ns";
    while (true)
    {
      arrayOfObject[1] = str;
      return String.format("%.4g %s", arrayOfObject);
      str = "μs";
      continue;
      str = "ms";
      continue;
      str = "s";
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bj
 * JD-Core Version:    0.6.2
 */
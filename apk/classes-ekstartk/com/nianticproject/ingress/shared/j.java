package com.nianticproject.ingress.shared;

import java.util.Random;

final class j
{
  private final Random a = new Random();
  private long b = 1000L;
  private boolean c = true;
  private final long d = 1800000L;

  public final void a()
  {
    if (this.c)
    {
      this.c = false;
      return;
    }
    try
    {
      Thread.sleep(Math.abs(this.a.nextLong()) % this.b);
      label31: this.b = Math.min(2L * this.b, 1800000L);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label31;
    }
  }

  public final void b()
  {
    this.b = 1000L;
    this.c = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.j
 * JD-Core Version:    0.6.2
 */
package com.google.a.b;

import java.util.concurrent.atomic.AtomicLong;

final class bv extends AtomicLong
  implements br
{
  public final void a()
  {
    getAndIncrement();
  }

  public final void a(long paramLong)
  {
    getAndAdd(paramLong);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bv
 * JD-Core Version:    0.6.2
 */
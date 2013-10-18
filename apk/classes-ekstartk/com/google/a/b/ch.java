package com.google.a.b;

import sun.misc.Unsafe;

final class ch
{
  private static final Unsafe b;
  private static final long c;
  volatile long a;

  static
  {
    try
    {
      b = cf.c();
      c = b.objectFieldOffset(ch.class.getDeclaredField("value"));
      return;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }

  ch(long paramLong)
  {
    this.a = paramLong;
  }

  final boolean a(long paramLong1, long paramLong2)
  {
    return b.compareAndSwapLong(this, c, paramLong1, paramLong2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ch
 * JD-Core Version:    0.6.2
 */
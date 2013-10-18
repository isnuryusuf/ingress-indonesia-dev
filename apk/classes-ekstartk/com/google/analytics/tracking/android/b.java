package com.google.analytics.tracking.android;

import java.util.Random;

final class b
{
  private static final b a = new b();
  private int b;
  private Random c = new Random();

  static b a()
  {
    return a;
  }

  final int b()
  {
    this.b = (1 + this.c.nextInt(2147483646));
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.b
 * JD-Core Version:    0.6.2
 */
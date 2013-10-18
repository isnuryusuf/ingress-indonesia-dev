package com.google.a.b;

import java.util.Random;

final class ci
{
  static final Random a = new Random();
  int b;

  ci()
  {
    int i = a.nextInt();
    if (i == 0)
      i = 1;
    this.b = i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ci
 * JD-Core Version:    0.6.2
 */
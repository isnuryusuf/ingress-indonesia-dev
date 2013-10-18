package com.google.a.a;

import java.util.Set;

final class bp
{
  boolean[] a;
  Set<Integer> b;

  private bp(Set<Integer> paramSet)
  {
    this.b = paramSet;
    this.a = new boolean[256];
    for (int i = 0; i < this.a.length; i++)
      this.a[i] = this.b.contains(Integer.valueOf(i));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bp
 * JD-Core Version:    0.6.2
 */
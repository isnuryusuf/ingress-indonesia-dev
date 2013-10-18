package com.google.a.a;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class bq
{
  Set<Integer> a = new HashSet();

  final bp a()
  {
    return new bp(this.a, (byte)0);
  }

  final bq a(int paramInt)
  {
    this.a.add(Integer.valueOf(paramInt));
    return this;
  }

  final bq a(int paramInt1, int paramInt2)
  {
    while (paramInt1 <= paramInt2)
    {
      this.a.add(Integer.valueOf(paramInt1));
      paramInt1++;
    }
    return this;
  }

  final bq a(bp parambp)
  {
    Iterator localIterator = parambp.b.iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      this.a.add(Integer.valueOf(i));
    }
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bq
 * JD-Core Version:    0.6.2
 */
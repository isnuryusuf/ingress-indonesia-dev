package com.google.a.c;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class kk extends hj<C, V>
{
  private kk(kj paramkj)
  {
  }

  final Map<C, V> a()
  {
    return this.a;
  }

  public final Iterator<Map.Entry<C, V>> iterator()
  {
    Map localMap = this.a.c();
    if (localMap == null)
      return eg.b();
    return new kl(this, localMap.entrySet().iterator());
  }

  public final int size()
  {
    Map localMap = this.a.c();
    if (localMap == null)
      return 0;
    return localMap.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kk
 * JD-Core Version:    0.6.2
 */
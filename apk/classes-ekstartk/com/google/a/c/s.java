package com.google.a.c;

import java.util.Collection;
import java.util.Set;

final class s extends f<K, V>.o
  implements Set<V>
{
  s(K paramK, Set<V> paramSet)
  {
    super(paramK, paramSet, localCollection, null);
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool;
    if (paramCollection.isEmpty())
      bool = false;
    int i;
    do
    {
      return bool;
      i = size();
      bool = jc.a((Set)this.c, paramCollection);
    }
    while (!bool);
    int j = this.c.size();
    f.a(this.a, j - i);
    b();
    return bool;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.s
 * JD-Core Version:    0.6.2
 */
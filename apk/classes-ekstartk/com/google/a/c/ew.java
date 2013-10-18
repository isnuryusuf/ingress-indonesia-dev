package com.google.a.c;

import java.util.Map.Entry;
import java.util.Set;

final class ew<K, V> extends eu<K, V>
  implements Set<Map.Entry<K, V>>
{
  ew(Set<Map.Entry<K, V>> paramSet, er<? super K, ? super V> paramer)
  {
    super(paramSet, paramer);
  }

  public final boolean equals(Object paramObject)
  {
    return jc.a(this, paramObject);
  }

  public final int hashCode()
  {
    return jc.a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ew
 * JD-Core Version:    0.6.2
 */
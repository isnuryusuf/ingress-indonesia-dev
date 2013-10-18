package com.google.a.b;

import java.util.Map.Entry;

final class bq
  implements Map.Entry<K, V>
{
  final K a;
  V b;

  bq(K paramK, V paramV)
  {
    this.a = paramV;
    Object localObject;
    this.b = localObject;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      boolean bool3 = this.a.equals(localEntry.getKey());
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.b.equals(localEntry.getValue());
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public final K getKey()
  {
    return this.a;
  }

  public final V getValue()
  {
    return this.b;
  }

  public final int hashCode()
  {
    return this.a.hashCode() ^ this.b.hashCode();
  }

  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bq
 * JD-Core Version:    0.6.2
 */
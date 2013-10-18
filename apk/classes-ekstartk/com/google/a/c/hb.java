package com.google.a.c;

import java.util.Map.Entry;

final class hb extends y<K, V>
{
  final K a;
  V b;

  hb(K paramK, V paramV)
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
    Object localObject = this.c.put(this.a, paramV);
    this.b = paramV;
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hb
 * JD-Core Version:    0.6.2
 */
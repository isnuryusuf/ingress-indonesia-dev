package com.google.a.b;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.Map.Entry;

public final class ce<K, V>
  implements Map.Entry<K, V>
{
  private final K a;
  private final V b;
  private final bx c;

  ce(K paramK, V paramV, bx parambx)
  {
    this.a = paramK;
    this.b = paramV;
    this.c = ((bx)an.a(parambx));
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      boolean bool3 = ag.a(getKey(), localEntry.getKey());
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ag.a(getValue(), localEntry.getValue());
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
    Object localObject1 = getKey();
    Object localObject2 = getValue();
    int i;
    int j;
    if (localObject1 == null)
    {
      i = 0;
      j = 0;
      if (localObject2 != null)
        break label36;
    }
    while (true)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label36: j = localObject2.hashCode();
    }
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
 * Qualified Name:     com.google.a.b.ce
 * JD-Core Version:    0.6.2
 */
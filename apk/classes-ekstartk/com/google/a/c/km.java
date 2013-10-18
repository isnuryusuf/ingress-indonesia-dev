package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.Map.Entry;

final class km extends bq<C, V>
{
  km(kl paramkl, Map.Entry paramEntry)
  {
  }

  protected final Map.Entry<C, V> a()
  {
    return this.a;
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

  public final V setValue(V paramV)
  {
    return super.setValue(an.a(paramV));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.km
 * JD-Core Version:    0.6.2
 */
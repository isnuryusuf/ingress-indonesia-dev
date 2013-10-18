package com.google.a.c;

import java.util.HashMap;
import java.util.Set;

public final class cm<K, V> extends ae<K, V>
{
  transient int a = 2;

  private cm()
  {
    super(new HashMap());
  }

  public static <K, V> cm<K, V> i()
  {
    return new cm();
  }

  final Set<V> a()
  {
    return jc.a(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cm
 * JD-Core Version:    0.6.2
 */
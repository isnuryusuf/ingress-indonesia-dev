package com.google.a.c;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class al<K, V> extends e<K, V>
{
  transient int a = 3;

  private al()
  {
    super(new HashMap());
  }

  public static <K, V> al<K, V> i()
  {
    return new al();
  }

  final List<V> a()
  {
    return new ArrayList(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.al
 * JD-Core Version:    0.6.2
 */
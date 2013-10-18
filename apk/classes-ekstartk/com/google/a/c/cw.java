package com.google.a.c;

import java.io.Serializable;

class cw<K, V> extends y<K, V>
  implements Serializable
{
  private final K a;
  private final V b;

  cw(K paramK, V paramV)
  {
    this.a = paramK;
    this.b = paramV;
  }

  public final K getKey()
  {
    return this.a;
  }

  public final V getValue()
  {
    return this.b;
  }

  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cw
 * JD-Core Version:    0.6.2
 */
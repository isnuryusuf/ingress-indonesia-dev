package com.google.a.b;

import java.io.Serializable;

class an<K, V>
  implements d<K, V>, Serializable
{
  final o<K, V> a;

  private an(o<K, V> paramo)
  {
    this.a = paramo;
  }

  public final void a()
  {
    this.a.clear();
  }

  public final V b(Object paramObject)
  {
    return this.a.a(paramObject);
  }

  public final void c(Object paramObject)
  {
    com.google.a.a.an.a(paramObject);
    this.a.remove(paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.an
 * JD-Core Version:    0.6.2
 */
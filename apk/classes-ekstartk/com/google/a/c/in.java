package com.google.a.c;

final class in<K, V> extends dj<K, V>
{
  private final dj<K, V> a;

  in(dj<K, V> paramdj1, dj<K, V> paramdj2)
  {
    super(paramdj1);
    this.a = paramdj2;
  }

  in(K paramK, V paramV, dj<K, V> paramdj)
  {
    super(paramK, paramV);
    this.a = paramdj;
  }

  final dj<K, V> a()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.in
 * JD-Core Version:    0.6.2
 */
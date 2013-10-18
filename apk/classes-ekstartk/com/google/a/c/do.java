package com.google.a.c;

final class do<K, V> extends ct<V>
{
  private final dh<K, V> a;

  do(dh<K, V> paramdh)
  {
    this.a = paramdh;
  }

  public final lj<V> b()
  {
    return hc.a(this.a.f().b());
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }

  final boolean e()
  {
    return true;
  }

  final dc<V> f()
  {
    return new dp(this, this.a.f().a());
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.do
 * JD-Core Version:    0.6.2
 */
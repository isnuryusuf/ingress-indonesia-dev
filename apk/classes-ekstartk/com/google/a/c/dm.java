package com.google.a.c;

final class dm<K, V> extends du<K>
{
  private final dh<K, V> a;

  dm(dh<K, V> paramdh)
  {
    this.a = paramdh;
  }

  public final lj<K> b()
  {
    return a().b();
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  final boolean e()
  {
    return true;
  }

  final dc<K> f()
  {
    return new dn(this, this.a.f().a());
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dm
 * JD-Core Version:    0.6.2
 */
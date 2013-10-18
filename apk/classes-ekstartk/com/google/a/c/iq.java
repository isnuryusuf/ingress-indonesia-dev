package com.google.a.c;

import com.google.a.a.an;
import java.util.Map.Entry;

final class iq<K, V> extends dx<K, V>
{
  private final transient it<K> a;
  private final transient dc<V> b;

  iq(it<K> paramit, dc<V> paramdc)
  {
    this.a = paramit;
    this.b = paramdc;
  }

  private iq(it<K> paramit, dc<V> paramdc, dx<K, V> paramdx)
  {
    super(paramdx);
    this.a = paramit;
    this.b = paramdc;
  }

  private dx<K, V> a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size()))
      return this;
    if (paramInt1 == paramInt2)
      return a(comparator());
    return a(this.a.a(paramInt1, paramInt2), this.b.a(paramInt1, paramInt2));
  }

  public final dx<K, V> a(K paramK, boolean paramBoolean)
  {
    return a(0, this.a.e(an.a(paramK), paramBoolean));
  }

  public final dz<K> a()
  {
    return this.a;
  }

  public final dx<K, V> b(K paramK, boolean paramBoolean)
  {
    return a(this.a.f(an.a(paramK), paramBoolean), size());
  }

  final du<Map.Entry<K, V>> d()
  {
    return new ir(this, (byte)0);
  }

  public final ct<V> d_()
  {
    return this.b;
  }

  public final V get(Object paramObject)
  {
    int i = this.a.a(paramObject);
    if (i == -1)
      return null;
    return this.b.get(i);
  }

  final dx<K, V> h()
  {
    return new iq((it)this.a.b_(), this.b.g(), this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.iq
 * JD-Core Version:    0.6.2
 */
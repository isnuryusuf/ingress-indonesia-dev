package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;

final class cg extends y<V, K>
{
  bz<K, V> a;

  cg(bz<K, V> parambz)
  {
    Object localObject;
    this.a = localObject;
  }

  public final V getKey()
  {
    return this.a.c;
  }

  public final K getValue()
  {
    return this.a.a;
  }

  public final K setValue(K paramK)
  {
    Object localObject = this.a.a;
    int i = by.a(paramK);
    if ((i == this.a.b) && (ag.a(paramK, localObject)))
      return paramK;
    if (by.a(this.b.a.a.a, paramK, i) == null);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "value already present: %s", new Object[] { paramK });
      by.a(this.b.a.a.a, this.a);
      bz localbz = new bz(paramK, i, this.a.c, this.a.d);
      by.b(this.b.a.a.a, localbz);
      this.b.e = by.a(this.b.a.a.a);
      return localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cg
 * JD-Core Version:    0.6.2
 */
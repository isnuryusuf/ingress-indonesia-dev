package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;

final class cc extends y<K, V>
{
  bz<K, V> a;

  cc(bz<K, V> parambz)
  {
    Object localObject;
    this.a = localObject;
  }

  public final K getKey()
  {
    return this.a.a;
  }

  public final V getValue()
  {
    return this.a.c;
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.a.c;
    int i = by.a(paramV);
    if ((i == this.a.d) && (ag.a(paramV, localObject)))
      return paramV;
    if (by.b(this.b.a.a, paramV, i) == null);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "value already present: %s", new Object[] { paramV });
      by.a(this.b.a.a, this.a);
      bz localbz = new bz(this.a.a, this.a.b, paramV, i);
      by.b(this.b.a.a, localbz);
      this.b.e = by.a(this.b.a.a);
      if (this.b.d == this.a)
        this.b.d = localbz;
      this.a = localbz;
      return localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cc
 * JD-Core Version:    0.6.2
 */
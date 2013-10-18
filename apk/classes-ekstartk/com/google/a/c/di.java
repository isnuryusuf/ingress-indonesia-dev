package com.google.a.c;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class di<K, V>
{
  dk<K, V>[] a = new dk[4];
  int b = 0;

  public di()
  {
    this((byte)0);
  }

  private di(byte paramByte)
  {
  }

  private void a(int paramInt)
  {
    if (paramInt > this.a.length)
      this.a = ((dk[])ig.b(this.a, cv.a(this.a.length, paramInt)));
  }

  public final dh<K, V> a()
  {
    switch (this.b)
    {
    default:
      return new il(this.b, this.a);
    case 0:
      return dh.i();
    case 1:
    }
    return dh.b(this.a[0].getKey(), this.a[0].getValue());
  }

  public final di<K, V> a(K paramK, V paramV)
  {
    a(1 + this.b);
    dk localdk = dh.c(paramK, paramV);
    dk[] arrayOfdk = this.a;
    int i = this.b;
    this.b = (i + 1);
    arrayOfdk[i] = localdk;
    return this;
  }

  public final di<K, V> a(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    a(paramEntry.getKey(), paramEntry.getValue());
    return this;
  }

  public final di<K, V> a(Map<? extends K, ? extends V> paramMap)
  {
    a(this.b + paramMap.size());
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
      a((Map.Entry)localIterator.next());
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.di
 * JD-Core Version:    0.6.2
 */
package com.google.a.b;

import com.google.a.a.an;
import com.google.a.a.bw;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;

abstract class ah<T>
  implements Iterator<T>
{
  int b;
  int c;
  aq<K, V> d;
  AtomicReferenceArray<ap<K, V>> e;
  ap<K, V> f;
  o<K, V>.bq g;
  o<K, V>.bq h;

  ah(o paramo)
  {
    this.b = (-1 + paramo.e.length);
    this.c = -1;
    b();
  }

  private boolean a(ap<K, V> paramap)
  {
    try
    {
      long l = this.i.r.a();
      Object localObject2 = paramap.d();
      Object localObject3 = this.i.a(paramap, l);
      if (localObject3 != null)
      {
        this.g = new bq(this.i, localObject2, localObject3);
        return true;
      }
      return false;
    }
    finally
    {
      this.d.b();
    }
  }

  private void b()
  {
    this.g = null;
    if (c());
    do
    {
      do
      {
        do
        {
          return;
          continue;
          while (d());
        }
        while (this.b < 0);
        aq[] arrayOfaq = this.i.e;
        int j = this.b;
        this.b = (j - 1);
        this.d = arrayOfaq[j];
      }
      while (this.d.b == 0);
      this.e = this.d.f;
      this.c = (-1 + this.e.length());
    }
    while (!d());
  }

  private boolean c()
  {
    if (this.f != null)
      for (this.f = this.f.b(); this.f != null; this.f = this.f.b())
        if (a(this.f))
          return true;
    return false;
  }

  private boolean d()
  {
    while (this.c >= 0)
    {
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int j = this.c;
      this.c = (j - 1);
      ap localap = (ap)localAtomicReferenceArray.get(j);
      this.f = localap;
      if ((localap != null) && ((a(this.f)) || (c())))
        return true;
    }
    return false;
  }

  final o<K, V>.bq a()
  {
    if (this.g == null)
      throw new NoSuchElementException();
    this.h = this.g;
    b();
    return this.h;
  }

  public boolean hasNext()
  {
    return this.g != null;
  }

  public void remove()
  {
    if (this.h != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.i.remove(this.h.getKey());
      this.h = null;
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ah
 * JD-Core Version:    0.6.2
 */
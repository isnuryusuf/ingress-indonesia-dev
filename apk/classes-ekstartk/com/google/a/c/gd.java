package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;

abstract class gd<E>
  implements Iterator<E>
{
  int b;
  int c;
  gi<K, V> d;
  AtomicReferenceArray<gh<K, V>> e;
  gh<K, V> f;
  fi<K, V>.hb g;
  fi<K, V>.hb h;

  gd(fi paramfi)
  {
    this.b = (-1 + paramfi.c.length);
    this.c = -1;
    b();
  }

  private boolean a(gh<K, V> paramgh)
  {
    try
    {
      Object localObject2 = paramgh.d();
      Object localObject3 = this.i.b(paramgh);
      if (localObject3 != null)
      {
        this.g = new hb(this.i, localObject2, localObject3);
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
        gi[] arrayOfgi = this.i.c;
        int j = this.b;
        this.b = (j - 1);
        this.d = arrayOfgi[j];
      }
      while (this.d.b == 0);
      this.e = this.d.e;
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
      gh localgh = (gh)localAtomicReferenceArray.get(j);
      this.f = localgh;
      if ((localgh != null) && ((a(this.f)) || (c())))
        return true;
    }
    return false;
  }

  final fi<K, V>.hb a()
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
 * Qualified Name:     com.google.a.c.gd
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import com.google.a.a.an;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class cj<T>
  implements Iterator<T>
{
  int b = 0;
  bz<K, V> c = null;
  bz<K, V> d = null;
  int e = by.a(this.f);

  cj(by paramby)
  {
  }

  private void a()
  {
    if (by.a(this.f) != this.e)
      throw new ConcurrentModificationException();
  }

  abstract T a(bz<K, V> parambz);

  public boolean hasNext()
  {
    a();
    if (this.c != null)
      return true;
    do
    {
      this.b = (1 + this.b);
      if (this.b >= by.b(this.f).length)
        break;
    }
    while (by.b(this.f)[this.b] == null);
    bz[] arrayOfbz = by.b(this.f);
    int i = this.b;
    this.b = (i + 1);
    this.c = arrayOfbz[i];
    return true;
    return false;
  }

  public T next()
  {
    a();
    if (!hasNext())
      throw new NoSuchElementException();
    bz localbz = this.c;
    this.c = localbz.e;
    this.d = localbz;
    return a(localbz);
  }

  public void remove()
  {
    a();
    if (this.d != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Only one remove() call allowed per call to next");
      by.a(this.f, this.d);
      this.e = by.a(this.f);
      this.d = null;
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cj
 * JD-Core Version:    0.6.2
 */
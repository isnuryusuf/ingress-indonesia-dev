package com.google.a.c;

import com.google.a.a.an;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

final class hr
  implements Iterator<E>
{
  private int b = -1;
  private int c = hn.c(this.a);
  private Queue<E> d;
  private List<E> e;
  private E f;
  private boolean g;

  private hr(hn paramhn)
  {
  }

  private int a(int paramInt)
  {
    if (this.e != null)
      if (paramInt < this.a.size())
      {
        List localList = this.e;
        Object localObject = this.a.a(paramInt);
        Iterator localIterator = localList.iterator();
        do
          if (!localIterator.hasNext())
            break;
        while (localIterator.next() != localObject);
        for (int i = 1; ; i = 0)
        {
          if (i == 0)
            break label81;
          paramInt++;
          break;
        }
      }
    label81: return paramInt;
  }

  private void a()
  {
    if (hn.c(this.a) != this.c)
      throw new ConcurrentModificationException();
  }

  private boolean a(Object paramObject)
  {
    for (int i = 0; ; i++)
    {
      int j = hn.b(this.a);
      boolean bool = false;
      if (i < j)
      {
        if (hn.a(this.a)[i] == paramObject)
        {
          this.a.b(i);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  public final boolean hasNext()
  {
    a();
    return (a(1 + this.b) < this.a.size()) || ((this.d != null) && (!this.d.isEmpty()));
  }

  public final E next()
  {
    a();
    int i = a(1 + this.b);
    if (i < this.a.size())
    {
      this.b = i;
      this.g = true;
      return this.a.a(this.b);
    }
    if (this.d != null)
    {
      this.b = this.a.size();
      this.f = this.d.poll();
      if (this.f != null)
      {
        this.g = true;
        return this.f;
      }
    }
    throw new NoSuchElementException("iterator moved past last element in queue.");
  }

  public final void remove()
  {
    an.b(this.g, "no calls to remove() since the last call to next()");
    a();
    this.g = false;
    this.c = (1 + this.c);
    if (this.b < this.a.size())
    {
      hq localhq = this.a.b(this.b);
      if (localhq != null)
      {
        if (this.d == null)
        {
          this.d = new ArrayDeque();
          this.e = new ArrayList(3);
        }
        this.d.add(localhq.a);
        this.e.add(localhq.b);
      }
      this.b = (-1 + this.b);
      return;
    }
    an.b(a(this.f));
    this.f = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hr
 * JD-Core Version:    0.6.2
 */
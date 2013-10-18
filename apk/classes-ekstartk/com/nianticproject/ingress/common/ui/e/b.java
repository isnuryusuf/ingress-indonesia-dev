package com.nianticproject.ingress.common.ui.e;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.j.ao;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.ex;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import java.util.Formatter;
import java.util.Iterator;
import java.util.LinkedList;

public final class b extends com.nianticproject.ingress.common.ui.d.c
{
  private LinkedList<a> a;
  private final ao b;
  private a c = null;
  private c d = new c();
  private as e;
  private GameState f;

  public b(ao paramao, a parama)
  {
    this.b = paramao;
    this.a = eq.b();
    this.a.add(parama);
    d(parama);
  }

  private void d(a parama)
  {
    this.c = parama;
    a(this.c);
    this.b.l();
    this.e = new as(this.b);
    this.c.a(this.e);
    if (this.c == parama)
      this.d.a(this.c.a());
  }

  private void e()
  {
    if (this.a.peek() != this.c)
    {
      if (this.c != null)
      {
        a locala = this.c;
        as localas = this.e;
        this.c = null;
        this.e = null;
        this.d.a();
        locala.b();
        localas.l();
      }
      if (this.c == null)
        d((a)this.a.peek());
    }
  }

  public final void a(float paramFloat)
  {
    int i = 1;
    if (!this.c.a(paramFloat))
      if (this.a.size() <= i)
        break label38;
    while (true)
    {
      an.b(i, "Top mode died.");
      a();
      return;
      label38: int j = 0;
    }
  }

  public final void a(GameState paramGameState)
  {
    this.f = paramGameState;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((a)localIterator.next()).a(paramGameState);
  }

  public final boolean a()
  {
    if (this.a.size() > 1);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
      {
        a locala = (a)this.a.poll();
        e();
        locala.dispose();
      }
      return bool;
    }
  }

  public final boolean a(ej paramej)
  {
    return this.c.a(paramej);
  }

  public final boolean a(bt parambt)
  {
    return this.c.a(parambt);
  }

  public final boolean a(a parama)
  {
    return parama == this.a.peek();
  }

  public final void b()
  {
    if (d());
    while (true)
    {
      return;
      a locala = (a)this.a.pollLast();
      LinkedList localLinkedList = this.a;
      this.a = eq.b(new a[] { locala });
      e();
      Iterator localIterator = localLinkedList.iterator();
      while (localIterator.hasNext())
        ((a)localIterator.next()).dispose();
    }
  }

  public final void b(a parama)
  {
    if (this.f != null)
      parama.a(this.f);
    this.a.addFirst(parama);
    e();
  }

  public final a c(a parama)
  {
    a locala = (a)this.a.poll();
    b(parama);
    return locala;
  }

  public final void c()
  {
    if (this.f == null);
    while (true)
    {
      return;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        ((a)localIterator.next()).a(this.f);
    }
  }

  public final boolean d()
  {
    return this.a.size() == 1;
  }

  public final String toString()
  {
    Formatter localFormatter = new Formatter();
    try
    {
      Iterator localIterator = this.a.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (i != 0)
          localFormatter.format(", ", new Object[0]);
        Class localClass = locala.getClass();
        if (localClass.equals(ex.class))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = ((ex)locala).c().getClass().getSimpleName();
          localFormatter.format("ModeWrapper->%s", arrayOfObject2);
          i = 1;
        }
        else
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = localClass.getSimpleName();
          localFormatter.format("%s", arrayOfObject1);
          i = 1;
        }
      }
      String str = localFormatter.toString();
      return str;
    }
    finally
    {
      localFormatter.close();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.e.b
 * JD-Core Version:    0.6.2
 */
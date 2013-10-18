package com.google.a.c;

import java.util.Iterator;

public class dv<E> extends cu<E>
{
  public dv()
  {
    this((byte)0);
  }

  private dv(byte paramByte)
  {
  }

  public du<E> a()
  {
    du localdu = du.a(this.b, this.a);
    this.b = localdu.size();
    return localdu;
  }

  public dv<E> b(Iterable<? extends E> paramIterable)
  {
    super.a(paramIterable);
    return this;
  }

  public dv<E> b(Iterator<? extends E> paramIterator)
  {
    super.a(paramIterator);
    return this;
  }

  public dv<E> b(E[] paramArrayOfE)
  {
    super.a(paramArrayOfE);
    return this;
  }

  public dv<E> c(E paramE)
  {
    super.a(paramE);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dv
 * JD-Core Version:    0.6.2
 */
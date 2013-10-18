package com.google.a.c;

import com.google.a.a.an;
import java.util.Collection;

abstract class cu<E> extends cv<E>
{
  Object[] a;
  int b;

  cu()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(4);
    an.a(true, "capacity must be >= 0 but was %s", arrayOfObject);
    this.a = new Object[4];
    this.b = 0;
  }

  private void a(int paramInt)
  {
    if (this.a.length < paramInt)
      this.a = ig.b(this.a, a(this.a.length, paramInt));
  }

  public cu<E> a(E paramE)
  {
    an.a(paramE);
    a(1 + this.b);
    Object[] arrayOfObject = this.a;
    int i = this.b;
    this.b = (i + 1);
    arrayOfObject[i] = paramE;
    return this;
  }

  public cv<E> a(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      a(this.b + localCollection.size());
    }
    super.a(paramIterable);
    return this;
  }

  public cv<E> a(E[] paramArrayOfE)
  {
    ig.a(paramArrayOfE);
    a(this.b + paramArrayOfE.length);
    System.arraycopy(paramArrayOfE, 0, this.a, this.b, paramArrayOfE.length);
    this.b += paramArrayOfE.length;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cu
 * JD-Core Version:    0.6.2
 */
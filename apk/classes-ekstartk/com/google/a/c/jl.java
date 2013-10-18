package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;
import java.util.Set;

final class jl<E> extends du<E>
{
  final transient E a;
  private transient int b;

  jl(E paramE)
  {
    this.a = an.a(paramE);
  }

  jl(E paramE, int paramInt)
  {
    this.a = paramE;
    this.b = paramInt;
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = this.a;
    return paramInt + 1;
  }

  public final lj<E> b()
  {
    return eg.a(this.a);
  }

  final boolean c_()
  {
    return this.b != 0;
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.equals(paramObject);
  }

  final boolean e()
  {
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Set localSet;
    do
    {
      return true;
      if (!(paramObject instanceof Set))
        break;
      localSet = (Set)paramObject;
    }
    while ((localSet.size() == 1) && (this.a.equals(localSet.iterator().next())));
    return false;
    return false;
  }

  public final int hashCode()
  {
    int i = this.b;
    if (i == 0)
    {
      i = this.a.hashCode();
      this.b = i;
    }
    return i;
  }

  public final boolean isEmpty()
  {
    return false;
  }

  public final int size()
  {
    return 1;
  }

  public final String toString()
  {
    String str = this.a.toString();
    return 2 + str.length() + '[' + str + ']';
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jl
 * JD-Core Version:    0.6.2
 */
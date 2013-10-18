package com.google.a.a;

import java.io.Serializable;
import java.util.Arrays;

final class bu<T>
  implements bs<T>, Serializable
{
  final T a;

  bu(T paramT)
  {
    this.a = paramT;
  }

  public final T a()
  {
    return this.a;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof bu))
    {
      bu localbu = (bu)paramObject;
      return ag.a(this.a, localbu.a);
    }
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return "Suppliers.ofInstance(" + this.a + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bu
 * JD-Core Version:    0.6.2
 */
package com.google.a.a;

import java.io.Serializable;

final class as<T>
  implements ao<T>, Serializable
{
  private final T a;

  private as(T paramT)
  {
    this.a = paramT;
  }

  public final boolean a(T paramT)
  {
    return this.a.equals(paramT);
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof as))
    {
      as localas = (as)paramObject;
      return this.a.equals(localas.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final String toString()
  {
    return "IsEqualTo(" + this.a + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.as
 * JD-Core Version:    0.6.2
 */
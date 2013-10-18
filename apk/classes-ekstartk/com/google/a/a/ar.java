package com.google.a.a;

import java.io.Serializable;
import java.util.Collection;

final class ar<T>
  implements ao<T>, Serializable
{
  private final Collection<?> a;

  private ar(Collection<?> paramCollection)
  {
    this.a = ((Collection)an.a(paramCollection));
  }

  public final boolean a(T paramT)
  {
    try
    {
      boolean bool = this.a.contains(paramT);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ar))
    {
      ar localar = (ar)paramObject;
      return this.a.equals(localar.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final String toString()
  {
    return "In(" + this.a + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ar
 * JD-Core Version:    0.6.2
 */
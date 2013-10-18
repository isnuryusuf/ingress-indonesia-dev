package com.google.a.a;

import java.io.Serializable;

final class at<T>
  implements ao<T>, Serializable
{
  final ao<T> a;

  at(ao<T> paramao)
  {
    this.a = ((ao)an.a(paramao));
  }

  public final boolean a(T paramT)
  {
    return !this.a.a(paramT);
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof at))
    {
      at localat = (at)paramObject;
      return this.a.equals(localat.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return 0xFFFFFFFF ^ this.a.hashCode();
  }

  public final String toString()
  {
    return "Not(" + this.a.toString() + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.at
 * JD-Core Version:    0.6.2
 */
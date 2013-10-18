package com.google.a.a;

import java.io.Serializable;
import java.util.List;

final class aq<T>
  implements ao<T>, Serializable
{
  private final List<? extends ao<? super T>> a;

  private aq(List<? extends ao<? super T>> paramList)
  {
    this.a = paramList;
  }

  public final boolean a(T paramT)
  {
    for (int i = 0; i < this.a.size(); i++)
      if (!((ao)this.a.get(i)).a(paramT))
        return false;
    return true;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aq))
    {
      aq localaq = (aq)paramObject;
      return this.a.equals(localaq.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return 306654252 + this.a.hashCode();
  }

  public final String toString()
  {
    return "And(" + ap.a().a(this.a) + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.aq
 * JD-Core Version:    0.6.2
 */
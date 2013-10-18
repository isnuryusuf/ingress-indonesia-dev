package com.google.a.c;

import com.google.a.a.an;
import java.io.Serializable;
import java.util.Comparator;

final class au<T> extends ih<T>
  implements Serializable
{
  final Comparator<T> a;

  au(Comparator<T> paramComparator)
  {
    this.a = ((Comparator)an.a(paramComparator));
  }

  public final int compare(T paramT1, T paramT2)
  {
    return this.a.compare(paramT1, paramT2);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof au))
    {
      au localau = (au)paramObject;
      return this.a.equals(localau.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final String toString()
  {
    return this.a.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.au
 * JD-Core Version:    0.6.2
 */
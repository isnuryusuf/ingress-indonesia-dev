package com.google.a.c;

import com.google.a.a.an;
import java.io.Serializable;

final class ja<T> extends ih<T>
  implements Serializable
{
  final ih<? super T> a;

  ja(ih<? super T> paramih)
  {
    this.a = ((ih)an.a(paramih));
  }

  public final <S extends T> ih<S> a()
  {
    return this.a;
  }

  public final int compare(T paramT1, T paramT2)
  {
    return this.a.compare(paramT2, paramT1);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof ja))
    {
      ja localja = (ja)paramObject;
      return this.a.equals(localja.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return -this.a.hashCode();
  }

  public final String toString()
  {
    return this.a + ".reverse()";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ja
 * JD-Core Version:    0.6.2
 */
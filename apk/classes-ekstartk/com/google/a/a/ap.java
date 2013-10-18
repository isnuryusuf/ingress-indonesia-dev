package com.google.a.a;

import java.util.Arrays;
import java.util.Collection;

public final class ap
{
  private static final ab a = ab.a(",");

  public static <T> ao<T> a(ao<T> paramao)
  {
    return new at(paramao);
  }

  public static <T> ao<T> a(ao<? super T> paramao1, ao<? super T> paramao2)
  {
    return new aq(Arrays.asList(new ao[] { (ao)an.a(paramao1), (ao)an.a(paramao2) }), (byte)0);
  }

  public static <T> ao<T> a(T paramT)
  {
    if (paramT == null)
      return au.c.a();
    return new as(paramT, (byte)0);
  }

  public static <T> ao<T> a(Collection<? extends T> paramCollection)
  {
    return new ar(paramCollection, (byte)0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ap
 * JD-Core Version:    0.6.2
 */
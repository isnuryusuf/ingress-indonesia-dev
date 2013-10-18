package com.google.a.c;

import com.google.a.a.aa;
import java.util.Comparator;
import java.util.Map.Entry;

public abstract class ih<T>
  implements Comparator<T>
{
  public static <T> ih<T> a(Comparator<T> paramComparator)
  {
    if ((paramComparator instanceof ih))
      return (ih)paramComparator;
    return new au(paramComparator);
  }

  public static <C extends Comparable> ih<C> b()
  {
    return if.a;
  }

  public <S extends T> ih<S> a()
  {
    return new ja(this);
  }

  public final <F> ih<F> a(aa<F, ? extends T> paramaa)
  {
    return new aq(paramaa, this);
  }

  final <T2 extends T> ih<Map.Entry<T2, ?>> c()
  {
    return a(hc.a());
  }

  public abstract int compare(T paramT1, T paramT2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ih
 * JD-Core Version:    0.6.2
 */
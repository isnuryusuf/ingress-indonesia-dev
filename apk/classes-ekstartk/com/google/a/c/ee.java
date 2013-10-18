package com.google.a.c;

import com.google.a.a.an;
import com.google.a.a.ao;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public final class ee
{
  public static <T> T a(Iterable<T> paramIterable)
  {
    return eg.d(paramIterable.iterator());
  }

  public static <T> boolean a(Iterable<T> paramIterable, ao<? super T> paramao)
  {
    if (((paramIterable instanceof RandomAccess)) && ((paramIterable instanceof List)))
      return a((List)paramIterable, (ao)an.a(paramao));
    return eg.a(paramIterable.iterator(), paramao);
  }

  public static <T> boolean a(Collection<T> paramCollection, Iterable<? extends T> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return paramCollection.addAll(as.a(paramIterable));
    return eg.a(paramCollection, ((Iterable)an.a(paramIterable)).iterator());
  }

  private static <T> boolean a(List<T> paramList, ao<? super T> paramao)
  {
    int i = 0;
    int j = 0;
    boolean bool;
    while (true)
      if (j < paramList.size())
      {
        Object localObject = paramList.get(j);
        if ((paramao.a(localObject)) || (j > i));
        try
        {
          paramList.set(i, localObject);
          i++;
          j++;
        }
        catch (UnsupportedOperationException localUnsupportedOperationException)
        {
          for (int k = -1 + paramList.size(); k > j; k--)
            if (paramao.a(paramList.get(k)))
              paramList.remove(k);
          for (int m = j - 1; m >= i; m--)
            paramList.remove(m);
          bool = true;
        }
      }
    do
    {
      return bool;
      paramList.subList(i, paramList.size()).clear();
      bool = false;
    }
    while (j == i);
    return true;
  }

  public static <T> T b(Iterable<? extends T> paramIterable)
  {
    return eg.e(paramIterable.iterator());
  }

  static <T> T b(Iterable<T> paramIterable, ao<? super T> paramao)
  {
    an.a(paramao);
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (paramao.a(localObject))
      {
        localIterator.remove();
        return localObject;
      }
    }
    return null;
  }

  public static <T> Iterable<T> c(Iterable<T> paramIterable, ao<? super T> paramao)
  {
    an.a(paramIterable);
    an.a(paramao);
    return new ef(paramIterable, paramao);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ee
 * JD-Core Version:    0.6.2
 */
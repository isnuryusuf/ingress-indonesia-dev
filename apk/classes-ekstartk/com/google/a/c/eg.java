package com.google.a.c;

import com.google.a.a.aa;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.a.ao;
import com.google.a.a.ap;
import java.util.Collection;
import java.util.Iterator;

public final class eg
{
  static final lk<Object> a = new eh();
  private static final Iterator<Object> b = new ek();

  public static <T> lj<T> a()
  {
    return a;
  }

  public static <T> lj<T> a(T paramT)
  {
    return new ej(paramT);
  }

  public static <T> lj<T> a(Iterator<T> paramIterator)
  {
    an.a(paramIterator);
    if ((paramIterator instanceof lj))
      return (lj)paramIterator;
    return new el(paramIterator);
  }

  public static <T> lj<T> a(T[] paramArrayOfT)
  {
    return a(paramArrayOfT, 0, paramArrayOfT.length, 0);
  }

  static <T> lk<T> a(T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      an.a(paramInt1, paramInt1 + paramInt2, paramArrayOfT.length);
      an.b(paramInt3, paramInt2);
      if (paramInt2 != 0)
        break;
      return a;
    }
    return new ei(paramInt2, paramInt3, paramArrayOfT, paramInt1);
  }

  public static <F, T> Iterator<T> a(Iterator<F> paramIterator, aa<? super F, ? extends T> paramaa)
  {
    an.a(paramaa);
    return new en(paramIterator, paramaa);
  }

  static void a(boolean paramBoolean)
  {
    an.b(paramBoolean, "no calls to next() since the last call to remove()");
  }

  public static <T> boolean a(Collection<T> paramCollection, Iterator<? extends T> paramIterator)
  {
    an.a(paramCollection);
    an.a(paramIterator);
    boolean bool = false;
    while (paramIterator.hasNext())
      bool |= paramCollection.add(paramIterator.next());
    return bool;
  }

  public static <T> boolean a(Iterator<T> paramIterator, ao<? super T> paramao)
  {
    an.a(paramao);
    boolean bool = false;
    while (paramIterator.hasNext())
      if (paramao.a(paramIterator.next()))
      {
        paramIterator.remove();
        bool = true;
      }
    return bool;
  }

  public static boolean a(Iterator<?> paramIterator, Object paramObject)
  {
    return c(paramIterator, ap.a(paramObject));
  }

  public static boolean a(Iterator<?> paramIterator, Collection<?> paramCollection)
  {
    return a(paramIterator, ap.a(paramCollection));
  }

  public static boolean a(Iterator<?> paramIterator1, Iterator<?> paramIterator2)
  {
    if (paramIterator1.hasNext())
      if (paramIterator2.hasNext());
    while (paramIterator2.hasNext())
    {
      return false;
      if (ag.a(paramIterator1.next(), paramIterator2.next()))
        break;
      return false;
    }
    return true;
  }

  public static int b(Iterator<?> paramIterator)
  {
    for (int i = 0; paramIterator.hasNext(); i++)
      paramIterator.next();
    return i;
  }

  public static <T> lj<T> b(Iterator<T> paramIterator, ao<? super T> paramao)
  {
    an.a(paramIterator);
    an.a(paramao);
    return new em(paramIterator, paramao);
  }

  static <T> Iterator<T> b()
  {
    return b;
  }

  public static boolean b(Iterator<?> paramIterator, Collection<?> paramCollection)
  {
    return a(paramIterator, ap.a(ap.a(paramCollection)));
  }

  public static String c(Iterator<?> paramIterator)
  {
    return ']';
  }

  public static <T> boolean c(Iterator<T> paramIterator, ao<? super T> paramao)
  {
    an.a(paramao, "predicate");
    int i = 0;
    if (paramIterator.hasNext())
      if (!paramao.a(paramIterator.next()));
    while (true)
    {
      boolean bool = false;
      if (i != -1)
        bool = true;
      return bool;
      i++;
      break;
      i = -1;
    }
  }

  public static <T> T d(Iterator<T> paramIterator)
  {
    Object localObject = paramIterator.next();
    if (!paramIterator.hasNext())
      return localObject;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("expected one element but was: <" + localObject);
    for (int i = 0; (i < 4) && (paramIterator.hasNext()); i++)
      localStringBuilder.append(", " + paramIterator.next());
    if (paramIterator.hasNext())
      localStringBuilder.append(", ...");
    localStringBuilder.append('>');
    throw new IllegalArgumentException(localStringBuilder.toString());
  }

  public static <T> boolean d(Iterator<T> paramIterator, ao<? super T> paramao)
  {
    an.a(paramao);
    while (paramIterator.hasNext())
      if (!paramao.a(paramIterator.next()))
        return false;
    return true;
  }

  public static <T> T e(Iterator<? extends T> paramIterator)
  {
    if (paramIterator.hasNext())
      return paramIterator.next();
    return null;
  }

  static void f(Iterator<?> paramIterator)
  {
    an.a(paramIterator);
    while (paramIterator.hasNext())
    {
      paramIterator.next();
      paramIterator.remove();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.eg
 * JD-Core Version:    0.6.2
 */
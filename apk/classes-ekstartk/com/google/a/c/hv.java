package com.google.a.c;

import com.google.a.a.an;
import com.google.a.h.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class hv
{
  private static final ih<hu<?>> a = new hw();

  static <E> int a(ht<E> paramht, E paramE, int paramInt)
  {
    a(paramInt, "count");
    int i = paramht.a(paramE);
    int j = paramInt - i;
    if (j > 0)
      paramht.a(paramE, j);
    while (j >= 0)
      return i;
    paramht.b(paramE, -j);
    return i;
  }

  public static <E> hu<E> a(E paramE, int paramInt)
  {
    return new ib(paramE, paramInt);
  }

  static <E> Iterator<E> a(ht<E> paramht)
  {
    return new ic(paramht, paramht.e_().iterator());
  }

  static void a(int paramInt, String paramString)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      an.a(bool, "%s cannot be negative: %s", arrayOfObject);
      return;
    }
  }

  static boolean a(ht<?> paramht, Object paramObject)
  {
    if (paramObject == paramht)
      return true;
    if ((paramObject instanceof ht))
    {
      ht localht = (ht)paramObject;
      if ((paramht.size() != localht.size()) || (paramht.e_().size() != localht.e_().size()))
        return false;
      Iterator localIterator = localht.e_().iterator();
      while (localIterator.hasNext())
      {
        hu localhu = (hu)localIterator.next();
        if (paramht.a(localhu.a()) != localhu.b())
          return false;
      }
      return true;
    }
    return false;
  }

  static <E> boolean a(ht<E> paramht, E paramE, int paramInt1, int paramInt2)
  {
    a(paramInt1, "oldCount");
    a(paramInt2, "newCount");
    if (paramht.a(paramE) == paramInt1)
    {
      paramht.c(paramE, paramInt2);
      return true;
    }
    return false;
  }

  static <E> boolean a(ht<E> paramht, Collection<? extends E> paramCollection)
  {
    if (paramCollection.isEmpty())
      return false;
    if ((paramCollection instanceof ht))
    {
      Iterator localIterator = ((ht)paramCollection).e_().iterator();
      while (localIterator.hasNext())
      {
        hu localhu = (hu)localIterator.next();
        paramht.a(localhu.a(), localhu.b());
      }
    }
    eg.a(paramht, paramCollection.iterator());
    return true;
  }

  static int b(ht<?> paramht)
  {
    Iterator localIterator = paramht.e_().iterator();
    for (long l = 0L; localIterator.hasNext(); l += ((hu)localIterator.next()).b());
    return a.a(l);
  }

  static boolean b(ht<?> paramht, Collection<?> paramCollection)
  {
    if ((paramCollection instanceof ht))
      paramCollection = ((ht)paramCollection).d();
    return paramht.d().removeAll(paramCollection);
  }

  static boolean c(ht<?> paramht, Collection<?> paramCollection)
  {
    an.a(paramCollection);
    if ((paramCollection instanceof ht))
      paramCollection = ((ht)paramCollection).d();
    return paramht.d().retainAll(paramCollection);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hv
 * JD-Core Version:    0.6.2
 */
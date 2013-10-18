package com.google.a.c;

import com.google.a.a.ab;
import com.google.a.a.an;
import com.google.a.a.ao;
import com.google.a.a.ap;
import java.util.Collection;

public final class as
{
  static final ab a = ab.a(", ").b("null");

  static StringBuilder a(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "size must be non-negative");
      return new StringBuilder((int)Math.min(8L * paramInt, 1073741824L));
    }
  }

  static <T> Collection<T> a(Iterable<T> paramIterable)
  {
    return (Collection)paramIterable;
  }

  static boolean a(Collection<?> paramCollection, Object paramObject)
  {
    an.a(paramCollection);
    try
    {
      boolean bool = paramCollection.contains(paramObject);
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

  static boolean a(Collection<?> paramCollection1, Collection<?> paramCollection2)
  {
    ao localao = ap.a(paramCollection1);
    return eg.d(paramCollection2.iterator(), localao);
  }

  static boolean b(Collection<?> paramCollection, Object paramObject)
  {
    an.a(paramCollection);
    try
    {
      boolean bool = paramCollection.remove(paramObject);
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.as
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import com.google.a.a.an;
import java.util.Comparator;
import java.util.SortedSet;

final class jo
{
  public static boolean a(Comparator<?> paramComparator, Iterable<?> paramIterable)
  {
    an.a(paramComparator);
    an.a(paramIterable);
    if ((paramIterable instanceof SortedSet))
    {
      localObject = ((SortedSet)paramIterable).comparator();
      if (localObject != null);
    }
    for (Object localObject = ih.b(); ; localObject = ((jn)paramIterable).comparator())
    {
      return paramComparator.equals(localObject);
      if (!(paramIterable instanceof jn))
        break;
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jo
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import com.google.a.a.an;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

public final class jp
{
  public static <E> int a(List<? extends E> paramList, E paramE, Comparator<? super E> paramComparator, ju paramju, jq paramjq)
  {
    an.a(paramComparator);
    an.a(paramList);
    an.a(paramju);
    an.a(paramjq);
    if (!(paramList instanceof RandomAccess))
      paramList = eq.a(paramList);
    int i = 0;
    int j = -1 + paramList.size();
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = paramComparator.compare(paramE, paramList.get(k));
      if (m < 0)
        j = k - 1;
      else if (m > 0)
        i = k + 1;
      else
        return i + paramju.a(paramComparator, paramE, paramList.subList(i, j + 1), k - i);
    }
    return paramjq.a(i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jp
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import java.util.Comparator;
import java.util.List;

 enum jw
{
  jw()
  {
    super(str, 1, (byte)0);
  }

  final <E> int a(Comparator<? super E> paramComparator, E paramE, List<? extends E> paramList, int paramInt)
  {
    int i = -1 + paramList.size();
    while (paramInt < i)
    {
      int j = 1 + (paramInt + i) >>> 1;
      if (paramComparator.compare(paramList.get(j), paramE) > 0)
        i = j - 1;
      else
        paramInt = j;
    }
    return paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jw
 * JD-Core Version:    0.6.2
 */
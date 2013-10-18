package com.google.a.c;

import java.util.Comparator;
import java.util.List;

 enum jx
{
  jx()
  {
    super(str, 2, (byte)0);
  }

  final <E> int a(Comparator<? super E> paramComparator, E paramE, List<? extends E> paramList, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = i + paramInt >>> 1;
      if (paramComparator.compare(paramList.get(j), paramE) < 0)
        i = j + 1;
      else
        paramInt = j;
    }
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jx
 * JD-Core Version:    0.6.2
 */
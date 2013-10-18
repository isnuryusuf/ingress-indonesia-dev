package com.nianticproject.ingress.gameentity.components.portal;

import java.util.Iterator;

public final class b
{
  public static int a(Iterable<Integer> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Integer)localIterator.next()).intValue();
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.b
 * JD-Core Version:    0.6.2
 */
package com.google.a.c;

import com.google.a.a.an;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

public final class ho<B>
{
  private final Comparator<B> a;
  private int b = -1;
  private int c = 2147483647;

  private ho(Comparator<B> paramComparator)
  {
    this.a = ((Comparator)an.a(paramComparator));
  }

  public final ho<B> a()
  {
    an.a(true);
    this.c = 64;
    return this;
  }

  public final <T extends B> hn<T> b()
  {
    Set localSet = Collections.emptySet();
    hn localhn = new hn(this, hn.a(this.b, this.c, localSet), (byte)0);
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
      localhn.offer(localIterator.next());
    return localhn;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ho
 * JD-Core Version:    0.6.2
 */
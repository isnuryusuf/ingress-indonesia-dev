package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;

final class w
  implements am<T>
{
  w(v paramv)
  {
  }

  public final void a(T paramT)
  {
    v.a(this.a, paramT);
    Iterator localIterator = v.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      ad localad = (ad)localIterator.next();
      v.b(this.a);
      localad.b();
    }
    v.a(this.a).clear();
    v.c(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.w
 * JD-Core Version:    0.6.2
 */
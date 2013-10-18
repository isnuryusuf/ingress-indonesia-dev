package com.nianticproject.ingress.n;

import java.util.Iterator;
import java.util.Set;

final class ac
  implements Runnable
{
  ac(ab paramab, ae paramae)
  {
  }

  public final void run()
  {
    Iterator localIterator = ab.a(this.b).iterator();
    while (localIterator.hasNext())
      ((ad)localIterator.next()).a(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.ac
 * JD-Core Version:    0.6.2
 */
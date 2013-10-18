package com.nianticproject.ingress;

import com.nianticproject.ingress.common.c;
import com.nianticproject.ingress.ui.o;
import java.util.HashSet;
import java.util.Iterator;

final class u
  implements o
{
  u(AndroidComm paramAndroidComm)
  {
  }

  public final void a()
  {
    AndroidComm.a(this.a);
    Iterator localIterator = AndroidComm.i(this.a).iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.u
 * JD-Core Version:    0.6.2
 */
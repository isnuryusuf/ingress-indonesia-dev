package com.nianticproject.ingress;

import com.nianticproject.ingress.common.c;
import com.nianticproject.ingress.ui.n;
import java.util.HashSet;
import java.util.Iterator;

final class s
  implements n
{
  s(AndroidComm paramAndroidComm)
  {
  }

  public final void a()
  {
    AndroidComm.a(this.a);
    Iterator localIterator = AndroidComm.i(this.a).iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.s
 * JD-Core Version:    0.6.2
 */
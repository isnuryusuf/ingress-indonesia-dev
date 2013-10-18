package com.nianticproject.ingress.common.scanner.a;

import com.nianticproject.ingress.common.q.c;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

final class ab extends WeakReference<ac>
{
  final c a;

  ab(ac paramac, ReferenceQueue<ac> paramReferenceQueue)
  {
    super(paramReferenceQueue, localReferenceQueue);
    this.a = ac.a(paramReferenceQueue);
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ab)) && (this.a.equals(((ab)paramObject).a));
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.ab
 * JD-Core Version:    0.6.2
 */
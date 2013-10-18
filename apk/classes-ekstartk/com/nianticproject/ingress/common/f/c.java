package com.nianticproject.ingress.common.f;

import com.nianticproject.ingress.shared.aj;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

final class c
  implements Callable<Result>
{
  c(a parama)
  {
  }

  public final Result call()
  {
    a.a(this.a).set(true);
    try
    {
      aj.a("AbstractBackgroundTask.", a.b(this.a));
      if (a.f())
      {
        a.g().remove(this.a);
        a.h().add(this.a);
      }
      Object localObject2 = a.a(this.a, this.a.a());
      return localObject2;
    }
    finally
    {
      aj.b();
      if (a.f())
        a.h().remove(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.c
 * JD-Core Version:    0.6.2
 */
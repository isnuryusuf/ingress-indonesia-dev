package com.nianticproject.ingress.common;

import com.nianticproject.ingress.common.model.d;
import com.nianticproject.ingress.shared.aj;
import java.util.concurrent.atomic.AtomicBoolean;

final class j extends com.nianticproject.ingress.common.f.h
{
  j(h paramh, ad paramad, long paramLong)
  {
  }

  private Void j()
  {
    try
    {
      aj.a("GlobCollectionTask");
      k localk = new k(this, "updateVacuumedGlobs");
      h.e(this.c).a(this.a, this.b, localk);
      h.f(this.c).set(false);
      return null;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j
 * JD-Core Version:    0.6.2
 */
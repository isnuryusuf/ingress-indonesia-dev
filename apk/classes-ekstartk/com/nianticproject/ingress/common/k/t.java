package com.nianticproject.ingress.common.k;

import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.shared.aj;

final class t extends n
{
  t(s params)
  {
  }

  public final String a()
  {
    return "Space2Face:changeListener";
  }

  public final void a(ad paramad)
  {
    try
    {
      aj.a("Space2Face.onLocationChanged");
      s.a(this.a, (float)paramad.a().c(), (float)paramad.a().f());
      s.b(this.a).b(s.a(this.a));
      s.c(this.a);
      this.a.a("Location Acquired.");
      s.f(this.a).a(s.d(this.a), s.e(this.a));
      s.f(this.a).b();
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.t
 * JD-Core Version:    0.6.2
 */
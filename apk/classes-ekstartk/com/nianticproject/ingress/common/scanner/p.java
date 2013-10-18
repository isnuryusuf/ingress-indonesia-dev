package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.f;

final class p extends n
{
  p(k paramk)
  {
  }

  public final String a()
  {
    return "Scanner:playerChangeListener";
  }

  public final void a(ad paramad)
  {
    try
    {
      aj.a("Scanner.onLocationChanged");
      k localk = this.a;
      if (paramad.c() > 1000.0F);
      for (boolean bool = true; ; bool = false)
      {
        k.a(localk, bool);
        if (!k.c(this.a))
          k.d(this.a).a();
        k.e(this.a);
        if (k.f(this.a))
          k.a(this.a, paramad.a());
        return;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(f paramf1, f paramf2)
  {
    k localk = this.a;
    if (paramf2 == f.b);
    for (boolean bool = true; ; bool = false)
    {
      k.b(localk, bool);
      k.e(this.a);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.p
 * JD-Core Version:    0.6.2
 */
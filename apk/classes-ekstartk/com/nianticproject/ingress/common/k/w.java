package com.nianticproject.ingress.common.k;

import com.google.a.a.an;
import com.nianticproject.ingress.common.ae;
import com.nianticproject.ingress.common.af;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.aj;

public final class w
  implements ae
{
  private final boolean a = false;
  private final af b;
  private final f c = new x(this);

  public w(af paramaf)
  {
    this.b = ((af)an.a(paramaf));
  }

  public final void run()
  {
    try
    {
      aj.a("GlobeResourceLoader.CreateResourcesTask");
      c.a();
      i.a().a(this.c);
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.w
 * JD-Core Version:    0.6.2
 */
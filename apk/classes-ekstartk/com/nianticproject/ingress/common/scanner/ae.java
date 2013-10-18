package com.nianticproject.ingress.common.scanner;

import com.google.a.a.an;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.aj;

public final class ae
  implements com.nianticproject.ingress.common.ae
{
  private final boolean a = false;
  private final com.nianticproject.ingress.common.af b;
  private final f c = new af(this);

  public ae(com.nianticproject.ingress.common.af paramaf)
  {
    this.b = ((com.nianticproject.ingress.common.af)an.a(paramaf));
  }

  public final void run()
  {
    try
    {
      aj.a("Scanner.CreateResourcesTask");
      k.d(this.a);
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
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ae
 * JD-Core Version:    0.6.2
 */
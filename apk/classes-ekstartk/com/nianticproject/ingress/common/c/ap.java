package com.nianticproject.ingress.common.c;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.shared.aj;

final class ap extends n
{
  ap(ao paramao)
  {
  }

  public final String a()
  {
    return "ScannerAudio";
  }

  public final void a(ad paramad)
  {
    try
    {
      aj.a("ScannerAudio.onLocationChanged");
      ao.a(this.a, paramad);
      ao.d(this.a);
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.ap
 * JD-Core Version:    0.6.2
 */
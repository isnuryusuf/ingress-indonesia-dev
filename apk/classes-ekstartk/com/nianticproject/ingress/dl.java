package com.nianticproject.ingress;

import com.nianticproject.ingress.connectivity.a;
import com.nianticproject.ingress.n.s;
import com.nianticproject.ingress.service.NemesisService;

final class dl
  implements Runnable
{
  dl(dj paramdj)
  {
  }

  public final void run()
  {
    if (!dj.b(this.a))
    {
      NemesisService.a(dj.a(this.a));
      dj.c(this.a).a(dj.a(this.a));
      dj.a(this.a).m();
      dj.a(this.a, true);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dl
 * JD-Core Version:    0.6.2
 */
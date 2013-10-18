package com.nianticproject.ingress;

import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.n.a;
import com.nianticproject.ingress.shared.aj;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class co
  implements Callable<av>
{
  co(NemesisApplication paramNemesisApplication, FutureTask paramFutureTask)
  {
  }

  private av a()
  {
    try
    {
      aj.a("NemesisApplication.initUrlImageCache.call");
      av localav = new av((a)this.a.get(), NemesisApplication.c(this.b));
      return localav;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.co
 * JD-Core Version:    0.6.2
 */
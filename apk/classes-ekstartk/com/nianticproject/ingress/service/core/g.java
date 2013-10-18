package com.nianticproject.ingress.service.core;

import android.content.Intent;
import com.nianticproject.ingress.common.w.aa;

final class g
  implements Runnable
{
  g(c paramc, Intent paramIntent)
  {
  }

  public final void run()
  {
    try
    {
      c.c(this.b).b(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      c.b(this.b).b(localThrowable, "Unexpected Exception while processing Intent in thread pool");
      throw new IllegalStateException(localThrowable);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.g
 * JD-Core Version:    0.6.2
 */
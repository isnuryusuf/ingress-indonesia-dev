package com.nianticproject.ingress.service.core;

import android.content.Intent;
import com.nianticproject.ingress.common.w.aa;
import java.util.concurrent.LinkedBlockingQueue;

final class d
  implements Runnable
{
  d(c paramc)
  {
  }

  public final void run()
  {
    c.b(this.a);
    new Object[1][0] = Integer.valueOf(c.a(this.a).size());
    while (true)
    {
      Intent localIntent = (Intent)c.a(this.a).poll();
      if (localIntent != null)
        try
        {
          c.c(this.a).a(localIntent);
        }
        catch (Throwable localThrowable)
        {
          c.b(this.a).b(localThrowable, "Unexpected Exception while processing Intent");
          throw new IllegalStateException(localThrowable);
        }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.d
 * JD-Core Version:    0.6.2
 */
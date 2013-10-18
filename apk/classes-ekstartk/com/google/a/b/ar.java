package com.google.a.b;

import com.google.a.i.a.p;
import java.util.logging.Level;
import java.util.logging.Logger;

final class ar
  implements Runnable
{
  ar(aq paramaq, Object paramObject, int paramInt, ak paramak, p paramp)
  {
  }

  public final void run()
  {
    try
    {
      this.e.a(this.a, this.b, this.c, this.d);
      return;
    }
    catch (Throwable localThrowable)
    {
      o.a.log(Level.WARNING, "Exception thrown during refresh", localThrowable);
      this.c.a(localThrowable);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ar
 * JD-Core Version:    0.6.2
 */
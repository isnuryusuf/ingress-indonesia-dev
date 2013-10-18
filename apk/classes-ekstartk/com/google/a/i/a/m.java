package com.google.a.i.a;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

final class m
  implements Runnable
{
  m(l paraml, p paramp)
  {
  }

  public final void run()
  {
    try
    {
      this.b.a(x.a(this.a));
      return;
    }
    catch (CancellationException localCancellationException)
    {
      this.b.cancel(false);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      this.b.a(localExecutionException.getCause());
      return;
    }
    finally
    {
      l.a(this.b);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.m
 * JD-Core Version:    0.6.2
 */
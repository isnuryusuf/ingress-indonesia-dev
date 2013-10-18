package com.nianticproject.ingress.common.f;

import com.nianticproject.ingress.common.w.aa;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class d extends FutureTask<Result>
{
  d(a parama, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected final void done()
  {
    try
    {
      a.b(this.a, get());
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      a.i().b(localInterruptedException.getMessage());
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      a.i().b(localExecutionException.getCause(), "An ExecutionException occured while executing doInBackground()");
      return;
    }
    catch (CancellationException localCancellationException)
    {
      a.b(this.a, null);
      return;
    }
    finally
    {
      if (a.f())
        a.g().remove(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.d
 * JD-Core Version:    0.6.2
 */
package android.support.v4.a;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class j extends FutureTask<Result>
{
  j(g paramg, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected final void done()
  {
    try
    {
      Object localObject = get();
      g.b(this.a, localObject);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.w("AsyncTask", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      g.b(this.a, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.j
 * JD-Core Version:    0.6.2
 */
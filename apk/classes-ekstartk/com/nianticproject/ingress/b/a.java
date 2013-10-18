package com.nianticproject.ingress.b;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class a
  implements Executor
{
  private static final a a = new a();
  private static final Handler b = new Handler(Looper.getMainLooper());

  public static a a()
  {
    return a;
  }

  public final void execute(Runnable paramRunnable)
  {
    b.post(paramRunnable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.b.a
 * JD-Core Version:    0.6.2
 */
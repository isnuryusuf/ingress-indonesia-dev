package com.nianticproject.ingress.common.f;

import java.util.concurrent.Executor;

final class i
  implements Executor
{
  public final void execute(Runnable paramRunnable)
  {
    paramRunnable.run();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.i
 * JD-Core Version:    0.6.2
 */
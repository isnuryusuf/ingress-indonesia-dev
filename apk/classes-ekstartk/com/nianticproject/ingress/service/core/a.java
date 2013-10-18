package com.nianticproject.ingress.service.core;

import android.util.SparseArray;
import com.nianticproject.ingress.common.w.aa;

final class a
  implements Runnable
{
  a(CoreService paramCoreService)
  {
  }

  public final void run()
  {
    try
    {
      if (CoreService.a(this.a).size() == 0)
      {
        this.a.stopSelf();
        return;
      }
      new Object[1][0] = Integer.valueOf(CoreService.a(this.a).size());
      return;
    }
    catch (Throwable localThrowable)
    {
      this.a.a.b(localThrowable, "Unexpected Exception while stopping the service");
      throw new IllegalStateException(localThrowable);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.a
 * JD-Core Version:    0.6.2
 */
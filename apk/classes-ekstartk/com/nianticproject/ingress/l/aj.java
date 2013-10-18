package com.nianticproject.ingress.l;

import com.nianticproject.ingress.common.w.aa;

final class aj
  implements Thread.UncaughtExceptionHandler
{
  aj(ai paramai, String paramString)
  {
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    ai.b().b(paramThrowable, "Crash on SensorHandlerThread " + this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.aj
 * JD-Core Version:    0.6.2
 */
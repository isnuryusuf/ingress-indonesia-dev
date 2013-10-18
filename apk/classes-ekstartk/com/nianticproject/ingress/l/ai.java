package com.nianticproject.ingress.l;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.nianticproject.ingress.common.w.aa;

public class ai
{
  private static aa a = new aa(ai.class);
  private final HandlerThread b;
  private Handler c;

  public ai(String paramString)
  {
    this.b = new HandlerThread(paramString);
    this.b.setDaemon(true);
    this.b.start();
    this.b.setUncaughtExceptionHandler(new aj(this, paramString));
  }

  public final Handler a()
  {
    if (this.c != null)
      return this.c;
    Looper localLooper = this.b.getLooper();
    if (localLooper == null)
      return null;
    try
    {
      if (this.c == null)
        this.c = new Handler(localLooper);
      return this.c;
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.ai
 * JD-Core Version:    0.6.2
 */
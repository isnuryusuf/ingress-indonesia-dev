package com.google.android.gms.internal;

import java.util.ArrayList;

public abstract class fn<TListener>
{
  private TListener a;

  public fn(TListener paramTListener)
  {
    Object localObject1;
    this.a = localObject1;
    synchronized (fl.c(paramTListener))
    {
      fl.c(paramTListener).add(this);
      return;
    }
  }

  public void a()
  {
    try
    {
      this.a = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected abstract void a(TListener paramTListener);

  public final void b()
  {
    try
    {
      Object localObject2 = this.a;
      a(localObject2);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fn
 * JD-Core Version:    0.6.2
 */
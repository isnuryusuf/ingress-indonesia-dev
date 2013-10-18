package com.google.android.youtube.player.internal;

import java.util.ArrayList;

public abstract class as<TListener>
{
  private TListener b;

  public as(TListener paramTListener)
  {
    Object localObject1;
    this.b = localObject1;
    synchronized (ap.c(paramTListener))
    {
      ap.c(paramTListener).add(this);
      return;
    }
  }

  public final void a()
  {
    try
    {
      Object localObject2 = this.b;
      a(localObject2);
      return;
    }
    finally
    {
    }
  }

  protected abstract void a(TListener paramTListener);

  public final void b()
  {
    try
    {
      this.b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.as
 * JD-Core Version:    0.6.2
 */
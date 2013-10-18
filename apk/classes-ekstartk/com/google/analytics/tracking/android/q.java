package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;

public final class q
  implements bb
{
  private static final Object a = new Object();
  private static q m;
  private Context b;
  private h c;
  private volatile j d;
  private int e = 1800;
  private boolean f = true;
  private boolean g = true;
  private boolean h = true;
  private i i = new r(this);
  private Handler j;
  private p k;
  private boolean l = false;

  public static q a()
  {
    if (m == null)
      m = new q();
    return m;
  }

  final void a(Context paramContext, j paramj)
  {
    try
    {
      Context localContext = this.b;
      if (localContext != null);
      while (true)
      {
        return;
        this.b = paramContext.getApplicationContext();
        if (this.d == null)
        {
          this.d = paramj;
          if (this.f)
            paramj.a();
        }
      }
    }
    finally
    {
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      a(this.l, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    while (true)
    {
      try
      {
        if (this.l == paramBoolean1)
        {
          boolean bool = this.g;
          if (bool == paramBoolean2)
            return;
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (this.e > 0))
          this.j.removeMessages(1, a);
        if ((!paramBoolean1) && (paramBoolean2) && (this.e > 0))
          this.j.sendMessageDelayed(this.j.obtainMessage(1, a), 1000 * this.e);
        StringBuilder localStringBuilder = new StringBuilder("PowerSaveMode ");
        if (paramBoolean1)
          break label155;
        if (!paramBoolean2)
        {
          break label155;
          aq.d(str);
          this.l = paramBoolean1;
          this.g = paramBoolean2;
          continue;
        }
      }
      finally
      {
      }
      String str = "terminated.";
      continue;
      label155: str = "initiated.";
    }
  }

  final h b()
  {
    try
    {
      if (this.c != null)
        break label50;
      if (this.b == null)
        throw new IllegalStateException("Cant get a store unless we have a context");
    }
    finally
    {
    }
    this.c = new ax(this.i, this.b);
    label50: if (this.j == null)
    {
      this.j = new Handler(this.b.getMainLooper(), new s(this));
      if (this.e > 0)
        this.j.sendMessageDelayed(this.j.obtainMessage(1, a), 1000 * this.e);
    }
    if ((this.k == null) && (this.h))
    {
      this.k = new p(this);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      this.b.registerReceiver(this.k, localIntentFilter);
    }
    h localh = this.c;
    return localh;
  }

  public final void c()
  {
    try
    {
      if (this.d == null)
      {
        aq.f("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
        this.f = true;
      }
      while (true)
      {
        return;
        ah.a().a(ai.S);
        this.d.a();
      }
    }
    finally
    {
    }
  }

  public final void d()
  {
    try
    {
      if (this.j == null)
        aq.f("Need to call initialize() and be in fallback mode to start dispatch.");
      for (this.e = 0; ; this.e = 0)
      {
        return;
        ah.a().a(ai.T);
        if ((!this.l) && (this.g) && (this.e > 0))
          this.j.removeMessages(1, a);
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.q
 * JD-Core Version:    0.6.2
 */
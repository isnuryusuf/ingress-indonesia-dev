package com.nianticproject.ingress.service.core;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.SparseArray;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;

public abstract class CoreService extends Service
  implements h
{
  private static Integer d = Integer.valueOf(1);
  protected aa a;
  protected Handler b;
  private c c;
  private final SparseArray<Intent> e = new SparseArray();
  private final Runnable f = new a(this);

  protected static int a(Context paramContext, Intent paramIntent)
  {
    int i = b();
    paramIntent.putExtra("CoreService.request_id", i);
    paramContext.startService(paramIntent);
    return i;
  }

  private static int b()
  {
    synchronized (d)
    {
      Integer localInteger2 = d;
      d = Integer.valueOf(1 + d.intValue());
      int i = localInteger2.intValue();
      return i;
    }
  }

  protected abstract String a();

  protected abstract void c(Intent paramIntent);

  protected final void h(Intent paramIntent)
  {
    this.b.post(new b(this, paramIntent));
  }

  protected final void i(Intent paramIntent)
  {
    this.c.b(paramIntent);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.a = new aa(a());
    this.b = new Handler();
    if (this.c == null)
      this.c = new c(this, this.b, this.a);
    this.c.a();
  }

  public void onDestroy()
  {
    this.c.b();
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("CoreService.onStartCommand");
      new StringBuilder("onStartCommand(Intent, ").append(paramInt1).append(", ").append(paramInt2).append(")").toString();
      this.e.append(paramIntent.getIntExtra("CoreService.request_id", -1), paramIntent);
      new StringBuilder("Intent added to pending intents pool. There are now ").append(this.e.size()).append(" pending Intents").toString();
      this.c.a(paramIntent);
      return 2;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.CoreService
 * JD-Core Version:    0.6.2
 */
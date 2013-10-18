package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.youtube.player.a;
import java.util.ArrayList;

public abstract class ap<T extends IInterface>
  implements ay
{
  final Handler a;
  private final Context b;
  private T c;
  private ArrayList<az> d;
  private final ArrayList<az> e = new ArrayList();
  private boolean f = false;
  private ArrayList<ba> g;
  private boolean h = false;
  private final ArrayList<ap<T>.as<?>> i = new ArrayList();
  private ServiceConnection j;
  private boolean k = false;

  protected ap(Context paramContext, az paramaz, ba paramba)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
      throw new IllegalStateException("Clients must be created on the UI thread.");
    this.b = ((Context)c.a(paramContext));
    this.d = new ArrayList();
    this.d.add(c.a(paramaz));
    this.g = new ArrayList();
    this.g.add(c.a(paramba));
    this.a = new ar(this);
  }

  private static com.google.android.youtube.player.c b(String paramString)
  {
    try
    {
      com.google.android.youtube.player.c localc = com.google.android.youtube.player.c.valueOf(paramString);
      return localc;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return com.google.android.youtube.player.c.c;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return com.google.android.youtube.player.c.c;
  }

  protected abstract T a(IBinder paramIBinder);

  protected final void a(com.google.android.youtube.player.c paramc)
  {
    this.a.removeMessages(4);
    while (true)
    {
      int n;
      synchronized (this.g)
      {
        this.h = true;
        ArrayList localArrayList2 = this.g;
        int m = localArrayList2.size();
        n = 0;
        if (n < m)
        {
          if (!this.k)
            return;
          if (this.g.contains(localArrayList2.get(n)))
            ((ba)localArrayList2.get(n)).a(paramc);
        }
        else
        {
          this.h = false;
          return;
        }
      }
      n++;
    }
  }

  protected abstract void a(x paramx, ap<T>.au paramap);

  protected abstract String b();

  protected final void b(IBinder paramIBinder)
  {
    try
    {
      a(z.a(paramIBinder), new au(this));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("YouTubeClient", "service died");
    }
  }

  protected abstract String c();

  public void d()
  {
    h();
    this.k = false;
    synchronized (this.i)
    {
      int m = this.i.size();
      for (int n = 0; n < m; n++)
        ((as)this.i.get(n)).b();
      this.i.clear();
      this.c = null;
      if (this.j != null)
      {
        this.b.unbindService(this.j);
        this.j = null;
      }
      return;
    }
  }

  public final void e()
  {
    this.k = true;
    com.google.android.youtube.player.c localc = a.a(this.b);
    if (localc != com.google.android.youtube.player.c.a)
      this.a.sendMessage(this.a.obtainMessage(3, localc));
    Intent localIntent;
    do
    {
      return;
      localIntent = new Intent(c());
      if (this.j != null)
      {
        Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
        this.c = null;
        this.b.unbindService(this.j);
      }
      this.j = new av(this);
    }
    while (this.b.bindService(localIntent, this.j, 129));
    this.a.sendMessage(this.a.obtainMessage(3, com.google.android.youtube.player.c.h));
  }

  public final boolean f()
  {
    return this.c != null;
  }

  protected final void g()
  {
    boolean bool1 = true;
    while (true)
    {
      int n;
      synchronized (this.d)
      {
        if (this.f)
          break label157;
        bool2 = bool1;
        c.a(bool2);
        this.a.removeMessages(4);
        this.f = true;
        if (this.e.size() != 0)
          break label163;
        c.a(bool1);
        ArrayList localArrayList2 = this.d;
        int m = localArrayList2.size();
        n = 0;
        if ((n < m) && (this.k) && (f()))
        {
          this.e.size();
          if (!this.e.contains(localArrayList2.get(n)))
            ((az)localArrayList2.get(n)).a();
        }
        else
        {
          this.e.clear();
          this.f = false;
          return;
        }
      }
      n++;
      continue;
      label157: boolean bool2 = false;
      continue;
      label163: bool1 = false;
    }
  }

  protected final void h()
  {
    this.a.removeMessages(4);
    while (true)
    {
      int n;
      synchronized (this.d)
      {
        this.f = true;
        ArrayList localArrayList2 = this.d;
        int m = localArrayList2.size();
        n = 0;
        if ((n < m) && (this.k))
        {
          if (this.d.contains(localArrayList2.get(n)))
            ((az)localArrayList2.get(n)).b();
        }
        else
        {
          this.f = false;
          return;
        }
      }
      n++;
    }
  }

  protected final void i()
  {
    if (!f())
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
  }

  protected final T j()
  {
    i();
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.ap
 * JD-Core Version:    0.6.2
 */
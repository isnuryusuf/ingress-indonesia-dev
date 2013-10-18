package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.a;
import com.google.android.gms.common.b;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;
import java.util.ArrayList;

public abstract class fl<T extends IInterface>
  implements b
{
  public static final String[] e = { "service_esmobile", "service_googleme" };
  final Handler a;
  final ArrayList<c> b = new ArrayList();
  boolean c = false;
  boolean d = false;
  private final Context f;
  private T g;
  private ArrayList<c> h;
  private boolean i = false;
  private ArrayList<d> j;
  private boolean k = false;
  private final ArrayList<fl<T>.fn<?>> l = new ArrayList();
  private fl<T>.fp m;
  private final String[] n;
  private final Object o = new Object();

  protected fl(Context paramContext, c paramc, d paramd, String[] paramArrayOfString)
  {
    this.f = ((Context)gg.a(paramContext));
    this.h = new ArrayList();
    this.h.add(gg.a(paramc));
    this.j = new ArrayList();
    this.j.add(gg.a(paramd));
    this.a = new fm(this, paramContext.getMainLooper());
    this.n = paramArrayOfString;
  }

  protected static Bundle j()
  {
    return null;
  }

  protected abstract T a(IBinder paramIBinder);

  public void a()
  {
    this.c = false;
    synchronized (this.o)
    {
      this.d = false;
    }
    synchronized (this.l)
    {
      int i1 = this.l.size();
      int i2 = 0;
      while (i2 < i1)
      {
        ((fn)this.l.get(i2)).a();
        i2++;
        continue;
        localObject2 = finally;
        throw localObject2;
      }
      this.l.clear();
      this.g = null;
      if (this.m != null)
      {
        fr.a(this.f).b(b(), this.m);
        this.m = null;
      }
      return;
    }
  }

  protected final void a(a parama)
  {
    this.a.removeMessages(4);
    while (true)
    {
      int i2;
      synchronized (this.j)
      {
        this.k = true;
        ArrayList localArrayList2 = this.j;
        int i1 = localArrayList2.size();
        i2 = 0;
        if (i2 < i1)
        {
          if (!this.c)
            return;
          if (this.j.contains(localArrayList2.get(i2)))
            ((d)localArrayList2.get(i2)).a(parama);
        }
        else
        {
          this.k = false;
          return;
        }
      }
      i2++;
    }
  }

  public final void a(c paramc)
  {
    gg.a(paramc);
    synchronized (this.h)
    {
      if (this.h.contains(paramc))
      {
        Log.w("GmsClient", "registerConnectionCallbacks(): listener " + paramc + " is already registered");
        if (f())
          this.a.sendMessage(this.a.obtainMessage(4, paramc));
        return;
      }
      if (this.i)
        this.h = new ArrayList(this.h);
      this.h.add(paramc);
    }
  }

  public final void a(d paramd)
  {
    gg.a(paramd);
    synchronized (this.j)
    {
      if (this.j.contains(paramd))
      {
        Log.w("GmsClient", "registerConnectionFailedListener(): listener " + paramd + " is already registered");
        return;
      }
      if (this.k)
        this.j = new ArrayList(this.j);
      this.j.add(paramd);
    }
  }

  public final void a(fl<T>.fn<?> paramfl)
  {
    this.a.sendMessage(this.a.obtainMessage(2, paramfl));
  }

  protected abstract void a(fy paramfy, fl<T>.fo paramfl);

  protected abstract String b();

  protected final void b(IBinder paramIBinder)
  {
    try
    {
      a(fz.a(paramIBinder), new fo(this));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("GmsClient", "service died");
    }
  }

  public final boolean b(c paramc)
  {
    gg.a(paramc);
    synchronized (this.h)
    {
      boolean bool = this.h.contains(paramc);
      return bool;
    }
  }

  public final boolean b(d paramd)
  {
    gg.a(paramd);
    synchronized (this.j)
    {
      boolean bool = this.j.contains(paramd);
      return bool;
    }
  }

  protected abstract String c();

  public final void c(c paramc)
  {
    gg.a(paramc);
    synchronized (this.h)
    {
      if (this.h != null)
      {
        if (this.i)
          this.h = new ArrayList(this.h);
        if (this.h.remove(paramc))
          break label82;
        Log.w("GmsClient", "unregisterConnectionCallbacks(): listener " + paramc + " not found");
      }
      label82: 
      while ((!this.i) || (this.b.contains(paramc)))
        return;
      this.b.add(paramc);
    }
  }

  public final void c(d paramd)
  {
    gg.a(paramd);
    synchronized (this.j)
    {
      if (this.j != null)
      {
        if (this.k)
          this.j = new ArrayList(this.j);
        if (!this.j.remove(paramd))
          Log.w("GmsClient", "unregisterConnectionFailedListener(): listener " + paramd + " not found");
      }
      return;
    }
  }

  public final void e()
  {
    this.c = true;
    do
    {
      synchronized (this.o)
      {
        this.d = true;
        int i1 = f.a(this.f);
        if (i1 != 0)
        {
          this.a.sendMessage(this.a.obtainMessage(3, Integer.valueOf(i1)));
          return;
        }
      }
      if (this.m != null)
      {
        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
        this.g = null;
        fr.a(this.f).b(b(), this.m);
      }
      this.m = new fp(this);
    }
    while (fr.a(this.f).a(b(), this.m));
    Log.e("GmsClient", "unable to connect to service: " + b());
    this.a.sendMessage(this.a.obtainMessage(3, Integer.valueOf(9)));
  }

  public final boolean f()
  {
    return this.g != null;
  }

  public final Context g()
  {
    return this.f;
  }

  public final String[] h()
  {
    return this.n;
  }

  protected final void i()
  {
    boolean bool1 = true;
    while (true)
    {
      int i2;
      synchronized (this.h)
      {
        if (this.i)
          break label157;
        bool2 = bool1;
        gg.a(bool2);
        this.a.removeMessages(4);
        this.i = true;
        if (this.b.size() != 0)
          break label163;
        gg.a(bool1);
        ArrayList localArrayList2 = this.h;
        int i1 = localArrayList2.size();
        i2 = 0;
        if ((i2 < i1) && (this.c) && (f()))
        {
          this.b.size();
          if (!this.b.contains(localArrayList2.get(i2)))
            ((c)localArrayList2.get(i2)).a();
        }
        else
        {
          this.b.clear();
          this.i = false;
          return;
        }
      }
      i2++;
      continue;
      label157: boolean bool2 = false;
      continue;
      label163: bool1 = false;
    }
  }

  protected final void k()
  {
    this.a.removeMessages(4);
    while (true)
    {
      int i2;
      synchronized (this.h)
      {
        this.i = true;
        ArrayList localArrayList2 = this.h;
        int i1 = localArrayList2.size();
        i2 = 0;
        if ((i2 < i1) && (this.c))
        {
          if (this.h.contains(localArrayList2.get(i2)))
            ((c)localArrayList2.get(i2)).b();
        }
        else
        {
          this.i = false;
          return;
        }
      }
      i2++;
    }
  }

  protected final void l()
  {
    if (!f())
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
  }

  protected final T m()
  {
    l();
    return this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fl
 * JD-Core Version:    0.6.2
 */
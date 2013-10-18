package com.nianticproject.ingress;

import android.app.Activity;
import android.support.v4.app.j;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.google.a.a.an;
import com.google.a.a.ba;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.k.w;
import com.nianticproject.ingress.common.o;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.n.ab;
import com.nianticproject.ingress.n.q;
import com.nianticproject.ingress.n.s;
import com.nianticproject.ingress.shared.aj;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class dj
  implements ApplicationListener
{
  public static final ExecutorService a = Executors.newCachedThreadPool();
  private final Activity b;
  private final com.nianticproject.ingress.connectivity.a c;
  private final ba<o> d;
  private final List<com.nianticproject.ingress.common.ae> e;
  private final s f;
  private final EnumSet<dn> g = EnumSet.noneOf(dn.class);
  private final EnumSet<dn> h = EnumSet.noneOf(dn.class);
  private boolean i;
  private boolean j;
  private o k = null;

  public dj(Activity paramActivity, j paramj, com.nianticproject.ingress.connectivity.a parama, ba<o> paramba)
  {
    this.b = paramActivity;
    this.c = parama;
    this.e = eq.a();
    this.d = paramba;
    this.e.add(new w(new do(this, dn.c)));
    this.g.add(dn.c);
    this.e.add(new com.nianticproject.ingress.common.scanner.ae(new do(this, dn.b)));
    this.g.add(dn.b);
    this.g.add(dn.a);
    this.f = new s(paramActivity, paramj, new ab(), new dp(this, (byte)0));
    resume();
  }

  public final q a()
  {
    return this.f;
  }

  public final void b()
  {
    try
    {
      aj.a("PregameAppListener.startSignOn");
      ec.a("startSignOn");
      this.f.k();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void c()
  {
    this.h.add(dn.a);
  }

  public final void create()
  {
    try
    {
      aj.a("PregameAppListener.create");
      Iterator localIterator = this.e.iterator();
      while (localIterator.hasNext())
      {
        com.nianticproject.ingress.common.ae localae = (com.nianticproject.ingress.common.ae)localIterator.next();
        a.execute(localae);
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
  }

  public final void d()
  {
    if (!this.f.n())
      com.nianticproject.ingress.o.a.b(this.b);
  }

  public final void dispose()
  {
  }

  public final void pause()
  {
    this.b.runOnUiThread(new dm(this));
  }

  public final void render()
  {
    try
    {
      aj.a("PregameAppListener.render");
      boolean bool = this.j;
      if (bool)
        return;
      i.a().a(60000000000L);
      Gdx.gl20.glClear(16640);
      if (this.h.equals(this.g))
      {
        this.j = true;
        this.d.a(an.a(this.k));
        this.b.runOnUiThread(new dk(this));
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void resize(int paramInt1, int paramInt2)
  {
  }

  public final void resume()
  {
    try
    {
      aj.a("PregameAppListener.resume");
      this.b.runOnUiThread(new dl(this));
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dj
 * JD-Core Version:    0.6.2
 */
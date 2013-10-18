package com.nianticproject.ingress.common.c;

import com.badlogic.gdx.utils.Disposable;
import com.google.a.b.cd;
import com.google.a.b.e;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import com.nianticproject.ingress.shared.aj;
import java.util.concurrent.ExecutionException;

public class i
{
  private static final aa a = new aa(i.class);
  private final m b;
  private long c = 0L;
  private final com.google.a.b.k<ba, n<? extends Disposable>> d = new k(this);
  private final cd<ba, n<? extends Disposable>> e = new l(this);
  private final com.google.a.b.n<ba, n<? extends Disposable>> f = e.a().a(this.e).f().a(new j(this)).a(this.d);

  public i(m paramm)
  {
    this.b = paramm;
  }

  private static boolean g(ba paramba)
  {
    return (paramba.c()) && (paramba.e() < 419430);
  }

  private n<? extends Disposable> h(ba paramba)
  {
    new al().a();
    try
    {
      aj.a("AudioCacheManager.cacheAudioData(", paramba.name(), ")");
      n localn = this.b.a(paramba);
      return localn;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a()
  {
    this.f.a();
  }

  public final void a(ba paramba)
  {
    if (g(paramba))
      this.f.c(paramba);
  }

  public final n<? extends Disposable> b(ba paramba)
  {
    try
    {
      n localn = (n)this.f.d(paramba);
      return localn;
    }
    catch (ExecutionException localExecutionException)
    {
      a.c(localExecutionException, "unable to load asset=%s", new Object[] { paramba });
    }
    return null;
  }

  public final boolean c(ba paramba)
  {
    if (e(paramba))
    {
      b(paramba);
      return true;
    }
    return false;
  }

  public final boolean d(ba paramba)
  {
    n localn = (n)this.f.b(paramba);
    if (localn != null)
      return this.b.b(localn);
    return false;
  }

  public final boolean e(ba paramba)
  {
    return (g(paramba)) && (!d(paramba));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.i
 * JD-Core Version:    0.6.2
 */
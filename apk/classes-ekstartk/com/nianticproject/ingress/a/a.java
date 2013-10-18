package com.nianticproject.ingress.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.hc;
import com.google.a.c.ii;
import com.nianticproject.ingress.common.c.ai;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bj;
import com.nianticproject.ingress.common.c.bl;
import com.nianticproject.ingress.common.c.i;
import com.nianticproject.ingress.common.c.m;
import com.nianticproject.ingress.common.c.n;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import java.io.File;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;

public class a
  implements m
{
  private static final aa a = new aa(a.class);
  private final Semaphore b = new Semaphore(8, true);
  private final AssetManager c;
  private final SoundPool d;
  private final BlockingQueue<d> e = ii.b();
  private final Map<Integer, c> f = hc.b();
  private final SoundPool.OnLoadCompleteListener g = new b(this);

  public a(Context paramContext)
  {
    this.c = paramContext.getAssets();
    this.d = new SoundPool(8, 3, 0);
    this.d.setOnLoadCompleteListener(this.g);
  }

  public final bj a(i parami, ba paramba, ai paramai)
  {
    if (this.b.tryAcquire())
    {
      if (parami.d(paramba))
      {
        Disposable localDisposable = parami.b(paramba).a();
        if ((localDisposable instanceof c))
        {
          c localc = (c)localDisposable;
          if (localc.b())
            return new l(this.d, localc.c());
        }
      }
      if ((ag.a == ah.a) && (parami.e(paramba)))
        new Object[1][0] = paramba.b();
      return new d(this.c, "sounds", paramai);
    }
    throw new bl("acquireSoundPlayer too many sound players.");
  }

  public final n<? extends Disposable> a(ba paramba)
  {
    try
    {
      n localn = new n(new c(this, new File("sounds", paramba.b()).toString()));
      return localn;
    }
    catch (com.nianticproject.ingress.common.b.b localb)
    {
      a.b(localb.toString());
    }
    return null;
  }

  public final void a(bj parambj)
  {
    this.b.release();
    parambj.d();
  }

  public final void a(n<? extends Disposable> paramn)
  {
    paramn.b();
  }

  public final boolean b(n<? extends Disposable> paramn)
  {
    Disposable localDisposable = paramn.a();
    if ((localDisposable instanceof c))
      return ((c)localDisposable).b();
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.a
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.a;

import android.media.SoundPool;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bj;
import com.nianticproject.ingress.common.c.bk;
import com.nianticproject.ingress.common.w.aa;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class l
  implements bj
{
  private static final aa a = new aa(l.class);
  private static final ScheduledThreadPoolExecutor b = new ScheduledThreadPoolExecutor(1);
  private bi c;
  private final SoundPool d;
  private final int e;
  private int f;
  private float g;
  private float h;
  private boolean i;
  private bk j;
  private final AtomicBoolean k = new AtomicBoolean();
  private long l;

  public l(SoundPool paramSoundPool, int paramInt)
  {
    this.d = paramSoundPool;
    this.e = paramInt;
  }

  private void b(float paramFloat1, float paramFloat2)
  {
    this.g = paramFloat1;
    this.h = paramFloat1;
    if (paramFloat2 < 0.0F)
      this.h *= (1.0F - Math.abs(paramFloat2));
    while (paramFloat2 <= 0.0F)
      return;
    this.g *= (1.0F - Math.abs(paramFloat2));
  }

  private void f()
  {
    this.k.set(false);
  }

  private void g()
  {
    SoundPool localSoundPool = this.d;
    int m = this.e;
    float f1 = this.g;
    float f2 = this.h;
    if (this.i);
    for (int n = -1; ; n = 0)
    {
      this.f = localSoundPool.play(m, f1, f2, 1, n, 1.0F);
      if ((!this.i) && (this.k.get()))
      {
        m localm = new m(this);
        b.schedule(localm, this.l, TimeUnit.MILLISECONDS);
      }
      return;
    }
  }

  public final void a()
  {
    g();
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    b(paramFloat1, paramFloat2);
    this.d.setVolume(this.f, this.g, this.h);
  }

  public final void a(int paramInt)
  {
    this.d.stop(this.f);
    g();
  }

  public final void a(bi parambi, float paramFloat1, float paramFloat2, boolean paramBoolean, bk parambk)
  {
    this.c = parambi;
    b(paramFloat1, paramFloat2);
    this.i = paramBoolean;
    this.j = parambk;
    AtomicBoolean localAtomicBoolean = this.k;
    if (parambk != null);
    for (boolean bool = true; ; bool = false)
    {
      localAtomicBoolean.set(bool);
      this.l = parambi.a().d();
      g();
      return;
    }
  }

  public final boolean b()
  {
    return true;
  }

  public final void c()
  {
    f();
    this.d.stop(this.f);
  }

  public final void d()
  {
    f();
    this.f = 0;
  }

  public final int e()
  {
    return 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.l
 * JD-Core Version:    0.6.2
 */
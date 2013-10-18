package com.nianticproject.ingress.common.ui.b;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.t;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class k extends com.nianticproject.ingress.common.ui.a
{
  protected int a = -1;
  private final c b = new c();
  private final ConcurrentLinkedQueue<Runnable> c = new ConcurrentLinkedQueue();

  public k(String paramString)
  {
    super(paramString);
  }

  public void a()
  {
    this.b.a(a.c);
  }

  public final void a(float paramFloat)
  {
    if (J().b() == this)
      while (true)
      {
        Runnable localRunnable = (Runnable)this.c.poll();
        if (localRunnable == null)
          break;
        localRunnable.run();
      }
  }

  protected final void a(int paramInt, b paramb)
  {
    new l(this.b).a(this.a).a(paramInt, paramb).a();
    this.a = paramInt;
  }

  public final void a(Skin paramSkin)
  {
    this.b.a(a.b);
  }

  protected final void a(Runnable paramRunnable)
  {
    this.c.offer(paramRunnable);
  }

  public void e()
  {
    this.b.a(a.d);
  }

  protected final void j()
  {
    new l(this.b).a(this.a).a();
  }

  public final void p_()
  {
    this.b.a(a.e);
    super.p_();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b.k
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.c;

import java.util.concurrent.atomic.AtomicInteger;

public class aj
  implements com.nianticproject.ingress.common.aa, e
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(aj.class);
  private final ai b;
  private final AtomicInteger c = new AtomicInteger(0);
  private final AtomicInteger d = new AtomicInteger(0);

  public aj(ai paramai)
  {
    this.b = paramai;
  }

  public final void a(ba paramba)
  {
    ai localai = this.b;
    localai.a(new ab(localai, paramba));
  }

  public final void a(bn parambn)
  {
    parambn.k();
    p.a(this.b, parambn, true);
  }

  public final void a(bn parambn, float paramFloat1, float paramFloat2)
  {
    parambn.a(paramFloat1, paramFloat2);
    ai localai = this.b;
    localai.a(new x(parambn, localai));
  }

  public final void a(bs parambs)
  {
    a(parambs.a());
  }

  public final void a(g paramg, h paramh)
  {
    ai localai = this.b;
    localai.a(new v(localai, paramg, paramh));
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.c.incrementAndGet();
    while (this.c.decrementAndGet() >= 0)
      return;
    this.c.set(0);
    a.b("unDuckAmbientSound: duckAmbientSoundLockCount < 0\n");
  }

  public final void b()
  {
    ai localai = this.b;
    localai.a(new u(localai));
  }

  public final void b(ba paramba)
  {
    ai localai = this.b;
    localai.a(new ac(localai, paramba));
  }

  public final void b(bn parambn)
  {
    ai localai = this.b;
    localai.a(new y(parambn, localai));
  }

  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
      this.d.incrementAndGet();
    while (this.d.decrementAndGet() >= 0)
      return;
    this.d.set(0);
    a.b("muteAmbientSound: muteAmbientSoundLockCount < 0\n");
  }

  public final void c()
  {
    ai localai = this.b;
    localai.a(new s(localai));
  }

  public final void c(bn parambn)
  {
    ai localai = this.b;
    localai.a(new z(parambn, localai));
  }

  public final f d()
  {
    if (this.d.get() > 0)
      return f.a;
    if (this.c.get() > 0)
      return f.b;
    return f.c;
  }

  public final void d(bn parambn)
  {
    ai localai = this.b;
    localai.a(new aa(parambn, localai));
  }

  public final void e(bn parambn)
  {
    ai localai = this.b;
    localai.a(new r(parambn, localai));
  }

  public final void f_()
  {
    ai localai = this.b;
    localai.a(new t(localai));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.aj
 * JD-Core Version:    0.6.2
 */
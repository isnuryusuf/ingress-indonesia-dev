package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.d.u;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.itemupgrade.c;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.f;

public class bf extends ag
{
  private static final aa g = new aa(bf.class);
  private bg h;
  private c i;
  private final f j;
  private GameState k;

  public bf(k paramk, j paramj, f paramf)
  {
    super(paramk, paramj, paramk.b(paramf.getGuid()));
    this.j = paramf;
    a(null);
    a(p.a().b());
  }

  protected final void a(u paramu1, u paramu2)
  {
    if (this.i != null)
      this.i.a(paramu1, paramu2);
  }

  public final void a(as paramas)
  {
    super.a(paramas);
    this.h = new bg(this, paramas);
    this.c.a(this.h);
  }

  public final void a(GameState paramGameState)
  {
    this.k = paramGameState;
    b(paramGameState);
  }

  public final void a(f paramf)
  {
    if (paramf == null)
    {
      a(this.c.b(this.j.getGuid()), 192.5F, 40.0F, 0.0F, 0.33F);
      return;
    }
    a(this.c.b(paramf.getGuid()), 192.5F, 40.0F, 0.0F, 0.4F);
  }

  public final boolean a(float paramFloat)
  {
    if (this.i != null)
      this.i.a(paramFloat);
    return super.a(paramFloat);
  }

  public final boolean a(ej paramej)
  {
    if (this.i != null)
      this.i.a();
    return true;
  }

  public final void b()
  {
    super.b();
    if (this.h != null)
    {
      this.h.e();
      this.h = null;
    }
    if (this.i != null)
    {
      this.i.e();
      this.i = null;
    }
  }

  final void b(GameState paramGameState)
  {
    if ((this.i != null) && (!this.i.a(paramGameState)))
    {
      this.i.e();
      this.i = null;
      c();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bf
 * JD-Core Version:    0.6.2
 */
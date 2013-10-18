package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.c.du;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import java.util.Set;

public abstract class z extends a
{
  protected boolean f;

  public z(com.nianticproject.ingress.common.scanner.k paramk, l paraml, com.nianticproject.ingress.common.j.h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, g paramg)
  {
    super(paramk, paraml, paramh, paramk1, paramed, paramg);
  }

  public void a(as paramas)
  {
    b(this.a.y().d());
    c(this.a.y().f());
    this.f = true;
    super.a(paramas);
  }

  public boolean a(float paramFloat)
  {
    if (!super.a(paramFloat))
      this.f = false;
    return this.f;
  }

  public final boolean a(ej paramej)
  {
    return false;
  }

  public void b()
  {
    this.f = false;
    super.b();
    this.a.y().b(d());
    this.a.y().c(f());
  }

  protected final Set<h> c()
  {
    return du.g();
  }

  protected final void h()
  {
    this.f = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.z
 * JD-Core Version:    0.6.2
 */
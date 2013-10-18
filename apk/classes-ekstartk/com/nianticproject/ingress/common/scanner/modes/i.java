package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.visuals.b.s;
import com.nianticproject.ingress.common.scanner.visuals.b.v;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.scanner.visuals.c;
import com.nianticproject.ingress.common.scanner.visuals.p;
import com.nianticproject.ingress.gameentity.f;

public final class i
{
  private static boolean a = true;
  private final com.nianticproject.ingress.common.scanner.k b;
  private final com.nianticproject.ingress.common.model.k c;
  private final String d;
  private final com.nianticproject.ingress.common.gameentity.e e;
  private com.nianticproject.ingress.common.scanner.visuals.t f;
  private c g;

  public i(com.nianticproject.ingress.common.scanner.k paramk, com.nianticproject.ingress.common.model.k paramk1, f paramf1, f paramf2)
  {
    this.b = paramk;
    this.c = paramk1;
    this.d = paramf1.getGuid();
    this.e = g.h(paramf2);
  }

  public final void a()
  {
    a(false);
    if (!a);
    ej localej;
    do
    {
      return;
      localej = this.b.b(this.d);
    }
    while (localej == null);
    Color localColor = ea.a(this.c.h());
    this.g = new c(ag.L, localColor);
    this.b.l().b(this.g);
    v localv = new v(2.0F);
    localv.b = ea.a(this.c.h());
    this.f = new com.nianticproject.ingress.common.scanner.visuals.t(localv, null, null);
    this.f.a(true);
    this.f.a();
    localej.b(new com.nianticproject.ingress.common.scanner.visuals.b.e(this.f));
  }

  public final void a(boolean paramBoolean)
  {
    if (this.g != null)
    {
      this.g.d();
      this.g = null;
    }
    if (this.f != null)
    {
      this.f.a(false);
      ej localej = this.b.b(this.d);
      if ((!paramBoolean) || (localej == null))
        break label128;
      float f1 = this.f.e().c() - 0.05F - this.f.f();
      eo localeo = this.b.l().a(localej.c());
      localej.b(new p(this.b, this.e, localeo, localeo, f1));
    }
    while (true)
    {
      this.f = null;
      return;
      label128: s locals = new s();
      locals.b = ea.a(this.c.h());
      this.f.a(locals);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.i
 * JD-Core Version:    0.6.2
 */
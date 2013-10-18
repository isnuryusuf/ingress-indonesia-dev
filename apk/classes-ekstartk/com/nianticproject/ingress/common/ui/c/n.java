package com.nianticproject.ingress.common.ui.c;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.scanner.visuals.b.j;
import com.nianticproject.ingress.gameentity.components.Portal;

final class n
  implements j
{
  n(k paramk, com.nianticproject.ingress.common.scanner.k paramk1)
  {
  }

  public final void a()
  {
    k.b(this.b);
    o.a().a(bs.p);
    com.nianticproject.ingress.common.scanner.k localk1 = this.a;
    localk1.I();
    com.nianticproject.ingress.common.scanner.k localk2 = this.a;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = k.c(this.b).getEntityGuid();
    localk2.b(jc.a(arrayOfString));
  }

  public final void b()
  {
    o.a().a(bs.s);
  }

  public final void c()
  {
    this.a.b(k.d(this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.n
 * JD-Core Version:    0.6.2
 */
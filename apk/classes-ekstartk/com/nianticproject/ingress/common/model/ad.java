package com.nianticproject.ingress.common.model;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import java.util.Set;

public final class ad extends a
{
  private final k a;
  private final com.nianticproject.ingress.common.g.e b;
  private final com.nianticproject.ingress.common.scanner.k c;
  private final e d;
  private int e;

  public ad(k paramk, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.scanner.k paramk1, e parame1)
  {
    super("updateVacuumedEnergyGlobs");
    this.a = ((k)an.a(paramk));
    this.b = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.c = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk1));
    this.d = ((e)an.a(parame1));
  }

  public final com.nianticproject.ingress.common.x.f a(p paramp)
  {
    int i = this.e;
    this.e = (i + 1);
    switch (i)
    {
    default:
      return null;
    case 0:
      this.c.a(this.d.b);
      return this;
    case 1:
      this.a.a(this.d.c);
      return this;
    case 2:
    }
    com.nianticproject.ingress.common.g.e locale = this.b;
    Set localSet = this.d.b;
    locale.a(SimpleGameStateUpdate.m().a(eq.a(localSet)).a());
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.ad
 * JD-Core Version:    0.6.2
 */
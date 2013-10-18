package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.gameentity.f;
import java.util.Map;

final class m extends ep
{
  m(l paraml, fp paramfp, c paramc)
  {
    super(paramfp, paramc);
  }

  protected final void a(fg paramfg)
  {
    k.b(this.a.a).remove(paramfg.e().getGuid());
    paramfg.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.m
 * JD-Core Version:    0.6.2
 */
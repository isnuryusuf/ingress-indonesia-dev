package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.ui.elements.i;

public abstract class cb
  implements ca
{
  protected abstract ch a(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, a parama, i parami, com.nianticproject.ingress.common.model.a.e parame2);

  public final bo b(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, a parama, i parami, com.nianticproject.ingress.common.model.a.e parame2)
  {
    ch localch = a(paramcq, paramad, paramm, paramk, paramk1, parame, parame1, parama, parami, parame2);
    return new bo(co.a(this), localch);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cb
 * JD-Core Version:    0.6.2
 */
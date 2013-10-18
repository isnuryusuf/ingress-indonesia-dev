package com.nianticproject.ingress.common.ui.c;

import com.google.a.c.dh;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.server.flip.a;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.List;
import java.util.Set;

public final class k
{
  private final Portal a;
  private final Set<String> b;
  private final t c;
  private final com.nianticproject.ingress.common.h.l d;
  private final List<com.nianticproject.ingress.common.scanner.visuals.b.g> e = eq.a();
  private final com.nianticproject.ingress.common.x.g<RpcResult<Void, a>> f = new l(this, "FlipPortal");
  private final Object g = new Object();
  private bn h = null;
  private boolean i = false;

  public k(f paramf, Portal paramPortal, t paramt, com.nianticproject.ingress.common.h.l paraml)
  {
    this.c = paramt;
    this.d = paraml;
    this.a = paramPortal;
    this.b = jc.a(paramPortal.getLinkedResonatorGuids().d_());
    com.nianticproject.ingress.common.scanner.k localk = (com.nianticproject.ingress.common.scanner.k)paramt.a(com.nianticproject.ingress.common.scanner.k.class);
    paramt.b(com.nianticproject.ingress.common.scanner.k.class);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramPortal.getEntityGuid();
    localk.a(jc.a(arrayOfString));
    localk.a(this.b);
    paraml.a(paramf, paramPortal, this.f);
    o.a().a(bs.o);
    synchronized (this.g)
    {
      if (this.i)
      {
        this.e.addAll(localk.a(paramf, paramPortal));
        return;
      }
      i.a().a(new m(this), 1000L);
    }
  }

  private void a()
  {
    synchronized (this.g)
    {
      this.i = true;
      if (this.h != null)
      {
        this.h.n();
        this.h = null;
      }
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.k
 * JD-Core Version:    0.6.2
 */
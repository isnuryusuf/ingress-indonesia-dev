package com.nianticproject.ingress.common.ui.f;

import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.server.FindNearbyPortalsFail;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Set;

public class e
  implements com.nianticproject.ingress.common.x.f
{
  private static final aa a = new aa(e.class);
  private final l b;
  private final k c;
  private final a d;
  private String e;
  private boolean f = false;
  private boolean g = false;
  private final g<RpcResult<Set<com.nianticproject.ingress.gameentity.f>, FindNearbyPortalsFail>> h = new f(this);

  public e(l paraml, k paramk, a parama)
  {
    this.b = paraml;
    this.c = paramk;
    this.d = parama;
  }

  public final com.nianticproject.ingress.common.x.f a(p paramp)
  {
    this.b.a(this.e, 10, this.h);
    return null;
  }

  public final void b()
  {
    this.f = false;
    i.a().a(this);
  }

  public final boolean c()
  {
    return this.g;
  }

  public final String n_()
  {
    return "UpdateNearbyPortalsTask";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.f.e
 * JD-Core Version:    0.6.2
 */
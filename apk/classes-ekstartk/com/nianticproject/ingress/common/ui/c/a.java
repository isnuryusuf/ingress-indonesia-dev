package com.nianticproject.ingress.common.ui.c;

import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.scanner.visuals.b.z;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.c;

public final class a
{
  private final l a;
  private final z b;
  private final g<RpcResult<DischargePowerCubeResult, c>> c = new b(this, "DischargePowerCube");

  public a(f paramf, k paramk, l paraml)
  {
    this.a = paraml;
    this.b = new z();
    paramk.a(new com.nianticproject.ingress.common.scanner.visuals.b.e(this.b));
    paraml.a(paramf, this.c);
    paramk.B().b();
    o.a().a(bs.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.a
 * JD-Core Version:    0.6.2
 */
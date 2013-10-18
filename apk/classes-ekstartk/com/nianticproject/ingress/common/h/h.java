package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ao;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.server.FindNearbyPortalsFail;
import com.nianticproject.ingress.shared.Result;
import java.util.Set;

public final class h extends j<Set<f>, FindNearbyPortalsFail>
{
  private final String a;
  private final int b;

  public h(q paramq, String paramString, int paramInt)
  {
    super(paramq);
    this.a = paramString;
    this.b = paramInt;
  }

  protected final Result<t<Set<f>, FindNearbyPortalsFail>, FindNearbyPortalsFail> c()
  {
    return Result.a(ao.a(this.a, this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.h
 * JD-Core Version:    0.6.2
 */
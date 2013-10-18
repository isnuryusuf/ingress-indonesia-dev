package com.nianticproject.ingress.curation;

import android.os.Build.VERSION;
import com.google.a.d.u;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.ab;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.ai;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.u.az;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.service.d;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.t;
import com.nianticproject.ingress.shared.rpc.v;

public final class i
  implements e
{
  private final ah a;

  public i()
  {
    NemesisApplication.a();
    this.a = new ah(NemesisApplication.f(), ec.a());
    this.a.a(new ai());
  }

  public final RpcResult<String, Void> a()
  {
    return this.a.a(aj.c());
  }

  public final RpcResult<Void, v> a(String paramString1, String paramString2, String paramString3)
  {
    return this.a.a(aj.b(paramString1, paramString2, paramString3));
  }

  public final RpcResult<Void, t> a(String paramString1, String paramString2, String paramString3, u paramu, String paramString4, com.nianticproject.ingress.shared.rpc.b paramb, String paramString5)
  {
    return this.a.a(aj.a(paramString1, paramString2, paramString3, paramu, paramString4, paramb, paramString5));
  }

  public final Result<d, Boolean> b()
  {
    NemesisApplication.a();
    return new com.nianticproject.ingress.service.b(new az(NemesisApplication.f(), ec.a(), Build.VERSION.RELEASE, ab.a(), new com.nianticproject.ingress.c.b())).a(null, false);
  }

  public final RpcResult<Void, v> b(String paramString1, String paramString2, String paramString3)
  {
    return this.a.a(aj.a(paramString1, paramString2, paramString3));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.i
 * JD-Core Version:    0.6.2
 */
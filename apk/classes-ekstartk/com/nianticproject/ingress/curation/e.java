package com.nianticproject.ingress.curation;

import com.google.a.d.u;
import com.nianticproject.ingress.service.d;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.b;
import com.nianticproject.ingress.shared.rpc.t;
import com.nianticproject.ingress.shared.rpc.v;

public abstract interface e
{
  public abstract RpcResult<String, Void> a();

  public abstract RpcResult<Void, v> a(String paramString1, String paramString2, String paramString3);

  public abstract RpcResult<Void, t> a(String paramString1, String paramString2, String paramString3, u paramu, String paramString4, b paramb, String paramString5);

  public abstract Result<d, Boolean> b();

  public abstract RpcResult<Void, v> b(String paramString1, String paramString2, String paramString3);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.e
 * JD-Core Version:    0.6.2
 */
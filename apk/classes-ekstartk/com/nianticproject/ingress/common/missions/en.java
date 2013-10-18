package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.w;
import java.util.Map;
import java.util.Set;

public abstract interface en
{
  public abstract RpcResult<Map<String, n>, w> a(Set<String> paramSet);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.en
 * JD-Core Version:    0.6.2
 */
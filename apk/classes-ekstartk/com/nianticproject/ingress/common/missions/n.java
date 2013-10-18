package com.nianticproject.ingress.common.missions;

import com.google.a.c.hc;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import com.nianticproject.ingress.shared.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class n
  implements en
{
  n(a parama)
  {
  }

  public final RpcResult<Map<String, com.nianticproject.ingress.shared.n>, w> a(Set<String> paramSet)
  {
    HashMap localHashMap = hc.a(paramSet.size());
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
      localHashMap.put((String)localIterator.next(), com.nianticproject.ingress.shared.n.s);
    return RpcResult.a(localHashMap, new g().a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.n
 * JD-Core Version:    0.6.2
 */
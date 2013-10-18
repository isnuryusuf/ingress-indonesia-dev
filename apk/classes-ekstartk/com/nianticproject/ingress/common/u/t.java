package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ac;
import com.nianticproject.ingress.shared.rpc.ah;
import com.nianticproject.ingress.shared.rpc.l;

public final class t<R, E> extends ac<l, R, E>
{
  private final long a;

  t(ah<RpcResult<R, E>> paramah, String paramString1, String paramString2, l paraml, long paramLong)
  {
    super(paramah, paramString1, paramString2, paraml);
    this.a = paramLong;
  }

  public final long a()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.t
 * JD-Core Version:    0.6.2
 */
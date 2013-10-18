package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.rpc.RpcResult;

public final class r<R, E>
{
  private final RpcResult<R, E> a;
  private final i b;
  private final j c;

  private r(RpcResult<R, E> paramRpcResult, i parami, j paramj)
  {
    this.a = paramRpcResult;
    this.b = parami;
    this.c = paramj;
  }

  public final RpcResult<R, E> a()
  {
    return this.a;
  }

  public final void b()
  {
    if ((this.b != null) && (this.b.a != null))
      this.c.b(this.b.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.r
 * JD-Core Version:    0.6.2
 */
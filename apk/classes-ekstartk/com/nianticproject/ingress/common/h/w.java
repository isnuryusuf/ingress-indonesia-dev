package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.u.j;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.rpc.RpcResult;

class w extends q
{
  private final aa c = new aa(w.class);
  private final RpcResult d;

  w(r paramr, RpcResult paramRpcResult)
  {
    super(null, "https://localhost/");
    this.d = paramRpcResult;
  }

  public final <R, E> com.nianticproject.ingress.common.u.r<R, E> a(t<R, E> paramt)
  {
    try
    {
      Thread.sleep(50L);
      return a(this.d, null);
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        this.c.b("RPCResult: sleep exception: " + localInterruptedException.toString());
    }
  }

  public final void a(j paramj)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.w
 * JD-Core Version:    0.6.2
 */
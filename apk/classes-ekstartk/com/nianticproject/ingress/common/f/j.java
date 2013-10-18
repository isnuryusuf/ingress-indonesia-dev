package com.nianticproject.ingress.common.f;

import com.google.a.a.an;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.RpcResult;

public abstract class j<Success, Error>
{
  private static final aa a = new aa(j.class);
  private final q b;
  private t<Success, Error> c;
  private j<Success, Error>.k d;
  private boolean e = false;

  public j(q paramq)
  {
    this.b = ((q)an.a(paramq));
  }

  protected f a(RpcResult<Success, Error> paramRpcResult)
  {
    return null;
  }

  public final void a()
  {
    if (this.d == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempt to execute task twice.");
      this.d = new k(this, null);
      i.a().a(this.d);
      return;
    }
  }

  public final void a(g<RpcResult<Success, Error>> paramg)
  {
    if (this.d == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempt to execute task twice.");
      this.d = new k(this, paramg);
      i.a().a(this.d);
      return;
    }
  }

  protected f b(RpcResult<Success, Error> paramRpcResult)
  {
    return null;
  }

  public final void b()
  {
    an.a(this.d, "Attempt to cancel a task not in progress.");
    this.e = true;
    this.d.b(false);
  }

  protected abstract Result<t<Success, Error>, Error> c();

  protected abstract Error d();

  protected void e()
  {
    a.c("onCancelled not overridden: If your task is cancellable, you must override onCancelled! Do not forget to dispose of any held resources to prevent leaks!");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.j
 * JD-Core Version:    0.6.2
 */
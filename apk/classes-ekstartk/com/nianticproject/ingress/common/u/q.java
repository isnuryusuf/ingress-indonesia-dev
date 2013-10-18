package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.l;
import com.nianticproject.ingress.shared.rpc.y;

public class q
  implements h
{
  private final b a;
  protected j b;
  private final String c;

  public q(b paramb, String paramString)
  {
    this.a = paramb;
    this.c = paramString;
  }

  public <R, E> r<R, E> a(t<R, E> paramt)
  {
    i locali = new i();
    ah localah = new ah(this.a, this.c);
    localah.a(locali);
    ad localad = this.b.a((l)paramt.d(), paramt.a());
    try
    {
      RpcResult localRpcResult = localah.a(paramt);
      localad.a(false);
      r localr = a(localRpcResult, locali);
      return localr;
    }
    catch (y localy)
    {
      localad.a(true);
      throw localy;
    }
    finally
    {
      if (locali.a != null)
        j.a(locali.a);
    }
  }

  protected final <R, E> r<R, E> a(RpcResult<R, E> paramRpcResult, i parami)
  {
    return new r(paramRpcResult, parami, this.b, (byte)0);
  }

  public final <R, E> RpcResult<R, E> a(ab<R, E> paramab)
  {
    ah localah = new ah(this.a, this.c);
    localah.a(this);
    return localah.a(paramab);
  }

  public void a(j paramj)
  {
    if (this.b == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.b = paramj;
      return;
    }
  }

  public final void a(GameBasket paramGameBasket)
  {
    j.a(paramGameBasket);
    this.b.b(paramGameBasket);
  }

  public final <R> R b(ab<R, Void> paramab)
  {
    ah localah = new ah(this.a, this.c);
    localah.a(this);
    return localah.b(paramab);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.q
 * JD-Core Version:    0.6.2
 */
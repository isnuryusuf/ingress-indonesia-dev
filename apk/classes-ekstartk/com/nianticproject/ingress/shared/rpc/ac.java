package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;

public class ac<P, R, E> extends ab<R, E>
{
  private final P a;

  public ac(ah<RpcResult<R, E>> paramah, String paramString1, String paramString2, P paramP)
  {
    super(paramah, paramString1, paramString2);
    this.a = an.a(paramP);
  }

  public final String b()
  {
    return v_().a(this.a);
  }

  public final P d()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ac
 * JD-Core Version:    0.6.2
 */
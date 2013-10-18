package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public final class RpcResult<R, E>
{

  @JsonProperty
  private final E error;

  @JsonProperty
  private final String exception;

  @JsonProperty
  private GameBasket gameBasket;

  @JsonProperty
  private final R result;

  private RpcResult()
  {
    this.result = null;
    this.error = null;
    this.exception = null;
    this.gameBasket = null;
  }

  private RpcResult(R paramR, E paramE, String paramString, GameBasket paramGameBasket)
  {
    this.result = paramR;
    this.error = paramE;
    this.exception = paramString;
    this.gameBasket = paramGameBasket;
  }

  public static <R, E> RpcResult<R, E> a(E paramE)
  {
    an.a(paramE);
    return new RpcResult(null, paramE, null, null);
  }

  public static <R, E> RpcResult<R, E> a(R paramR, GameBasket paramGameBasket)
  {
    return new RpcResult(paramR, null, null, paramGameBasket);
  }

  public static <R, E> RpcResult<R, E> a(String paramString, GameBasket paramGameBasket)
  {
    an.a(paramString);
    return new RpcResult(null, null, paramString, paramGameBasket);
  }

  public static <R, E> RpcResult<R, E> b(E paramE, GameBasket paramGameBasket)
  {
    an.a(paramE);
    return new RpcResult(null, paramE, null, paramGameBasket);
  }

  public final R a()
  {
    return this.result;
  }

  public final E b()
  {
    return this.error;
  }

  public final String c()
  {
    return this.exception;
  }

  public final GameBasket d()
  {
    return this.gameBasket;
  }

  public final boolean e()
  {
    return (this.error == null) && (this.exception == null);
  }

  public final boolean f()
  {
    return this.exception != null;
  }

  public final boolean g()
  {
    return this.error != null;
  }

  public final String toString()
  {
    String str;
    if (f())
      str = "Exception[" + this.exception + "]";
    while (true)
    {
      return str + ", gameBasket: " + this.gameBasket;
      if (g())
        str = "Error[" + this.error + "]";
      else
        str = this.result;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.RpcResult
 * JD-Core Version:    0.6.2
 */
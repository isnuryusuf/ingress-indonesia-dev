package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;

public class ab<R, E>
{
  private final String a;
  private final ah<RpcResult<R, E>> b;

  public ab(ah<RpcResult<R, E>> paramah, String paramString1, String paramString2)
  {
    an.a(paramString1, "entryPointName is null");
    an.a(paramString2, "method is null");
    this.a = ("/" + paramString1 + "/" + paramString2);
    this.b = ((ah)an.a(paramah));
  }

  public final RpcResult<R, E> a(InputStream paramInputStream)
  {
    return (RpcResult)v_().a(paramInputStream);
  }

  public URI a(URI paramURI)
  {
    return URI.create(paramURI.toString() + this.a);
  }

  public String b()
  {
    return v_().a(Collections.emptyList());
  }

  public final String c()
  {
    return this.a;
  }

  public String toString()
  {
    return this.a;
  }

  protected ah<RpcResult<R, E>> v_()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ab
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.x;
import com.nianticproject.ingress.shared.rpc.y;
import java.net.URI;
import java.net.URISyntaxException;

public class ah
{
  private static final aa c = new aa(ah.class);
  protected final b a;
  protected final URI b;
  private h d;

  public ah(b paramb, String paramString)
  {
    try
    {
      aj.a("NemesisRpcService.NemesisRpcService");
      this.a = paramb;
      String str = paramString + b();
      try
      {
        this.b = new URI(str);
        return;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        throw new IllegalArgumentException("Bad RPC URI: " + str, localURISyntaxException);
      }
    }
    finally
    {
      aj.b();
    }
  }

  private boolean a(y paramy)
  {
    if ((paramy instanceof a))
    {
      this.a.d();
      return true;
    }
    if ((paramy instanceof com.nianticproject.ingress.shared.rpc.af))
    {
      b localb = this.a;
      com.nianticproject.ingress.shared.rpc.af localaf = (com.nianticproject.ingress.shared.rpc.af)paramy;
      c.a("[Forcing handshake] " + localaf.toString());
      return localb.c();
    }
    return false;
  }

  public final ah a(h paramh)
  {
    if (this.d == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.d = paramh;
      return this;
    }
  }

  public final <R, E> RpcResult<R, E> a(ab<R, E> paramab)
  {
    try
    {
      aj.a("NemesisRpcService.send(", paramab.c(), ")");
      Object localObject2 = null;
      int i = 0;
      while (true)
        if (i < 2)
          try
          {
            RpcResult localRpcResult = a().b(paramab);
            return localRpcResult;
          }
          catch (y localy)
          {
            if (a(localy))
              i++;
            else
              throw localy;
          }
    }
    finally
    {
      aj.b();
    }
    throw localy;
  }

  protected x a()
  {
    return new af(this.b, this.a.b(), this.d);
  }

  public final <R> R b(ab<R, Void> paramab)
  {
    try
    {
      aj.a("NemesisRpcService.sendOrFail(", paramab.c(), ")");
      Object localObject2 = null;
      int i = 0;
      while (true)
        if (i < 2)
          try
          {
            Object localObject3 = a().c(paramab);
            return localObject3;
          }
          catch (y localy)
          {
            if (a(localy))
              i++;
            else
              throw localy;
          }
    }
    finally
    {
      aj.b();
    }
    throw localy;
  }

  protected String b()
  {
    return "/rpc";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ah
 * JD-Core Version:    0.6.2
 */
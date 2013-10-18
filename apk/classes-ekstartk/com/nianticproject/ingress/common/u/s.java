package com.nianticproject.ingress.common.u;

import com.google.a.a.ak;
import com.google.a.d.u;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.e;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.l;
import com.nianticproject.ingress.shared.rpc.n;
import com.nianticproject.ingress.shared.rpc.y;

public class s
{
  private static final aa a = new aa(s.class);
  private final b b;
  private final String c;
  private final j d;
  private final f e;

  public s(b paramb, String paramString, j paramj, f paramf)
  {
    this.b = paramb;
    this.c = paramString;
    this.d = paramj;
    this.e = paramf;
  }

  private <T> ak<T, e> a(ab<T, Void> paramab, ad paramad)
  {
    try
    {
      aj.a("GameStateLoaderRpcService.send(", paramab.c(), ")");
      i locali = new i();
      ah localah = new ah(this.b, this.c);
      localah.a(locali);
      try
      {
        RpcResult localRpcResult = localah.a(paramab);
        if (paramad != null)
          paramad.a(false);
        GameBasket localGameBasket = locali.a;
        e locale = null;
        if (localGameBasket != null)
        {
          j.a(locali.a);
          locale = this.d.c(locali.a);
        }
        ak localak2 = ak.a(localRpcResult.a(), locale);
        return localak2;
      }
      catch (y localy)
      {
        if (paramad != null)
          paramad.a(true);
        ak localak1 = ak.a(null, null);
        if (locali.a != null)
        {
          j.a(locali.a);
          this.d.c(locali.a);
        }
        return localak1;
      }
      finally
      {
        if (locali.a != null)
        {
          j.a(locali.a);
          this.d.c(locali.a);
        }
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final ak<e, Long> a(long paramLong)
  {
    ak localak = a(ag.a(paramLong), null);
    return ak.a(localak.b, localak.a);
  }

  public final ak<e, long[]> a(u paramu, long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = 0;
    n localn = ag.a(paramArrayOfLong1, paramArrayOfLong2);
    ad localad = this.d.a((l)localn.d(), paramu);
    this.e.a(null, (GameplayRpcParams)localn.d(), false, true);
    ak localak = a(localn, localad);
    long[] arrayOfLong2;
    if (localak.a != null)
    {
      arrayOfLong2 = new long[paramArrayOfLong2.length];
      while (i < paramArrayOfLong2.length)
      {
        arrayOfLong2[i] = Math.max(paramArrayOfLong2[i], ((Long)localak.a).longValue());
        i++;
      }
    }
    for (long[] arrayOfLong1 = arrayOfLong2; ; arrayOfLong1 = null)
      return new ak(localak.b, arrayOfLong1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.s
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ab;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.gameentity.components.EntityScore;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

public final class q extends j<LinkResult, n>
{
  private final String a;
  private final String b;
  private final String c;
  private final com.nianticproject.ingress.common.g.e d;
  private final a e;

  public q(com.nianticproject.ingress.common.u.q paramq, String paramString1, String paramString2, String paramString3, com.nianticproject.ingress.common.g.e parame, a parama)
  {
    super(paramq);
    this.a = ((String)an.a(paramString1));
    this.b = ((String)an.a(paramString2));
    this.c = ((String)an.a(paramString3));
    this.d = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.e = ((a)an.a(parama));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<LinkResult, n> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      if (((LinkResult)paramRpcResult.a()).newRegionGuids.isEmpty());
      for (bs localbs = bs.c; ; localbs = bs.b)
      {
        o.a().a(localbs);
        this.e.a("Link established!");
        Iterator localIterator1 = ((LinkResult)paramRpcResult.a()).newRegionGuids.iterator();
        while (localIterator1.hasNext())
        {
          String str = (String)localIterator1.next();
          Iterator localIterator2 = paramRpcResult.d().c().a().iterator();
          while (localIterator2.hasNext())
          {
            com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
            if ((localf.getGuid().equals(str)) && (localf != null))
            {
              EntityScore localEntityScore = (EntityScore)localf.getComponent(EntityScore.class);
              if (localEntityScore != null)
              {
                a locala = this.e;
                Object[] arrayOfObject = new Object[1];
                arrayOfObject[0] = Long.valueOf(localEntityScore.getScore());
                locala.a(String.format("Field established! +%d mind units", arrayOfObject));
              }
            }
          }
        }
      }
      return null;
    }
    return new aj(this.d, this.c);
  }

  protected final Result<t<LinkResult, n>, n> c()
  {
    if (this.d.a(Collections.singleton(this.c)))
    {
      o.a().a(bs.aI);
      return Result.a(ab.a(this.a, this.b, this.c));
    }
    return Result.b(n.s);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.q
 * JD-Core Version:    0.6.2
 */
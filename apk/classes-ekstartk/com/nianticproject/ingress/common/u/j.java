package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.model.d;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.l;
import java.util.List;
import java.util.Set;

public class j
{
  private static final aa a = new aa(j.class);
  private final i b;
  private final com.nianticproject.ingress.common.model.k c;
  private final d d;
  private final com.nianticproject.ingress.common.g.e e;
  private final p f;
  private final f g;

  public j(i parami, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.model.k paramk, d paramd, f paramf)
  {
    this.b = ((i)an.a(parami));
    this.e = parame;
    this.c = paramk;
    this.d = paramd;
    this.f = new o(this, (byte)0);
    this.g = paramf;
  }

  protected j(i parami, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.model.k paramk, d paramd, p paramp, f paramf)
  {
    this.b = ((i)an.a(parami));
    this.e = parame;
    this.c = paramk;
    this.d = paramd;
    this.f = paramp;
    this.g = paramf;
  }

  private static com.nianticproject.ingress.shared.model.e a(com.nianticproject.ingress.shared.rpc.f paramf)
  {
    try
    {
      aj.a("gameBasketHandler.createGameStateUpdateFromGameBasket");
      com.nianticproject.ingress.shared.model.f localf = SimpleGameStateUpdate.l();
      Set localSet1 = paramf.a();
      if (localSet1 != null)
        localf.a(localSet1);
      Set localSet2 = paramf.b();
      if (localSet2 != null)
        localf.b(localSet2);
      Set localSet3 = paramf.d();
      if (localSet3 != null)
        localf.a(localSet3, paramf.e());
      Set localSet4 = paramf.c();
      if (localSet4 != null)
        localf.a(localSet4);
      SimpleGameStateUpdate localSimpleGameStateUpdate = localf.a();
      return localSimpleGameStateUpdate;
    }
    finally
    {
      aj.b();
    }
  }

  public static void a(GameBasket paramGameBasket)
  {
    am.a().a(paramGameBasket);
  }

  private void a(GameBasket paramGameBasket, com.nianticproject.ingress.shared.model.e parame)
  {
    List localList = paramGameBasket.e();
    if (localList != null)
      this.g.a(localList);
    this.b.a(new k(this, parame, paramGameBasket));
  }

  public final ad a(l paraml, long paramLong)
  {
    return this.f.a(paraml, paramLong, this.c.g().a());
  }

  public final ad a(l paraml, u paramu)
  {
    return this.f.a(paraml, 0L, paramu);
  }

  public final void b(GameBasket paramGameBasket)
  {
    try
    {
      aj.a("GameRpcHandler.onGameBasket");
      a(paramGameBasket, a(paramGameBasket.c()));
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final com.nianticproject.ingress.shared.model.e c(GameBasket paramGameBasket)
  {
    try
    {
      aj.a("GameRpcHandler.partialProcessGameBasketForGameStateLoader");
      com.nianticproject.ingress.shared.model.e locale = a(paramGameBasket.c());
      a(paramGameBasket, null);
      return locale;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.j
 * JD-Core Version:    0.6.2
 */
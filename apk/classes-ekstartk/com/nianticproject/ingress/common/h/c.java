package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.u.aq;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.ImmutableLocationE6;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.SimpleResonator;
import com.nianticproject.ingress.gameentity.components.SimpleTeam;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ab;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;
import java.util.Set;

public class c extends j<String, com.nianticproject.ingress.shared.ad>
{
  private static final aa a = new aa(c.class);
  private final com.nianticproject.ingress.common.a b;
  private final com.nianticproject.ingress.common.g.e c;
  private final com.nianticproject.ingress.common.c.e d;
  private final k e;
  private final String f;
  private final com.nianticproject.ingress.gameentity.f g;
  private final Portal h;
  private final int i;
  private com.nianticproject.ingress.gameentity.f j;

  public c(com.nianticproject.ingress.common.u.q paramq, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.g.e parame, k paramk, String paramString, com.nianticproject.ingress.gameentity.f paramf, int paramInt)
  {
    super(paramq);
    this.b = ((com.nianticproject.ingress.common.a)an.a(parama));
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.e = paramk;
    this.f = ((String)an.a(paramString));
    this.g = ((com.nianticproject.ingress.gameentity.f)an.a(paramf));
    this.h = ((Portal)an.a(paramf.getComponent(Portal.class)));
    this.d = o.a();
    this.i = paramInt;
  }

  public static boolean a(String paramString)
  {
    if (paramString != null)
      return paramString.startsWith("tmp-");
    return false;
  }

  protected com.nianticproject.ingress.common.x.f a(RpcResult<String, com.nianticproject.ingress.shared.ad> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      if (this.h.getOccupiedSlots().size() == 1)
        this.d.a(bs.n);
      while (true)
      {
        this.b.c("Successfully deployed");
        return new ak(SimpleGameStateUpdate.m().a(Collections.singleton(this.j.getGuid())).a(), this.c);
        this.d.a(bs.az);
      }
    }
    this.d.a(bs.E);
    com.nianticproject.ingress.common.a locala = this.b;
    com.nianticproject.ingress.shared.ad localad = (com.nianticproject.ingress.shared.ad)paramRpcResult.b();
    locala.c("Deployment failed (" + com.nianticproject.ingress.common.ui.c.a().a(localad) + ")");
    return new d(this);
  }

  protected final Result<t<String, com.nianticproject.ingress.shared.ad>, com.nianticproject.ingress.shared.ad> c()
  {
    this.d.a(bs.aC);
    this.b.c("Deploying...");
    if (this.j == null)
    {
      a.c("Some items already being used or do not exist (can be caused if the user selects items faster than we can mark them used).");
      return Result.b(com.nianticproject.ingress.shared.ad.s);
    }
    com.nianticproject.ingress.gameentity.f localf = this.c.b(this.f);
    if (localf == null)
    {
      aa localaa = a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.f;
      localaa.c("Can not find resonator resource entity (id: %s) in inventory.", arrayOfObject);
      return Result.b(com.nianticproject.ingress.shared.ad.s);
    }
    ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)an.a(localf.getComponent(ResourceWithLevels.class));
    int k = com.nianticproject.ingress.common.q.h().c(localResourceWithLevels.getLevel());
    return Result.a(aq.a(this.f, this.g.getGuid(), this.i, k));
  }

  public final Result<String, com.nianticproject.ingress.shared.ad> f()
  {
    if (!this.c.a(Collections.singleton(this.f)))
      return Result.b(com.nianticproject.ingress.shared.ad.H);
    com.nianticproject.ingress.gameentity.f localf1;
    Result localResult1;
    if (this.j == null)
    {
      localf1 = this.c.b(this.f);
      if (localf1 == null)
      {
        aa localaa = a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.f;
        localaa.c("Can not find resonator resource entity (id: %s) in inventory.", arrayOfObject);
        localResult1 = Result.b(com.nianticproject.ingress.shared.ad.s);
      }
    }
    while (!localResult1.e())
    {
      this.c.b(Collections.singleton(this.f));
      return Result.b(localResult1.d());
      ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)localf1.getComponent(ResourceWithLevels.class);
      if (localResourceWithLevels == null)
      {
        a.c("Creating resonator with resource entity that is not a resource with level, ID: " + this.f);
        localResult1 = Result.b(com.nianticproject.ingress.shared.ad.f);
      }
      else
      {
        u localu1 = ((com.nianticproject.ingress.common.ad)an.a(this.e.g())).a();
        ai localai = this.e.h();
        com.nianticproject.ingress.gameentity.f localf2 = this.g;
        int k = localResourceWithLevels.getLevel();
        String str = this.e.k();
        ImmutableLocationE6 localImmutableLocationE6 = com.nianticproject.ingress.shared.b.a.b(localu1);
        r localr;
        label272: Result localResult2;
        if ((this.i < 0) || (this.i >= 8))
        {
          localr = ac.a((Portal)localf2.getComponent(Portal.class), localImmutableLocationE6);
          if (localr != null)
            break label341;
          localResult2 = Result.b(com.nianticproject.ingress.shared.ad.m);
        }
        while (true)
        {
          if (localResult2.e())
            break label487;
          a.c("Creating pending resonator failed: " + localResult2.d());
          localResult1 = localResult2.b();
          break;
          localr = r.a(this.i);
          break label272;
          label341: LocationE6 localLocationE6 = (LocationE6)localf2.getComponent(LocationE6.class);
          if (localLocationE6 == null)
          {
            localResult2 = Result.b(com.nianticproject.ingress.shared.ad.u);
          }
          else
          {
            u localu2 = ac.a(localLocationE6, localImmutableLocationE6, localr);
            GameEntityBuilder localGameEntityBuilder = new GameEntityBuilder("tmp-" + ()(9.223372036854776E+18D * Math.random()));
            localGameEntityBuilder.a(new SimpleResonator(k, localf2.getGuid(), str));
            localGameEntityBuilder.a(new SimpleTeam(localai));
            localGameEntityBuilder.a(com.nianticproject.ingress.shared.b.a.b(localu2));
            localResult2 = Result.a(new com.google.a.a.ak(localGameEntityBuilder.a(), localr));
          }
        }
        label487: Result localResult3 = new ab(com.nianticproject.ingress.common.q.b()).a((com.nianticproject.ingress.gameentity.f)((com.google.a.a.ak)localResult2.c()).a, this.h, this.e.k(), (r)((com.google.a.a.ak)localResult2.c()).b);
        if (!localResult3.e())
        {
          a.b("Deploy pending resonator failed: " + localResult3.d());
          localResult1 = localResult3.b();
        }
        else
        {
          this.j = ((com.nianticproject.ingress.gameentity.f)((com.google.a.a.ak)localResult2.c()).a);
          com.nianticproject.ingress.common.g.e locale = this.c;
          com.nianticproject.ingress.gameentity.f[] arrayOff = new com.nianticproject.ingress.gameentity.f[2];
          arrayOff[0] = this.j;
          arrayOff[1] = this.g;
          locale.a(SimpleGameStateUpdate.m().a(jc.a(arrayOff)).a());
          localResult1 = Result.a();
        }
      }
    }
    return Result.a(this.j.getGuid());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.c
 * JD-Core Version:    0.6.2
 */
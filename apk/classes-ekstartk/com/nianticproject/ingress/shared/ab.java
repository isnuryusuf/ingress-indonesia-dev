package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.ht;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.gameentity.components.Captured;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.PlayerActionRange;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.SimpleCaptured;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.b.a;

public final class ab
{
  private final PortalKnobBundle a;

  public ab(PortalKnobBundle paramPortalKnobBundle)
  {
    this.a = ((PortalKnobBundle)an.a(paramPortalKnobBundle));
  }

  private Result<Void, ad> a(Portal paramPortal, f paramf, u paramu, ai paramai, long paramLong, int paramInt, String paramString, Resonator paramResonator)
  {
    int i;
    if (paramResonator != null)
    {
      i = 1;
      if (paramf != null)
        break label46;
    }
    label46: for (ResourceWithLevels localResourceWithLevels1 = null; ; localResourceWithLevels1 = (ResourceWithLevels)paramf.getComponent(ResourceWithLevels.class))
    {
      if ((localResourceWithLevels1 != null) && (localResourceWithLevels1.getResourceType() == af.a))
        break label62;
      return Result.b(ad.h);
      i = 0;
      break;
    }
    label62: int j = localResourceWithLevels1.getLevel();
    if (j > paramInt)
      return Result.b(ad.y);
    if (b.a(paramPortal.getEntity(), paramai))
      return Result.b(ad.p);
    if (!ac.a(a.b(paramu), paramPortal))
      return Result.b(ad.q);
    XmCostKnobs localXmCostKnobs = q.h();
    boolean bool = paramPortal.getFreeSlots().isEmpty();
    if ((bool) && (i == 0))
      return Result.b(ad.m);
    if ((!bool) && (i != 0))
      return Result.b(ad.n);
    if ((i != 0) && (j <= paramResonator.getLevel()))
      return Result.b(ad.v);
    ht localht = paramPortal.resonatorLevelsForOwner(paramString);
    if (i != 0)
      localht.remove(Integer.valueOf(paramResonator.getLevel()));
    ResourceWithLevels localResourceWithLevels2 = (ResourceWithLevels)paramf.getComponent(ResourceWithLevels.class);
    if (localResourceWithLevels2 == null)
      throw new IllegalArgumentException("missing ResourceWithLevels component: entity=" + paramf);
    localht.add(Integer.valueOf(localResourceWithLevels2.getLevel()));
    if (!this.a.a().a(localht))
      return Result.b(ad.F);
    if (i != 0);
    for (long l = localXmCostKnobs.c(j); l >= paramLong; l = localXmCostKnobs.b(j))
      return Result.b(ad.b);
    if (i != 0)
    {
      if (!paramPortal.getEntityGuid().equals(paramResonator.getLinkedPortalGuid()))
        return Result.b(ad.w);
      if (paramPortal.resonatorOwner(paramResonator.getEntityGuid()) == null)
        return Result.b(ad.E);
    }
    return Result.a(null);
  }

  public final Result<Void, ad> a(Portal paramPortal, Resonator paramResonator, f paramf, u paramu, ai paramai, long paramLong, int paramInt, String paramString)
  {
    return a(paramPortal, paramf, paramu, paramai, paramLong, paramInt, paramString, paramResonator);
  }

  public final Result<Void, ad> a(Portal paramPortal, f paramf, u paramu, ai paramai, long paramLong, int paramInt, String paramString)
  {
    return a(paramPortal, paramf, paramu, paramai, paramLong, paramInt, paramString, null);
  }

  public final Result<Void, ad> a(f paramf, Portal paramPortal, String paramString, r paramr)
  {
    ControllingTeam localControllingTeam = (ControllingTeam)paramf.getComponent(ControllingTeam.class);
    f localf = paramPortal.getEntity();
    Result localResult;
    if (localf == null)
      localResult = Result.b(ad.o);
    label304: label361: 
    while (true)
    {
      return localResult;
      LocationE6 localLocationE6 = (LocationE6)paramf.getComponent(LocationE6.class);
      Resonator localResonator = (Resonator)paramf.getComponent(Resonator.class);
      if (localResonator == null)
        return Result.b(ad.e);
      int i = localResonator.getLevel();
      Integer localInteger = Integer.valueOf(i);
      if (b.a(paramPortal.getEntity(), localControllingTeam.getTeam()))
        localResult = Result.b(ad.p);
      while (true)
      {
        if (!localResult.e())
          break label361;
        long l = System.currentTimeMillis();
        ai localai = b.a(localf);
        paramPortal.addLinkedResonator(paramf.getGuid(), i, paramr, paramString);
        if (localai != ai.c)
          break;
        localf.remove(Captured.class);
        localf.add(new SimpleCaptured(l, paramString));
        localf.remove(ControllingTeam.class);
        localf.add(localControllingTeam);
        return localResult;
        if (paramPortal.getFreeSlots().isEmpty())
        {
          localResult = Result.b(ad.m);
        }
        else
        {
          u localu = localLocationE6.getIndexPoint();
          PlayerActionRange localPlayerActionRange = (PlayerActionRange)paramPortal.getEntity().getComponent(PlayerActionRange.class);
          if ((localPlayerActionRange != null) && (localPlayerActionRange.inRange(localu)));
          for (int j = 1; ; j = 0)
          {
            if (j != 0)
              break label304;
            localResult = Result.b(ad.q);
            break;
          }
          int k = localInteger.intValue();
          if (paramPortal.resonatorLevelsForOwner(paramString).a(Integer.valueOf(k)) >= this.a.a().a(k))
            localResult = Result.b(ad.F);
          else
            localResult = Result.a(null);
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.ab
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.model.d;
import java.util.Iterator;
import java.util.Set;

public final class ac
{
  public static u a(LocationE6 paramLocationE61, LocationE6 paramLocationE62, r paramr)
  {
    u localu = paramLocationE61.getLatLng();
    double d = localu.a(paramLocationE62.getLatLng());
    return a.b(localu, Math.toDegrees(paramr.c()), Math.max(d, 2.0D));
  }

  public static Result<Void, ad> a(Portal paramPortal, f paramf, Set<Resonator> paramSet, u paramu, ai paramai, long paramLong1, long paramLong2)
  {
    PortalCoupler localPortalCoupler = (PortalCoupler)paramf.getComponent(PortalCoupler.class);
    if ((localPortalCoupler == null) || (!localPortalCoupler.getPortalGuid().equals(paramPortal.getEntityGuid())))
      return Result.b(ad.G);
    if (b(a.b(paramu), paramPortal) > 250000L * paramLong2)
      return Result.b(ad.q);
    return a(d.f, paramPortal, paramSet, paramai, paramLong1);
  }

  public static Result<Void, ad> a(Portal paramPortal, Set<Resonator> paramSet, u paramu, ai paramai, long paramLong)
  {
    if (!a(a.b(paramu), paramPortal))
      return Result.b(ad.q);
    return a(d.e, paramPortal, paramSet, paramai, paramLong);
  }

  private static Result<Void, ad> a(d paramd, Portal paramPortal, Set<Resonator> paramSet, ai paramai, long paramLong)
  {
    if ((paramd == d.e) || (paramd == d.f));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      if (!b.a(paramPortal.getEntity(), paramai))
        break;
      return Result.b(ad.p);
    }
    if (paramd.a() >= paramLong)
      return Result.b(ad.b);
    Iterator localIterator = paramSet.iterator();
    Object localObject1 = null;
    int i = 0;
    Resonator localResonator;
    Energy localEnergy;
    if (localIterator.hasNext())
    {
      localResonator = (Resonator)localIterator.next();
      localEnergy = (Energy)localResonator.getEntity().getComponent(Energy.class);
      if (localObject1 != null)
        break label192;
    }
    label192: label249: label254: for (Object localObject2 = ((Resonator)localResonator.getEntity().getComponent(Resonator.class)).getLinkedPortalGuid(); ; localObject2 = localObject1)
    {
      if (localEnergy != null)
      {
        if (localEnergy.getTotal() < localResonator.getEnergyCapacity());
        for (i = 1; i != 0; i = 0)
        {
          if (i != 0)
            break label249;
          return Result.b(ad.A);
          if (((Resonator)localResonator.getEntity().getComponent(Resonator.class)).getLinkedPortalGuid().equals(localObject1))
            break label254;
          return Result.b(ad.C);
        }
      }
      return Result.b(ad.D);
      localObject1 = localObject2;
      break;
      return Result.a(null);
    }
  }

  public static r a(Portal paramPortal, LocationE6 paramLocationE6)
  {
    Object localObject1 = null;
    du localdu = paramPortal.getFreeSlots();
    LocationE6 localLocationE6 = (LocationE6)paramPortal.getEntity().getComponent(LocationE6.class);
    if (localLocationE6 == null);
    double d1;
    double d2;
    for (Object localObject2 = null; localdu.contains(localObject2); localObject2 = r.a(Math.atan2(111133.0D * (d1 - localLocationE6.getLatE6() / 1000000.0D), (d2 - localLocationE6.getLngE6() / 1000000.0D) * a.a(d1))))
    {
      return localObject2;
      d1 = paramLocationE6.getLatE6() / 1000000.0D;
      d2 = paramLocationE6.getLngE6() / 1000000.0D;
    }
    Iterator localIterator = localdu.iterator();
    Object localObject3;
    if (localIterator.hasNext())
    {
      localObject3 = (r)localIterator.next();
      if ((localObject1 != null) && (localObject1.a((r)localObject2) <= ((r)localObject3).a((r)localObject2)))
        break label184;
    }
    while (true)
    {
      localObject1 = localObject3;
      break;
      return localObject1;
      label184: localObject3 = localObject1;
    }
  }

  public static boolean a(u paramu, Portal paramPortal)
  {
    return a(a.b(paramu), paramPortal);
  }

  public static boolean a(LocationE6 paramLocationE6, Portal paramPortal)
  {
    return b(paramLocationE6, paramPortal) <= 40.0D;
  }

  public static boolean a(f paramf, u paramu1, u paramu2)
  {
    Portal localPortal = (Portal)paramf.getComponent(Portal.class);
    if ((localPortal == null) || (paramu2 == null))
      return false;
    if (paramu1 == null)
      return true;
    return a(paramu1, localPortal) != a(paramu2, localPortal);
  }

  private static double b(LocationE6 paramLocationE6, Portal paramPortal)
  {
    LocationE6 localLocationE6 = (LocationE6)paramPortal.getEntity().getComponent(LocationE6.class);
    if (localLocationE6 == null)
      return (1.0D / 0.0D);
    return a.a(paramLocationE6, localLocationE6);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.ac
 * JD-Core Version:    0.6.2
 */
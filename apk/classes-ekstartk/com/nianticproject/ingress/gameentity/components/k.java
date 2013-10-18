package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ak;
import com.google.a.c.ct;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.h.c;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.portal.a;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.gameentity.g;
import com.nianticproject.ingress.knobs.PortalModSharedKnobs;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.r;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class k
{
  private static final aa a = new aa(k.class);

  public static float a(String paramString, g paramg)
  {
    ak localak = a(paramg.getGameEntity(paramString), paramg);
    int i = ((Integer)localak.a).intValue();
    int j = ((Integer)localak.b).intValue();
    if (j == 0)
      return 1.0F;
    return i / j;
  }

  public static int a(Portal paramPortal, ai paramai)
  {
    ai localai = b.a(paramPortal.getEntity());
    return a.a(q.h(), localai, paramPortal.getLevel(), paramai);
  }

  public static int a(Iterable<Integer> paramIterable)
  {
    return a.a(paramIterable);
  }

  public static long a(Modable paramModable, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    return a.a(paramModable, paramPortalModSharedKnobs);
  }

  public static long a(Iterable<Integer> paramIterable, Modable paramModable)
  {
    return a.a(paramIterable, paramModable, q.j());
  }

  public static ak<Integer, Integer> a(f paramf, g paramg)
  {
    int i;
    int j;
    int n;
    int k;
    if (paramf != null)
    {
      Portal localPortal = (Portal)paramf.getComponent(Portal.class);
      if (localPortal != null)
      {
        Iterator localIterator = localPortal.getLinkedResonatorGuids().d_().iterator();
        i = 0;
        j = 0;
        if (localIterator.hasNext())
        {
          f localf = paramg.getGameEntity((String)localIterator.next());
          if (localf == null)
            break label181;
          Resonator localResonator = (Resonator)localf.getComponent(Resonator.class);
          Energy localEnergy = (Energy)localf.getComponent(Energy.class);
          if ((localResonator == null) || (localEnergy == null))
            break label181;
          n = j + localResonator.getEnergyCapacity();
          k = i + localEnergy.getTotal();
        }
      }
    }
    for (int m = n; ; m = j)
    {
      i = k;
      j = m;
      break;
      return new ak(Integer.valueOf(i), Integer.valueOf(j));
      return new ak(Integer.valueOf(0), Integer.valueOf(0));
      label181: k = i;
    }
  }

  public static r a(Portal paramPortal, String paramString)
  {
    Iterator localIterator = paramPortal.getLinkedResonatorGuids().f().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.equals(localEntry.getValue()))
        return (r)localEntry.getKey();
    }
    return null;
  }

  public static Map<r, f> a(g paramg, Portal paramPortal)
  {
    HashMap localHashMap;
    while (true)
    {
      Map.Entry localEntry;
      f localf;
      try
      {
        aj.a("Portals.loadLinkedResonatorGameEntities");
        localHashMap = hc.b();
        dh localdh = paramPortal.getLinkedResonatorGuids();
        String str1 = paramPortal.getEntityGuid();
        Iterator localIterator = localdh.entrySet().iterator();
        if (!localIterator.hasNext())
          break;
        localEntry = (Map.Entry)localIterator.next();
        String str2 = (String)localEntry.getValue();
        if (c.a(str2))
          continue;
        localf = paramg.getGameEntity(str2);
        if (localf == null)
        {
          aa localaa = a;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localEntry.getValue();
          arrayOfObject[1] = str1;
          localaa.b("Trying to look up resonator (%s) for portal (%s) but unable to locate it in the cache.", arrayOfObject);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      localHashMap.put(localEntry.getKey(), localf);
    }
    aj.b();
    return localHashMap;
  }

  public static long b(Modable paramModable, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    return a.b(paramModable, paramPortalModSharedKnobs);
  }

  public static float[] b(f paramf, g paramg)
  {
    float[] arrayOfFloat = new float[8];
    for (int i = 0; i < 8; i++)
      arrayOfFloat[i] = 0.0F;
    int j;
    int m;
    if (paramf != null)
    {
      Portal localPortal = (Portal)paramf.getComponent(Portal.class);
      if (localPortal != null)
      {
        Iterator localIterator = localPortal.getLinkedResonatorGuids().d_().iterator();
        j = 0;
        if (localIterator.hasNext())
        {
          f localf = paramg.getGameEntity((String)localIterator.next());
          if (localf == null)
            break label193;
          Resonator localResonator = (Resonator)localf.getComponent(Resonator.class);
          Energy localEnergy = (Energy)localf.getComponent(Energy.class);
          if ((localResonator == null) || (localEnergy == null))
            break label193;
          m = j + 1;
          arrayOfFloat[j] = (localEnergy.getTotal() / localResonator.getEnergyCapacity());
          if (m <= 8)
            break label182;
          a.c("Encounted more than 8 resonators in a portal");
        }
      }
    }
    Arrays.sort(arrayOfFloat);
    return arrayOfFloat;
    label182: label193: for (int k = m; ; k = j)
    {
      j = k;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.k
 * JD-Core Version:    0.6.2
 */
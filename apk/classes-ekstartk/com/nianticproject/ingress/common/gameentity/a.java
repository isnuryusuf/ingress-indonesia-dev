package com.nianticproject.ingress.common.gameentity;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.gameentity.components.AccessLevel;
import com.nianticproject.ingress.gameentity.components.AccessLevel.RestrictedUsageResult;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.InventoryKnobs;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public final class a
{
  public static com.google.a.a.aj<Collection<f>> a(k paramk, af paramaf)
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("InventoryItems.getUsableResources");
        ArrayList localArrayList = eq.a();
        i = 0;
        Iterator localIterator = paramk.a(Collections.singleton(paramaf)).iterator();
        if (localIterator.hasNext())
        {
          f localf = (f)localIterator.next();
          if (a(paramk, localf))
            localArrayList.add(localf);
        }
        else
        {
          if (i != 0)
          {
            com.google.a.a.aj localaj1 = com.google.a.a.aj.b(localArrayList);
            localObject2 = localaj1;
            return localObject2;
          }
          com.google.a.a.aj localaj2 = com.google.a.a.aj.d();
          Object localObject2 = localaj2;
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      int i = 1;
    }
  }

  public static com.google.a.a.aj<Collection<f>> a(k paramk, Set<af> paramSet)
  {
    int i = 0;
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("InventoryItems.getUsableResources");
        if (paramSet.isEmpty())
          break label131;
        bool = true;
        an.a(bool);
        ArrayList localArrayList = eq.a();
        Iterator localIterator = paramk.a(paramSet).iterator();
        if (localIterator.hasNext())
        {
          f localf = (f)localIterator.next();
          if (a(paramk, localf))
            localArrayList.add(localf);
        }
        else
        {
          if (i != 0)
          {
            com.google.a.a.aj localaj1 = com.google.a.a.aj.b(localArrayList);
            localObject2 = localaj1;
            return localObject2;
          }
          com.google.a.a.aj localaj2 = com.google.a.a.aj.d();
          Object localObject2 = localaj2;
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      i = 1;
      continue;
      label131: boolean bool = false;
    }
  }

  public static com.nianticproject.ingress.common.inventory.ui.q a(k paramk, String paramString)
  {
    HashSet localHashSet;
    try
    {
      com.nianticproject.ingress.shared.aj.a("InventoryItems.getPortalKeyForPortal");
      com.google.a.a.aj localaj = a(paramk, af.i);
      boolean bool = localaj.a();
      if (!bool)
        return null;
      localHashSet = new HashSet();
      Iterator localIterator = ((Collection)localaj.b()).iterator();
      while (localIterator.hasNext())
      {
        f localf = (f)localIterator.next();
        PortalCoupler localPortalCoupler = (PortalCoupler)localf.getComponent(PortalCoupler.class);
        if ((localPortalCoupler != null) && (localPortalCoupler.getPortalGuid().equals(paramString)))
          localHashSet.add(localf);
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
    if (localHashSet.size() > 0)
    {
      com.nianticproject.ingress.common.inventory.ui.q localq = (com.nianticproject.ingress.common.inventory.ui.q)com.nianticproject.ingress.common.inventory.ui.q.a(paramk, localHashSet).get(0);
      com.nianticproject.ingress.shared.aj.b();
      return localq;
    }
    com.nianticproject.ingress.shared.aj.b();
    return null;
  }

  public static f a(k paramk, List<af> paramList)
  {
    int i = 0;
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("InventoryItems.getHighestUsableResource");
        if (paramList.contains(af.a))
          break label222;
        bool = true;
        an.a(bool, "use getHighestUsableResonator() instead");
        j = 2147483647;
        Iterator localIterator = paramk.a(paramList).iterator();
        localObject2 = null;
        if (localIterator.hasNext())
        {
          f localf3 = (f)localIterator.next();
          localObject3 = (ResourceWithLevels)localf3.getComponent(ResourceWithLevels.class);
          if (localObject3 != null)
          {
            int k = ((ResourceWithLevels)localObject3).getLevel();
            int m = paramList.indexOf(((ResourceWithLevels)localObject3).getResourceType());
            if ((m != -1) && ((m < j) || ((m == j) && (k > i))) && (a(paramk, localf3)))
            {
              n = m;
              i1 = k;
              break label208;
            }
          }
        }
        else
        {
          if (localObject2 != null)
          {
            f localf1 = localObject2.getEntity();
            localf2 = localf1;
            return localf2;
          }
          f localf2 = null;
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      int n = j;
      Object localObject3 = localObject2;
      int i1 = i;
      label208: Object localObject2 = localObject3;
      i = i1;
      int j = n;
      continue;
      label222: boolean bool = false;
    }
  }

  public static Collection<f> a(k paramk, af[] paramArrayOfaf)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("InventoryItems.getResources");
      Collection localCollection = paramk.a(jc.a(paramArrayOfaf));
      return localCollection;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static boolean a(k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("InventoryItems.isInventoryFull");
      int i = c(paramk);
      int j = com.nianticproject.ingress.common.q.d().a();
      return i >= j;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static boolean a(k paramk, f paramf)
  {
    AccessLevel localAccessLevel = (AccessLevel)paramf.getComponent(AccessLevel.class);
    return (localAccessLevel == null) || (localAccessLevel.usage(paramk.l()).a());
  }

  public static Map<Integer, f> b(k paramk)
  {
    TreeMap localTreeMap;
    try
    {
      com.nianticproject.ingress.shared.aj.a("InventoryItems.getUsableInventoryModEntities");
      localTreeMap = hc.e();
      Collection localCollection = paramk.a(g.c());
      if (localCollection != null)
      {
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext())
        {
          f localf = (f)localIterator.next();
          ModResource localModResource = (ModResource)localf.getComponent(ModResource.class);
          if ((localModResource != null) && (g.a.contains(localModResource.getResourceType())) && (a(paramk, localf)))
            localTreeMap.put(Integer.valueOf(localModResource.getRarity().c()), localf);
        }
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
    com.nianticproject.ingress.shared.aj.b();
    return localTreeMap;
  }

  private static int c(k paramk)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("InventoryItems.countInventory");
      int i = paramk.m();
      return i;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.gameentity.a
 * JD-Core Version:    0.6.2
 */
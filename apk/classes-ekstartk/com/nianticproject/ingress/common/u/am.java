package com.nianticproject.ingress.common.u;

import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.Captured;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.SimpleDamageable;
import com.nianticproject.ingress.gameentity.components.SimplePortal;
import com.nianticproject.ingress.gameentity.components.SimpleResonator;
import com.nianticproject.ingress.gameentity.components.portal.PortalV2;
import com.nianticproject.ingress.gameentity.components.portal.ResonatorArray;
import com.nianticproject.ingress.gameentity.components.portal.ResonatorV2;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.model.b;
import com.nianticproject.ingress.shared.model.c;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class am
  implements h
{
  private static final am a = new am();
  private final Map<String, an> b = hc.b();

  public static am a()
  {
    return a;
  }

  private static void a(Set<String> paramSet, Set<com.nianticproject.ingress.gameentity.f> paramSet1, an paraman, ResonatorArray paramResonatorArray, SimplePortal paramSimplePortal)
  {
    com.google.a.a.an.a(paramSet);
    com.google.a.a.an.a(paramSet1);
    com.google.a.a.an.a(paraman);
    com.google.a.a.an.a(paramResonatorArray);
    com.google.a.a.an.a(paramSimplePortal);
    r[] arrayOfr1 = r.values();
    int i = arrayOfr1.length;
    int j = 0;
    if (j < i)
    {
      r localr2 = arrayOfr1[j];
      int n = localr2.a();
      String str1 = paraman.a[n];
      ResonatorV2 localResonatorV22 = paramResonatorArray.getResonator(localr2);
      String str2;
      if (localResonatorV22 != null)
      {
        str2 = localResonatorV22.getId();
        label93: if ((localResonatorV22 != null) || (str1 == null))
          break label132;
        paramSet.add(str1);
        paraman.a[n] = null;
      }
      while (true)
      {
        j++;
        break;
        str2 = null;
        break label93;
        label132: if (localResonatorV22 != null)
        {
          com.google.a.a.an.a(str2);
          if ((str1 != null) && (!str2.equals(str1)))
            paramSet.add(str1);
          paraman.a[n] = str2;
          paramSet1.add(new GameEntityBuilder(str2, paramResonatorArray.getEntity().getLastModifiedMs()).a(new SimpleResonator(localResonatorV22.getLevel(), localResonatorV22.getEntityGuid(), localResonatorV22.getOwnerGuid())).a(localResonatorV22.getEntity().getComponent(ControllingTeam.class)).a(localResonatorV22.getEntity().getComponent(Captured.class)).a(new SimpleDamageable(localResonatorV22.getTotal())).a(a.b(localResonatorV22.getLocation())).a());
        }
      }
    }
    r[] arrayOfr2 = r.values();
    int k = arrayOfr2.length;
    int m = 0;
    while (m < k)
    {
      r localr1 = arrayOfr2[m];
      ResonatorV2 localResonatorV21 = paramResonatorArray.getResonator(localr1);
      if (localResonatorV21 != null)
      {
        com.google.a.a.an.a(paraman.a[localr1.a()].contains(localResonatorV21.getId()));
        paramSimplePortal.addLinkedResonator(paraman.a[localr1.a()], localResonatorV21.getLevel(), localr1, localResonatorV21.getOwnerGuid());
        m++;
      }
      else
      {
        if (paraman.a[localr1.a()] == null);
        for (boolean bool = true; ; bool = false)
        {
          com.google.a.a.an.a(bool);
          break;
        }
      }
    }
  }

  public final void a(GameBasket paramGameBasket)
  {
    while (true)
    {
      com.nianticproject.ingress.shared.rpc.f localf;
      HashSet localHashSet1;
      HashSet localHashSet2;
      int m;
      Set localSet;
      HashSet localHashSet3;
      com.nianticproject.ingress.gameentity.f localf1;
      PortalV2 localPortalV2;
      ResonatorArray localResonatorArray;
      String str1;
      long l;
      try
      {
        aj.a("PortalPostProcessor.onGameBasket");
        try
        {
          localf = paramGameBasket.c();
          localHashSet1 = jc.a();
          localHashSet2 = jc.a();
          Iterator localIterator1 = localf.c().iterator();
          if (localIterator1.hasNext())
          {
            String str4 = (String)localIterator1.next();
            an localan4 = (an)this.b.get(str4);
            if (localan4 == null)
              continue;
            String[] arrayOfString = localan4.a;
            int k = arrayOfString.length;
            m = 0;
            if (m >= k)
              continue;
            String str5 = arrayOfString[m];
            if (str5 == null)
              break label668;
            localHashSet1.add(str5);
            break label668;
          }
          localSet = localf.a();
          localHashSet3 = jc.a();
          Iterator localIterator2 = localSet.iterator();
          if (!localIterator2.hasNext())
            break label626;
          localf1 = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
          localPortalV2 = (PortalV2)localf1.getComponent(PortalV2.class);
          localResonatorArray = (ResonatorArray)localf1.getComponent(ResonatorArray.class);
          if ((localPortalV2 == null) || (localResonatorArray == null))
            continue;
          str1 = localf1.getGuid();
          l = localf1.getLastModifiedMs();
          an localan1 = (an)this.b.get(str1);
          if ((localan1 != null) && (localan1.b > l))
          {
            i = 1;
            if (i == 0)
              break label294;
            localHashSet3.add(localf1);
            continue;
          }
        }
        finally
        {
        }
      }
      finally
      {
        aj.b();
      }
      int i = 0;
      continue;
      label294: SimplePortal localSimplePortal = new SimplePortal();
      for (int j = 0; j < localPortalV2.maxModCount(); j++)
        localSimplePortal.setLinkedMod(localPortalV2.getLinkedMod(j), j);
      Iterator localIterator3 = localPortalV2.getLinkedEdges().iterator();
      if (localIterator3.hasNext())
      {
        b localb = (b)localIterator3.next();
        String str2 = localb.a();
        String str3 = localb.b();
        if (localb.c());
        for (c localc = c.a; ; localc = c.b)
        {
          localSimplePortal.addLinkedEdgeData(str2, str3, localc);
          break;
        }
      }
      if (localPortalV2.getDescriptiveTextLabels() != null)
      {
        Iterator localIterator4 = localPortalV2.getDescriptiveTextLabels().iterator();
        while (localIterator4.hasNext())
        {
          m localm = (m)localIterator4.next();
          localSimplePortal.addOrUpdateDescriptiveText(localm, localPortalV2.getDescriptiveText(localm));
        }
      }
      localf1.remove(PortalV2.class);
      localf1.add(localSimplePortal);
      an localan3;
      if (this.b.containsKey(str1))
      {
        localan3 = (an)this.b.get(str1);
        a(localHashSet1, localHashSet2, localan3, localResonatorArray, localSimplePortal);
      }
      an localan2;
      for (localan3.b = l; ; localan2.b = l)
      {
        localf1.remove(ResonatorArray.class);
        break;
        localan2 = new an(this, (byte)0);
        this.b.put(str1, localan2);
        a(localHashSet1, localHashSet2, localan2, localResonatorArray, localSimplePortal);
      }
      label626: localSet.removeAll(localHashSet3);
      localf.c().addAll(localHashSet1);
      localf.a().addAll(localHashSet2);
      aj.b();
      return;
      label668: m++;
    }
  }

  public final void b()
  {
    try
    {
      this.b.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.am
 * JD-Core Version:    0.6.2
 */
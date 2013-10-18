package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.StoryItem;
import com.nianticproject.ingress.gameentity.components.c;
import com.nianticproject.ingress.gameentity.components.d;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class q
{
  public static final t a = new t();
  public static final s b = new s();
  private static final aa c = new aa(q.class);
  private final af d;
  private f e;
  private final d f;
  private final l g;
  private final double h;
  private long i;
  private long j;
  private int k;

  private q(double paramDouble, af paramaf, f paramf, long paramLong)
  {
    this.d = paramaf;
    this.e = paramf;
    this.k = 1;
    this.h = paramDouble;
    Resource localResource = (Resource)this.e.getComponent(Resource.class);
    if ((localResource instanceof d));
    for (d locald = (d)localResource; ; locald = null)
    {
      this.f = locald;
      this.g = localResource.getRarity();
      this.i = paramLong;
      return;
    }
  }

  private q(af paramaf, f paramf, long paramLong)
  {
    this(0.0D, paramaf, paramf, paramLong);
  }

  private static long a(long paramLong1, long paramLong2, int paramInt)
  {
    boolean bool1 = true;
    long l = (1L << paramInt) - 1L;
    boolean bool2;
    if ((paramLong2 & (0xFFFFFFFF ^ l)) == 0L)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt > 63)
        break label67;
    }
    while (true)
    {
      an.a(bool1);
      return paramLong1 >> paramInt | (paramLong2 & l) << 63 - paramInt;
      bool2 = false;
      break;
      label67: bool1 = false;
    }
  }

  private static long a(af paramaf, long paramLong)
  {
    return a(a(0L, paramLong, 32), paramaf.c(), 8);
  }

  public static List<q> a(k paramk, Collection<f> paramCollection)
  {
    HashMap localHashMap1;
    HashMap localHashMap2;
    HashMap localHashMap3;
    f localf;
    af localaf;
    double d1;
    label384: c localc;
    while (true)
    {
      Resource localResource;
      try
      {
        aj.a("IndistinguishableItems.fromItemsByPlayerInfo");
        localHashMap1 = hc.a(paramCollection.size());
        localHashMap2 = hc.a(paramCollection.size());
        localHashMap3 = hc.a(paramCollection.size());
        if (paramk != null)
        {
          u localu1 = ((ad)an.a(paramk.g())).a();
          localu2 = localu1;
          try
          {
            aj.a("Separate");
            Iterator localIterator1 = paramCollection.iterator();
            if (!localIterator1.hasNext())
              break;
            localf = (f)localIterator1.next();
            localResource = (Resource)localf.getComponent(Resource.class);
            if (localResource == null)
              continue;
            localaf = localResource.getResourceType();
            switch (r.a[localaf.ordinal()])
            {
            case 6:
            default:
              a(localHashMap3, localf, localResource, localaf);
              continue;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            }
          }
          finally
          {
          }
        }
      }
      finally
      {
        aj.b();
      }
      u localu2 = null;
      continue;
      StoryItem localStoryItem = (StoryItem)localf.getComponent(StoryItem.class);
      if (localStoryItem != null)
      {
        String str2 = localStoryItem.getPrimaryUrl();
        q localq4 = (q)localHashMap2.get(str2);
        if (localq4 == null)
        {
          localHashMap2.put(str2, new q(localaf, localf, a(a(0L, 0xFFFFFFFF & System.currentTimeMillis() - localStoryItem.getReleaseDate(), 56), localaf.c(), 8)));
        }
        else
        {
          localq4.a(localf);
          continue;
          PortalCoupler localPortalCoupler = (PortalCoupler)localf.getComponent(PortalCoupler.class);
          if (localPortalCoupler != null)
          {
            String str1 = localPortalCoupler.getPortalGuid();
            q localq3 = (q)localHashMap1.get(str1);
            if (localq3 == null)
            {
              if (localu2 == null)
                break label779;
              d1 = localu2.a(localPortalCoupler.getPortalLocation());
              localHashMap1.put(str1, new q(d1, localaf, localf, 0L));
            }
            else
            {
              localq3.a(localf);
              continue;
              if (localf.getComponent(EmpWeapon.class) != null)
              {
                a(localHashMap3, localf, localResource, localaf);
              }
              else
              {
                c.c("Resource EMP_BURSTER or ULTRA_STRIKE guid " + localf.getGuid() + " missing EmpWeapon component");
                continue;
                FlipCard localFlipCard = (FlipCard)localf.getComponent(FlipCard.class);
                if (localFlipCard != null)
                {
                  localc = localFlipCard.getFlipCardType();
                  if (localc == null)
                    break label785;
                }
              }
            }
          }
        }
      }
    }
    label779: label785: for (long l1 = localc.a(); ; l1 = 0L)
    {
      long l2 = a(a(0L, l1, 8), localaf.c(), 8);
      q localq2 = (q)localHashMap3.get(Long.valueOf(l2));
      if (localq2 == null)
      {
        localHashMap3.put(Long.valueOf(l2), new q(localaf, localf, l2));
        break;
      }
      localq2.a(localf);
      break;
      aj.b();
      ArrayList localArrayList1 = eq.a(localHashMap1.values());
      Collections.sort(localArrayList1, b);
      Iterator localIterator2 = localArrayList1.iterator();
      int n;
      for (int m = 1; localIterator2.hasNext(); m = n)
      {
        q localq1 = (q)localIterator2.next();
        n = m + 1;
        localq1.j = m;
        localq1.i = a(localq1.d, localq1.j);
      }
      ArrayList localArrayList2 = eq.b(localHashMap3.size() + localHashMap2.size() + localHashMap1.size());
      try
      {
        aj.a("Concatenate");
        localArrayList2.addAll(localHashMap3.values());
        localArrayList2.addAll(localHashMap2.values());
        localArrayList2.addAll(localArrayList1);
        aj.b();
        d(localArrayList2);
        return localArrayList2;
      }
      finally
      {
        aj.b();
      }
      d1 = 0.0D;
      break label384;
    }
  }

  public static List<q> a(Collection<f> paramCollection)
  {
    return a(null, paramCollection);
  }

  private void a(f paramf)
  {
    this.k = (1 + this.k);
    if (Math.random() < 1.0D / this.k)
      this.e = paramf;
  }

  private static void a(HashMap<Long, q> paramHashMap, f paramf, Resource paramResource, af paramaf)
  {
    d locald;
    l locall;
    long l1;
    long l2;
    if ((paramResource instanceof d))
    {
      locald = (d)paramResource;
      locall = paramResource.getRarity();
      l1 = paramaf.c();
      if (locald == null)
        break label127;
      l2 = locald.getLevel();
      label43: if (locall == null)
        break label133;
    }
    q localq;
    label133: for (long l3 = locall.b(); ; l3 = 0L)
    {
      long l4 = a(a(a(0L, l3, 8), l2, 8), l1, 8);
      localq = (q)paramHashMap.get(Long.valueOf(l4));
      if (localq != null)
        break label139;
      paramHashMap.put(Long.valueOf(l4), new q(paramaf, paramf, l4));
      return;
      locald = null;
      break;
      label127: l2 = 0L;
      break label43;
    }
    label139: localq.a(paramf);
  }

  public static void a(List<q> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq.d == af.i)
      {
        af localaf = localq.d;
        double d1 = localq.h;
        if (d1 < 0.0D);
        for (long l = 0L; ; l = ()d1)
        {
          localq.i = a(a(0L, l, 32), localaf.c(), 8);
          break;
        }
      }
    }
    d(paramList);
  }

  public static void b(List<q> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq.d == af.i)
        localq.i = a(localq.d, localq.j);
    }
    d(paramList);
  }

  public static void c(List<q> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext());
    d(paramList);
  }

  private static void d(List<q> paramList)
  {
    try
    {
      aj.a("Sort");
      Collections.sort(paramList, a);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final af a()
  {
    return this.d;
  }

  public final boolean a(q paramq)
  {
    if (this.d != paramq.d)
      return false;
    switch (r.a[this.d.ordinal()])
    {
    case 3:
    case 4:
    case 5:
    default:
      if (this.i == paramq.i)
        return true;
      break;
    case 1:
      StoryItem localStoryItem1 = (StoryItem)this.e.getComponent(StoryItem.class);
      StoryItem localStoryItem2 = (StoryItem)paramq.e.getComponent(StoryItem.class);
      return (localStoryItem1 != null) && (localStoryItem2 != null) && (localStoryItem1.getPrimaryUrl().equals(localStoryItem2.getPrimaryUrl()));
    case 2:
      PortalCoupler localPortalCoupler1 = (PortalCoupler)this.e.getComponent(PortalCoupler.class);
      PortalCoupler localPortalCoupler2 = (PortalCoupler)paramq.e.getComponent(PortalCoupler.class);
      return (localPortalCoupler1 != null) && (localPortalCoupler2 != null) && (localPortalCoupler1.getPortalGuid().equals(localPortalCoupler2.getPortalGuid()));
    case 6:
      return false;
    }
    return false;
  }

  public final boolean b()
  {
    return this.f != null;
  }

  public final boolean c()
  {
    return this.g != null;
  }

  public final l d()
  {
    return this.g;
  }

  public final int e()
  {
    if (this.f != null)
      return this.f.getLevel();
    return 0;
  }

  public final String f()
  {
    if (this.f != null)
      return this.f.getLevelName();
    return null;
  }

  public final int g()
  {
    return this.k;
  }

  public final f h()
  {
    return this.e;
  }

  public final String i()
  {
    return a.a(this.e);
  }

  public final String j()
  {
    String str = f();
    StringBuilder localStringBuilder = new StringBuilder();
    if (str != null)
      localStringBuilder.append(str).append(' ');
    localStringBuilder.append(a.a(this.e));
    int m = this.k;
    if (m > 1)
      localStringBuilder.append(" (").append(m).append(')');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.q
 * JD-Core Version:    0.6.2
 */
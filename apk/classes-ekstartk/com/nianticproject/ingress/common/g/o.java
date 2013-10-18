package com.nianticproject.ingress.common.g;

import a.a.a.a.b.ag;
import a.a.a.a.b.bv;
import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.ae;
import com.google.a.d.j;
import com.google.a.d.k;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.components.CachingPointIndex;
import com.nianticproject.ingress.gameentity.components.CachingRegionIndex;
import com.nianticproject.ingress.gameentity.components.Locked;
import com.nianticproject.ingress.gameentity.components.PointIndex;
import com.nianticproject.ingress.gameentity.components.RegionIndex;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.SimpleLocked;
import com.nianticproject.ingress.gameentity.components.SpatialIndex;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class o
  implements e
{
  private static final com.nianticproject.ingress.common.w.aa h = new com.nianticproject.ingress.common.w.aa(o.class);
  private static final com.nianticproject.ingress.gameentity.f i = new GameEntityBuilder("deletedEntity", 9223372036854775807L).a(new SimpleLocked()).a();
  final Map<String, com.nianticproject.ingress.gameentity.f> a = hc.a(100);
  final Map<String, com.nianticproject.ingress.gameentity.f> b = hc.a(2000);
  a.a.a.a.b.ad c = new ag();
  final aa<com.nianticproject.ingress.gameentity.f> d = new aa();
  final aa<com.nianticproject.ingress.gameentity.f> e = new aa();
  final y f = new y();
  long g = 0L;
  private final Set<String> j = jc.a();
  private final List<f> k = new ArrayList();
  private final List<g> l = new ArrayList();

  public o()
  {
    this.c.a();
  }

  private static j a(PointIndex paramPointIndex)
  {
    if ((paramPointIndex instanceof CachingPointIndex))
    {
      j localj = ((CachingPointIndex)paramPointIndex).getIndexCell();
      if (localj != null)
        return localj;
    }
    return b.a(paramPointIndex.getIndexPoint());
  }

  private Collection<com.nianticproject.ingress.gameentity.f> a(h paramh)
  {
    ArrayList localArrayList;
    HashSet localHashSet1;
    try
    {
      aj.a("NemesisMemoryCache.findGameEntitiesInRange");
      System.currentTimeMillis();
      localArrayList = eq.b(paramh.a().size());
      localHashSet1 = jc.a(paramh.a().size());
      try
      {
        this.d.a(paramh.a(), localArrayList);
        aa localaa = this.e;
        Collection localCollection1 = paramh.a();
        localaa.a(localCollection1, localHashSet1);
        HashSet localHashSet2 = jc.a(localCollection1.size());
        Iterator localIterator1 = localCollection1.iterator();
        while (true)
        {
          if (!localIterator1.hasNext())
            break label156;
          j localj2 = (j)localIterator1.next();
          if (!localj2.h())
          {
            localj2 = localj2.k();
            if (localHashSet2.add(localj2))
              break;
          }
        }
        label156: Iterator localIterator2 = localHashSet2.iterator();
        while (localIterator2.hasNext())
        {
          j localj1 = (j)localIterator2.next();
          Collection localCollection2 = (Collection)localaa.c.e(localaa.a(localj1));
          if ((localCollection2 != null) && (localHashSet1.addAll(localCollection2)))
            localCollection2.size();
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
    localArrayList.addAll(localHashSet1);
    aj.b();
    return localArrayList;
  }

  private static Collection<j> a(RegionIndex paramRegionIndex)
  {
    if ((paramRegionIndex instanceof CachingRegionIndex))
    {
      dc localdc = ((CachingRegionIndex)paramRegionIndex).getCovering();
      if (localdc != null)
        return localdc;
    }
    com.google.a.d.ad localad = paramRegionIndex.getIndexRegion();
    if ((localad instanceof com.google.a.d.i))
      return Collections.singleton(((com.google.a.d.i)localad).a());
    ae localae = new ae();
    localae.a(18);
    return localae.a(localad).a();
  }

  private void a()
  {
    List localList = this.l;
    try
    {
      aj.a("NemesisMemoryCache.notifyInventoryChanged");
      Iterator localIterator = this.l.iterator();
      while (localIterator.hasNext())
        ((g)localIterator.next()).a();
    }
    finally
    {
      try
      {
        aj.b();
        throw localObject1;
      }
      finally
      {
      }
      aj.b();
    }
  }

  private void a(com.nianticproject.ingress.gameentity.f paramf1, com.nianticproject.ingress.gameentity.f paramf2)
  {
    if (paramf2 != null)
    {
      an.a(paramf1.getGuid().equals(paramf2.getGuid()));
      if (paramf2.equals(i))
      {
        com.nianticproject.ingress.common.w.aa localaa1 = h;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramf1.getGuid();
        localaa1.c("Attempting to reinsert deleted entity(%s) to the cache!", arrayOfObject);
      }
    }
    this.b.put(paramf1.getGuid(), paramf1);
    if (c(paramf2))
      d(paramf2);
    SpatialIndex localSpatialIndex = (SpatialIndex)paramf1.getComponent(SpatialIndex.class);
    if ((localSpatialIndex instanceof PointIndex))
      this.d.a(a((PointIndex)localSpatialIndex), paramf1);
    while (true)
    {
      return;
      if ((localSpatialIndex instanceof RegionIndex))
      {
        aa localaa = this.e;
        Iterator localIterator = a((RegionIndex)localSpatialIndex).iterator();
        while (localIterator.hasNext())
        {
          long l1 = localaa.a((j)localIterator.next());
          Object localObject = (Collection)localaa.c.e(l1);
          if (localObject == null)
          {
            localObject = eq.a();
            localaa.c.a(l1, localObject);
          }
          ((Collection)localObject).add(an.a(paramf1));
        }
      }
    }
  }

  private boolean a(boolean paramBoolean, Collection<com.nianticproject.ingress.gameentity.f> paramCollection)
  {
    boolean bool1;
    com.nianticproject.ingress.gameentity.f localf1;
    String str;
    com.nianticproject.ingress.gameentity.f localf2;
    com.nianticproject.ingress.gameentity.f localf3;
    while (true)
    {
      try
      {
        aj.a("NemesisMemoryCache.updateChanged");
        Iterator localIterator = paramCollection.iterator();
        bool1 = false;
        if (!localIterator.hasNext())
          break label198;
        localf1 = (com.nianticproject.ingress.gameentity.f)localIterator.next();
        str = localf1.getGuid();
        localf2 = (com.nianticproject.ingress.gameentity.f)this.b.get(str);
        if (localf2 != i)
          break label211;
        if (!paramBoolean)
        {
          h.b("Local change applied to server-deleted Entity.  Ignoring.");
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      if (localf1.getComponent(Resonator.class) != null)
      {
        h.b("Not Good! Resonator reinstated by the server!...");
        localf3 = null;
        label119: if (paramBoolean)
        {
          if (localf3 == null)
            break label218;
          if (localf3.getLastModifiedMs() >= localf1.getLastModifiedMs())
            break label231;
          break label218;
        }
      }
    }
    while (true)
    {
      this.j.remove(str);
      while (m != 0)
      {
        a(localf1, localf3);
        bool2 = true;
        break label224;
        this.j.add(str);
        m = 1;
        continue;
        label198: aj.b();
        return bool1;
      }
      boolean bool2 = bool1;
      break label224;
      label211: localf3 = localf2;
      break label119;
      label218: int m = 1;
      continue;
      label224: bool1 = bool2;
      break;
      label231: m = 0;
    }
  }

  private boolean b(Collection<com.nianticproject.ingress.gameentity.f> paramCollection)
  {
    while (true)
    {
      boolean bool1;
      try
      {
        aj.a("NemesisMemoryCache.updateInventory");
        bool1 = false;
        Iterator localIterator = paramCollection.iterator();
        if (localIterator.hasNext())
        {
          com.nianticproject.ingress.gameentity.f localf1 = (com.nianticproject.ingress.gameentity.f)localIterator.next();
          com.nianticproject.ingress.gameentity.f localf2 = (com.nianticproject.ingress.gameentity.f)this.a.get(localf1.getGuid());
          if ((localf2 != null) && (localf2.getLastModifiedMs() >= localf1.getLastModifiedMs()))
            break label130;
          this.a.put(localf1.getGuid(), localf1);
          this.f.a(localf1);
          bool2 = true;
          bool1 = bool2;
          continue;
        }
        return bool1;
      }
      finally
      {
        aj.b();
      }
      label130: boolean bool2 = bool1;
    }
  }

  private com.nianticproject.ingress.gameentity.f c(String paramString)
  {
    this.j.remove(paramString);
    com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.b.remove(paramString);
    if (localf != null)
      d(localf);
    return localf;
  }

  private static boolean c(com.nianticproject.ingress.gameentity.f paramf)
  {
    return (paramf != null) && (paramf != i);
  }

  private void d(com.nianticproject.ingress.gameentity.f paramf)
  {
    SpatialIndex localSpatialIndex = (SpatialIndex)paramf.getComponent(SpatialIndex.class);
    if ((localSpatialIndex instanceof PointIndex))
    {
      aa localaa2 = this.d;
      j localj2 = a((PointIndex)localSpatialIndex);
      Collection localCollection2 = (Collection)localaa2.c.e(localaa2.a(localj2));
      if (localCollection2 != null)
        localCollection2.remove(paramf);
    }
    do
      while (true)
      {
        return;
        if (!(localSpatialIndex instanceof RegionIndex))
          break;
        aa localaa1 = this.e;
        Iterator localIterator = a((RegionIndex)localSpatialIndex).iterator();
        while (localIterator.hasNext())
        {
          j localj1 = (j)localIterator.next();
          Collection localCollection1 = (Collection)localaa1.c.e(localaa1.a(localj1));
          if (localCollection1 != null)
            localCollection1.remove(paramf);
        }
      }
    while (localSpatialIndex == null);
    throw new IllegalArgumentException("Unknown spatial index type");
  }

  private void h()
  {
    List localList = this.k;
    try
    {
      aj.a("NemesisMemoryCache.notifyGameStateChanged");
      Iterator localIterator = this.k.iterator();
      while (localIterator.hasNext())
        ((f)localIterator.next()).a();
    }
    finally
    {
      try
      {
        aj.b();
        throw localObject1;
      }
      finally
      {
      }
      aj.b();
    }
  }

  public final ak<com.nianticproject.ingress.common.model.i, Long> a(h paramh, long paramLong)
  {
    com.nianticproject.ingress.common.model.i locali;
    long l1;
    while (true)
    {
      com.nianticproject.ingress.gameentity.f localf;
      try
      {
        aj.a("NemesisMemoryCache.loadGameState");
        locali = new com.nianticproject.ingress.common.model.i();
        System.currentTimeMillis();
        Collection localCollection = a(paramh);
        try
        {
          Iterator localIterator = localCollection.iterator();
          l1 = paramLong;
          if (!localIterator.hasNext())
            break;
          localf = (com.nianticproject.ingress.gameentity.f)localIterator.next();
          long l2 = localf.getLastModifiedMs();
          l1 = Math.max(l2, l1);
          if ((l2 >= paramLong) || (this.j.contains(localf.getGuid())))
          {
            locali.a(localf);
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
      locali.b(localf);
    }
    ak localak = ak.a(locali, Long.valueOf(l1));
    aj.b();
    return localak;
  }

  public final com.nianticproject.ingress.gameentity.f a(com.nianticproject.ingress.gameentity.f paramf)
  {
    try
    {
      com.nianticproject.ingress.gameentity.f localf = c(paramf.getGuid());
      if (localf == null)
      {
        com.nianticproject.ingress.common.w.aa localaa = h;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramf.getGuid();
        localaa.b("Removing resource from world that is not in the db: %s", arrayOfObject);
        return null;
      }
      h();
      return localf;
    }
    finally
    {
    }
  }

  public final com.nianticproject.ingress.gameentity.f a(String paramString)
  {
    try
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.b.get(paramString);
      if (localf == i)
        localf = null;
      return localf;
    }
    finally
    {
    }
  }

  public final <T extends a> Collection<T> a(Class<T> paramClass, h paramh)
  {
    ArrayList localArrayList;
    try
    {
      aj.a("NemesisMemoryCache.findComponentsInRange");
      System.currentTimeMillis();
      Collection localCollection = a(paramh);
      localArrayList = eq.a();
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator.next();
        a locala = localf.getComponent(paramClass);
        if ((locala != null) && (paramh.a(localf)))
          localArrayList.add(locala);
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
    return localArrayList;
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> a(Collection<af> paramCollection)
  {
    LinkedList localLinkedList = eq.b();
    try
    {
      Iterator localIterator1 = paramCollection.iterator();
      while (localIterator1.hasNext())
      {
        af localaf = (af)localIterator1.next();
        Collection localCollection = this.f.a(localaf);
        if (localCollection != null)
        {
          Iterator localIterator2 = localCollection.iterator();
          while (localIterator2.hasNext())
          {
            com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
            if (localf.getComponent(Locked.class) == null)
              localLinkedList.add(localf);
          }
        }
      }
    }
    finally
    {
    }
    return localLinkedList;
  }

  public final void a(long paramLong)
  {
    if ((this.g == 0L) && (paramLong == 1L))
    {
      this.g = 1L;
      a();
      return;
    }
    this.g = paramLong;
  }

  public final void a(f paramf)
  {
    synchronized (this.k)
    {
      this.k.add(paramf);
      return;
    }
  }

  public final void a(g paramg)
  {
    synchronized (this.l)
    {
      this.l.add(paramg);
      return;
    }
  }

  // ERROR //
  public final void a(com.nianticproject.ingress.shared.model.e parame)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: ldc_w 414
    //   5: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   8: aload_1
    //   9: invokestatic 306	com/google/a/a/an:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: pop
    //   13: aload_1
    //   14: invokeinterface 418 1 0
    //   19: invokestatic 423	com/google/a/a/aj:c	(Ljava/lang/Object;)Lcom/google/a/a/aj;
    //   22: invokestatic 427	java/util/Collections:emptySet	()Ljava/util/Set;
    //   25: invokevirtual 428	com/google/a/a/aj:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   28: checkcast 149	java/util/Collection
    //   31: astore 5
    //   33: aload_1
    //   34: invokeinterface 430 1 0
    //   39: invokestatic 423	com/google/a/a/aj:c	(Ljava/lang/Object;)Lcom/google/a/a/aj;
    //   42: invokestatic 427	java/util/Collections:emptySet	()Ljava/util/Set;
    //   45: invokevirtual 428	com/google/a/a/aj:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   48: checkcast 149	java/util/Collection
    //   51: astore 6
    //   53: aload_1
    //   54: invokeinterface 432 1 0
    //   59: invokestatic 423	com/google/a/a/aj:c	(Ljava/lang/Object;)Lcom/google/a/a/aj;
    //   62: invokestatic 427	java/util/Collections:emptySet	()Ljava/util/Set;
    //   65: invokevirtual 428	com/google/a/a/aj:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   68: checkcast 149	java/util/Collection
    //   71: astore 7
    //   73: aload_1
    //   74: invokeinterface 434 1 0
    //   79: invokestatic 423	com/google/a/a/aj:c	(Ljava/lang/Object;)Lcom/google/a/a/aj;
    //   82: invokestatic 427	java/util/Collections:emptySet	()Ljava/util/Set;
    //   85: invokevirtual 428	com/google/a/a/aj:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   88: checkcast 149	java/util/Collection
    //   91: astore 8
    //   93: aload 5
    //   95: invokeinterface 437 1 0
    //   100: ifeq +41 -> 141
    //   103: aload 6
    //   105: invokeinterface 437 1 0
    //   110: ifeq +31 -> 141
    //   113: aload 7
    //   115: invokeinterface 437 1 0
    //   120: ifeq +21 -> 141
    //   123: aload 8
    //   125: invokeinterface 437 1 0
    //   130: istore 50
    //   132: iload 50
    //   134: ifeq +7 -> 141
    //   137: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   140: return
    //   141: aload 6
    //   143: invokeinterface 437 1 0
    //   148: istore 9
    //   150: iload 9
    //   152: ifne +87 -> 239
    //   155: ldc_w 439
    //   158: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   161: invokestatic 142	java/lang/System:currentTimeMillis	()J
    //   164: pop2
    //   165: aload 6
    //   167: invokeinterface 168 1 0
    //   172: astore 48
    //   174: aload 48
    //   176: invokeinterface 174 1 0
    //   181: ifeq +55 -> 236
    //   184: aload 48
    //   186: invokeinterface 178 1 0
    //   191: checkcast 254	com/nianticproject/ingress/gameentity/f
    //   194: ldc_w 441
    //   197: invokeinterface 292 2 0
    //   202: checkcast 441	com/nianticproject/ingress/gameentity/components/CachingSpatialIndex
    //   205: astore 49
    //   207: aload 49
    //   209: ifnull -35 -> 174
    //   212: aload 49
    //   214: invokeinterface 444 1 0
    //   219: goto -45 -> 174
    //   222: astore 45
    //   224: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   227: aload 45
    //   229: athrow
    //   230: astore_3
    //   231: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   234: aload_3
    //   235: athrow
    //   236: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   239: invokestatic 448	java/util/Collections:emptyList	()Ljava/util/List;
    //   242: astore 10
    //   244: aload 8
    //   246: invokeinterface 437 1 0
    //   251: istore 11
    //   253: iload 11
    //   255: ifne +109 -> 364
    //   258: ldc_w 450
    //   261: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   264: aload_1
    //   265: invokeinterface 453 1 0
    //   270: invokestatic 423	com/google/a/a/aj:c	(Ljava/lang/Object;)Lcom/google/a/a/aj;
    //   273: lconst_0
    //   274: invokestatic 376	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   277: invokevirtual 428	com/google/a/a/aj:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   280: checkcast 372	java/lang/Long
    //   283: invokevirtual 456	java/lang/Long:longValue	()J
    //   286: lstore 39
    //   288: invokestatic 142	java/lang/System:currentTimeMillis	()J
    //   291: pop2
    //   292: aload 8
    //   294: invokeinterface 153 1 0
    //   299: invokestatic 458	com/google/a/c/eq:a	(I)Ljava/util/ArrayList;
    //   302: astore 10
    //   304: aload 8
    //   306: invokeinterface 168 1 0
    //   311: astore 43
    //   313: aload 43
    //   315: invokeinterface 174 1 0
    //   320: ifeq +41 -> 361
    //   323: aload 10
    //   325: new 460	com/nianticproject/ingress/common/gameentity/EnergyGlobEntity
    //   328: dup
    //   329: aload 43
    //   331: invokeinterface 178 1 0
    //   336: checkcast 260	java/lang/String
    //   339: lload 39
    //   341: invokespecial 461	com/nianticproject/ingress/common/gameentity/EnergyGlobEntity:<init>	(Ljava/lang/String;J)V
    //   344: invokeinterface 407 2 0
    //   349: pop
    //   350: goto -37 -> 313
    //   353: astore 38
    //   355: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   358: aload 38
    //   360: athrow
    //   361: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   364: aload_1
    //   365: invokeinterface 463 1 0
    //   370: istore 12
    //   372: aload_0
    //   373: monitorenter
    //   374: invokestatic 142	java/lang/System:currentTimeMillis	()J
    //   377: pop2
    //   378: ldc_w 465
    //   381: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   384: aload 5
    //   386: invokeinterface 168 1 0
    //   391: astore 17
    //   393: iconst_0
    //   394: istore 18
    //   396: aload 17
    //   398: invokeinterface 174 1 0
    //   403: ifeq +97 -> 500
    //   406: aload 17
    //   408: invokeinterface 178 1 0
    //   413: checkcast 260	java/lang/String
    //   416: astore 33
    //   418: aload_0
    //   419: aload 33
    //   421: invokespecial 384	com/nianticproject/ingress/common/g/o:c	(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    //   424: astore 34
    //   426: aload_0
    //   427: getfield 73	com/nianticproject/ingress/common/g/o:b	Ljava/util/Map;
    //   430: aload 33
    //   432: getstatic 63	com/nianticproject/ingress/common/g/o:i	Lcom/nianticproject/ingress/gameentity/f;
    //   435: invokeinterface 280 3 0
    //   440: pop
    //   441: aload 34
    //   443: invokestatic 283	com/nianticproject/ingress/common/g/o:c	(Lcom/nianticproject/ingress/gameentity/f;)Z
    //   446: ifeq +8 -> 454
    //   449: iconst_1
    //   450: istore_2
    //   451: goto -55 -> 396
    //   454: aload_0
    //   455: getfield 71	com/nianticproject/ingress/common/g/o:a	Ljava/util/Map;
    //   458: aload 33
    //   460: getstatic 63	com/nianticproject/ingress/common/g/o:i	Lcom/nianticproject/ingress/gameentity/f;
    //   463: invokeinterface 280 3 0
    //   468: checkcast 254	com/nianticproject/ingress/gameentity/f
    //   471: astore 36
    //   473: aload 36
    //   475: invokestatic 283	com/nianticproject/ingress/common/g/o:c	(Lcom/nianticproject/ingress/gameentity/f;)Z
    //   478: ifeq +240 -> 718
    //   481: aload_0
    //   482: getfield 90	com/nianticproject/ingress/common/g/o:f	Lcom/nianticproject/ingress/common/g/y;
    //   485: aload 36
    //   487: invokevirtual 466	com/nianticproject/ingress/common/g/y:b	(Lcom/nianticproject/ingress/gameentity/f;)V
    //   490: iconst_1
    //   491: istore 37
    //   493: iload 37
    //   495: istore 18
    //   497: goto -101 -> 396
    //   500: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   503: ldc_w 468
    //   506: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   509: aload_0
    //   510: iload 12
    //   512: aload 6
    //   514: invokespecial 470	com/nianticproject/ingress/common/g/o:a	(ZLjava/util/Collection;)Z
    //   517: istore 20
    //   519: iload 20
    //   521: iload_2
    //   522: ior
    //   523: istore 21
    //   525: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   528: ldc_w 472
    //   531: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   534: aload_0
    //   535: aload 7
    //   537: invokespecial 474	com/nianticproject/ingress/common/g/o:b	(Ljava/util/Collection;)Z
    //   540: istore 23
    //   542: iload 18
    //   544: iload 23
    //   546: ior
    //   547: istore 24
    //   549: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   552: ldc_w 476
    //   555: invokestatic 136	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   558: invokestatic 142	java/lang/System:currentTimeMillis	()J
    //   561: pop2
    //   562: aload 10
    //   564: invokeinterface 248 1 0
    //   569: astore 28
    //   571: aload 28
    //   573: invokeinterface 174 1 0
    //   578: ifeq +101 -> 679
    //   581: aload 28
    //   583: invokeinterface 178 1 0
    //   588: checkcast 460	com/nianticproject/ingress/common/gameentity/EnergyGlobEntity
    //   591: astore 31
    //   593: aload_0
    //   594: getfield 73	com/nianticproject/ingress/common/g/o:b	Ljava/util/Map;
    //   597: aload 31
    //   599: invokevirtual 477	com/nianticproject/ingress/common/gameentity/EnergyGlobEntity:getGuid	()Ljava/lang/String;
    //   602: aload 31
    //   604: invokeinterface 280 3 0
    //   609: checkcast 254	com/nianticproject/ingress/gameentity/f
    //   612: astore 32
    //   614: aload 32
    //   616: invokestatic 283	com/nianticproject/ingress/common/g/o:c	(Lcom/nianticproject/ingress/gameentity/f;)Z
    //   619: ifeq +9 -> 628
    //   622: aload_0
    //   623: aload 32
    //   625: invokespecial 286	com/nianticproject/ingress/common/g/o:d	(Lcom/nianticproject/ingress/gameentity/f;)V
    //   628: aload_0
    //   629: getfield 83	com/nianticproject/ingress/common/g/o:d	Lcom/nianticproject/ingress/common/g/aa;
    //   632: aload 31
    //   634: invokevirtual 478	com/nianticproject/ingress/common/gameentity/EnergyGlobEntity:getIndexCell	()Lcom/google/a/d/j;
    //   637: aload 31
    //   639: invokevirtual 297	com/nianticproject/ingress/common/g/aa:a	(Lcom/google/a/d/j;Ljava/lang/Object;)V
    //   642: iconst_1
    //   643: istore 21
    //   645: goto -74 -> 571
    //   648: astore 16
    //   650: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   653: aload 16
    //   655: athrow
    //   656: astore 13
    //   658: aload_0
    //   659: monitorexit
    //   660: aload 13
    //   662: athrow
    //   663: astore 19
    //   665: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   668: aload 19
    //   670: athrow
    //   671: astore 22
    //   673: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   676: aload 22
    //   678: athrow
    //   679: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   682: invokestatic 142	java/lang/System:currentTimeMillis	()J
    //   685: pop2
    //   686: iload 21
    //   688: ifeq +7 -> 695
    //   691: aload_0
    //   692: invokespecial 390	com/nianticproject/ingress/common/g/o:h	()V
    //   695: iload 24
    //   697: ifeq +7 -> 704
    //   700: aload_0
    //   701: invokespecial 409	com/nianticproject/ingress/common/g/o:a	()V
    //   704: aload_0
    //   705: monitorexit
    //   706: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   709: return
    //   710: astore 25
    //   712: invokestatic 205	com/nianticproject/ingress/shared/aj:b	()V
    //   715: aload 25
    //   717: athrow
    //   718: iload 18
    //   720: istore 37
    //   722: goto -229 -> 493
    //
    // Exception table:
    //   from	to	target	type
    //   155	174	222	finally
    //   174	207	222	finally
    //   212	219	222	finally
    //   2	132	230	finally
    //   141	150	230	finally
    //   224	230	230	finally
    //   236	239	230	finally
    //   239	253	230	finally
    //   355	361	230	finally
    //   361	364	230	finally
    //   364	374	230	finally
    //   658	663	230	finally
    //   258	313	353	finally
    //   313	350	353	finally
    //   378	393	648	finally
    //   396	449	648	finally
    //   454	490	648	finally
    //   374	378	656	finally
    //   500	503	656	finally
    //   525	528	656	finally
    //   549	552	656	finally
    //   650	656	656	finally
    //   665	671	656	finally
    //   673	679	656	finally
    //   679	686	656	finally
    //   691	695	656	finally
    //   700	704	656	finally
    //   704	706	656	finally
    //   712	718	656	finally
    //   503	519	663	finally
    //   528	542	671	finally
    //   552	571	710	finally
    //   571	628	710	finally
    //   628	642	710	finally
  }

  public final void a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int m = 0;
    an.a(paramArrayOfLong1);
    an.a(paramArrayOfLong2);
    if (paramArrayOfLong1.length == paramArrayOfLong2.length);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      try
      {
        while (m < paramArrayOfLong1.length)
        {
          this.c.a(paramArrayOfLong1[m], paramArrayOfLong2[m]);
          m++;
        }
        return;
      }
      finally
      {
      }
    }
  }

  public final boolean a(Set<String> paramSet)
  {
    try
    {
      Iterator localIterator1 = paramSet.iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.a.get(str2);
        if ((localf == null) || (localf.getComponent(Locked.class) != null))
          return false;
      }
      Iterator localIterator2 = paramSet.iterator();
      while (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        ((com.nianticproject.ingress.gameentity.f)this.a.get(str1)).add(new SimpleLocked());
      }
    }
    finally
    {
    }
    a();
    return true;
  }

  public final long[] a(long[] paramArrayOfLong)
  {
    long[] arrayOfLong = new long[paramArrayOfLong.length];
    int m = 0;
    try
    {
      while (m < paramArrayOfLong.length)
      {
        arrayOfLong[m] = this.c.d(paramArrayOfLong[m]);
        m++;
      }
      return arrayOfLong;
    }
    finally
    {
    }
  }

  public final com.nianticproject.ingress.gameentity.f b(String paramString)
  {
    try
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.a.get(paramString);
      if (localf == i)
        localf = null;
      return localf;
    }
    finally
    {
    }
  }

  public final void b()
  {
  }

  public final void b(f paramf)
  {
    synchronized (this.k)
    {
      this.k.remove(paramf);
      return;
    }
  }

  public final void b(g paramg)
  {
    synchronized (this.l)
    {
      this.l.remove(paramg);
      return;
    }
  }

  public final void b(com.nianticproject.ingress.gameentity.f paramf)
  {
    try
    {
      an.a(paramf);
      a(paramf, a(paramf.getGuid()));
      this.j.add(paramf.getGuid());
      h();
      return;
    }
    finally
    {
    }
  }

  public final boolean b(Set<String> paramSet)
  {
    boolean bool1 = false;
    while (true)
    {
      try
      {
        Iterator localIterator = paramSet.iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.a.get(str);
          if (c(localf))
          {
            localf.remove(Locked.class);
            bool2 = true;
            break label95;
          }
        }
        else
        {
          if (bool1)
            a();
          return bool1;
        }
      }
      finally
      {
      }
      boolean bool2 = bool1;
      label95: bool1 = bool2;
    }
  }

  public final void c()
  {
    try
    {
      aj.a("NemesisMemoryCache.clearAll");
      Long.valueOf(System.currentTimeMillis());
      try
      {
        this.a.clear();
        this.f.a();
        this.b.clear();
        this.d.a();
        this.e.a();
        this.g = 0L;
        d();
        h();
        a();
        return;
      }
      finally
      {
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void d()
  {
    try
    {
      this.c.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> e()
  {
    return a(com.nianticproject.ingress.common.gameentity.g.a);
  }

  public final int f()
  {
    return this.f.b();
  }

  public final long g()
  {
    return this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.o
 * JD-Core Version:    0.6.2
 */
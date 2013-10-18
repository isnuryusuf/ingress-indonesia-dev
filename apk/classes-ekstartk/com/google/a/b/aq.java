package com.google.a.b;

import com.google.a.a.an;
import com.google.a.a.bw;
import com.google.a.i.a.e;
import com.google.a.i.a.p;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

final class aq<K, V> extends ReentrantLock
{
  final o<K, V> a;
  volatile int b;
  int c;
  int d;
  int e;
  volatile AtomicReferenceArray<ap<K, V>> f;
  final long g;
  final ReferenceQueue<K> h;
  final ReferenceQueue<V> i;
  final Queue<ap<K, V>> j;
  final AtomicInteger k = new AtomicInteger();
  final Queue<ap<K, V>> l;
  final Queue<ap<K, V>> m;
  final c n;

  aq(o<K, V> paramo, int paramInt, long paramLong, c paramc)
  {
    this.a = paramo;
    this.g = paramLong;
    this.n = ((c)an.a(paramc));
    AtomicReferenceArray localAtomicReferenceArray = a(paramInt);
    this.e = (3 * localAtomicReferenceArray.length() / 4);
    if ((!this.a.b()) && (this.e == this.g))
      this.e = (1 + this.e);
    this.f = localAtomicReferenceArray;
    ReferenceQueue localReferenceQueue1;
    Object localObject1;
    label162: Object localObject2;
    if (paramo.h())
    {
      localReferenceQueue1 = new ReferenceQueue();
      this.h = localReferenceQueue1;
      boolean bool = paramo.i();
      ReferenceQueue localReferenceQueue2 = null;
      if (bool)
        localReferenceQueue2 = new ReferenceQueue();
      this.i = localReferenceQueue2;
      if (!paramo.d())
        break label219;
      localObject1 = new ConcurrentLinkedQueue();
      this.j = ((Queue)localObject1);
      if (!paramo.e())
        break label227;
      localObject2 = new bn();
      label184: this.l = ((Queue)localObject2);
      if (!paramo.d())
        break label235;
    }
    label219: label227: label235: for (Object localObject3 = new t(); ; localObject3 = o.l())
    {
      this.m = ((Queue)localObject3);
      return;
      localReferenceQueue1 = null;
      break;
      localObject1 = o.l();
      break label162;
      localObject2 = o.l();
      break label184;
    }
  }

  private ap<K, V> a(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    if (paramap1.d() == null);
    bd localbd;
    Object localObject;
    do
    {
      return null;
      localbd = paramap1.a();
      localObject = localbd.get();
    }
    while ((localObject == null) && (localbd.d()));
    ap localap = this.a.s.a(this, paramap1, paramap2);
    localap.a(localbd.a(this.i, localObject, localap));
    return localap;
  }

  private ap<K, V> a(ap<K, V> paramap1, ap<K, V> paramap2, K paramK, bd<K, V> parambd, bx parambx)
  {
    a(paramK, parambd, parambx);
    this.l.remove(paramap2);
    this.m.remove(paramap2);
    if (parambd.c())
    {
      parambd.a(null);
      return paramap1;
    }
    return b(paramap1, paramap2);
  }

  private ap<K, V> a(Object paramObject, int paramInt, long paramLong)
  {
    ap localap = e(paramObject, paramInt);
    if (localap == null)
      return null;
    if (this.a.b(localap, paramLong))
    {
      a(paramLong);
      return null;
    }
    return localap;
  }

  private ap<K, V> a(K paramK, int paramInt, ap<K, V> paramap)
  {
    return this.a.s.a(this, an.a(paramK), paramInt, paramap);
  }

  private V a(ap<K, V> paramap, K paramK, int paramInt, V paramV, long paramLong, k<? super K, V> paramk)
  {
    if ((this.a.c()) && (paramLong - paramap.h() > this.a.o) && (!paramap.a().c()))
    {
      Object localObject = c(paramK, paramInt, paramk);
      if (localObject != null)
        paramV = localObject;
    }
    return paramV;
  }

  private V a(ap<K, V> paramap, K paramK, bd<K, V> parambd)
  {
    if (!parambd.c())
      throw new AssertionError();
    if (!Thread.holdsLock(paramap));
    Object localObject2;
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Recursive load");
      try
      {
        localObject2 = parambd.e();
        if (localObject2 != null)
          break;
        throw new l("CacheLoader returned null for key " + paramK + ".");
      }
      finally
      {
        this.n.b();
      }
    }
    b(paramap, this.a.r.a());
    this.n.b();
    return localObject2;
  }

  private static AtomicReferenceArray<ap<K, V>> a(int paramInt)
  {
    return new AtomicReferenceArray(paramInt);
  }

  private void a(long paramLong)
  {
    if (tryLock());
    try
    {
      b(paramLong);
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void a(ap<K, V> paramap)
  {
    a(paramap, bx.c);
    this.l.remove(paramap);
    this.m.remove(paramap);
  }

  private void a(ap<K, V> paramap, bx parambx)
  {
    Object localObject = paramap.d();
    paramap.c();
    a(localObject, paramap.a(), parambx);
  }

  private void a(ap<K, V> paramap, K paramK, V paramV, long paramLong)
  {
    bd localbd = paramap.a();
    int i1 = this.a.l.a(paramK);
    if (i1 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Weights must be non-negative");
      paramap.a(this.a.j.a(this, paramap, paramV, i1));
      e();
      this.c = (i1 + this.c);
      if (this.a.g())
        paramap.a(paramLong);
      if (this.a.f())
        paramap.b(paramLong);
      this.m.add(paramap);
      this.l.add(paramap);
      localbd.a(paramV);
      return;
    }
  }

  private void a(K paramK, bd<K, V> parambd, bx parambx)
  {
    this.c -= parambd.a();
    if (parambx.a())
      this.n.c();
    Object localObject;
    if (this.a.p != o.w)
    {
      localObject = parambd.get();
      if ((paramK != null) || (this.a.h()))
        break label132;
      String str2 = "Unexpected null key during removal notification, cause=" + parambx;
      o.a.log(Level.WARNING, str2, new AssertionError());
    }
    while (true)
    {
      ce localce = new ce(paramK, localObject, parambx);
      this.a.p.offer(localce);
      return;
      label132: if ((localObject == null) && (!this.a.i()))
      {
        String str1 = "Unexpected null value during removal notification, cause=" + parambx;
        o.a.log(Level.WARNING, str1, new AssertionError());
      }
    }
  }

  private boolean a(ap<K, V> paramap, int paramInt, bx parambx)
  {
    AtomicReferenceArray localAtomicReferenceArray = this.f;
    int i1 = paramInt & -1 + localAtomicReferenceArray.length();
    ap localap1 = (ap)localAtomicReferenceArray.get(i1);
    for (ap localap2 = localap1; localap2 != null; localap2 = localap2.b())
      if (localap2 == paramap)
      {
        this.d = (1 + this.d);
        ap localap3 = a(localap1, localap2, localap2.d(), localap2.a(), parambx);
        int i2 = -1 + this.b;
        localAtomicReferenceArray.set(i1, localap3);
        this.b = i2;
        return true;
      }
    return false;
  }

  private boolean a(K paramK, int paramInt, ak<K, V> paramak)
  {
    lock();
    while (true)
    {
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = this.f;
        int i1 = paramInt & -1 + localAtomicReferenceArray.length();
        ap localap1 = (ap)localAtomicReferenceArray.get(i1);
        localObject2 = localap1;
        if (localObject2 == null)
          break;
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() != paramInt) || (localObject3 == null) || (!this.a.g.a(paramK, localObject3)))
          break label163;
        if (((ap)localObject2).a() == paramak)
        {
          if (paramak.d())
          {
            ((ap)localObject2).a(paramak.a);
            return true;
          }
          localAtomicReferenceArray.set(i1, b(localap1, (ap)localObject2));
          continue;
        }
      }
      finally
      {
        unlock();
        h();
      }
      unlock();
      h();
      return false;
      label163: ap localap2 = ((ap)localObject2).b();
      Object localObject2 = localap2;
    }
    unlock();
    h();
    return false;
  }

  private boolean a(K paramK, int paramInt, ak<K, V> paramak, V paramV)
  {
    lock();
    try
    {
      long l1 = this.a.r.a();
      c(l1);
      int i1 = 1 + this.b;
      if (i1 > this.e)
      {
        g();
        i1 = 1 + this.b;
      }
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i2 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i2);
      for (ap localap2 = localap1; localap2 != null; localap2 = localap2.b())
      {
        Object localObject2 = localap2.d();
        if ((localap2.c() == paramInt) && (localObject2 != null) && (this.a.g.a(paramK, localObject2)))
        {
          bd localbd = localap2.a();
          Object localObject3 = localbd.get();
          if ((paramak == localbd) || ((localObject3 == null) && (localbd != o.v)))
          {
            this.d = (1 + this.d);
            if (paramak.d())
              if (localObject3 != null)
                break label236;
            label236: for (bx localbx = bx.c; ; localbx = bx.b)
            {
              a(paramK, paramak, localbx);
              i1--;
              a(localap2, paramK, paramV, l1);
              this.b = i1;
              f();
              return true;
            }
          }
          a(paramK, new bl(paramV, 0), bx.b);
          return false;
        }
      }
      this.d = (1 + this.d);
      ap localap3 = a(paramK, paramInt, localap1);
      a(localap3, paramK, paramV, l1);
      localAtomicReferenceArray.set(i2, localap3);
      this.b = i1;
      f();
      return true;
    }
    finally
    {
      unlock();
      h();
    }
  }

  private ap<K, V> b(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    int i1 = this.b;
    Object localObject1 = paramap2.b();
    if (paramap1 != paramap2)
    {
      Object localObject2 = a(paramap1, (ap)localObject1);
      int i3;
      if (localObject2 != null)
        i3 = i1;
      while (true)
      {
        paramap1 = paramap1.b();
        i1 = i3;
        localObject1 = localObject2;
        break;
        a(paramap1);
        int i2 = i1 - 1;
        Object localObject3 = localObject1;
        i3 = i2;
        localObject2 = localObject3;
      }
    }
    this.b = i1;
    return localObject1;
  }

  // ERROR //
  private V b(K paramK, int paramInt, k<? super K, V> paramk)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 344	com/google/a/b/aq:lock	()V
    //   4: aload_0
    //   5: getfield 44	com/google/a/b/aq:a	Lcom/google/a/b/o;
    //   8: getfield 223	com/google/a/b/o:r	Lcom/google/a/a/bw;
    //   11: invokevirtual 227	com/google/a/a/bw:a	()J
    //   14: lstore 5
    //   16: aload_0
    //   17: lload 5
    //   19: invokespecial 363	com/google/a/b/aq:c	(J)V
    //   22: iconst_m1
    //   23: aload_0
    //   24: getfield 326	com/google/a/b/aq:b	I
    //   27: iadd
    //   28: istore 7
    //   30: aload_0
    //   31: getfield 73	com/google/a/b/aq:f	Ljava/util/concurrent/atomic/AtomicReferenceArray;
    //   34: astore 8
    //   36: iload_2
    //   37: iconst_m1
    //   38: aload 8
    //   40: invokevirtual 64	java/util/concurrent/atomic/AtomicReferenceArray:length	()I
    //   43: iadd
    //   44: iand
    //   45: istore 9
    //   47: aload 8
    //   49: iload 9
    //   51: invokevirtual 329	java/util/concurrent/atomic/AtomicReferenceArray:get	(I)Ljava/lang/Object;
    //   54: checkcast 109	com/google/a/b/ap
    //   57: astore 10
    //   59: aload 10
    //   61: astore 11
    //   63: aload 11
    //   65: ifnull +381 -> 446
    //   68: aload 11
    //   70: invokeinterface 112 1 0
    //   75: astore 12
    //   77: aload 11
    //   79: invokeinterface 252 1 0
    //   84: iload_2
    //   85: if_icmpne +287 -> 372
    //   88: aload 12
    //   90: ifnull +282 -> 372
    //   93: aload_0
    //   94: getfield 44	com/google/a/b/aq:a	Lcom/google/a/b/o;
    //   97: getfield 347	com/google/a/b/o:g	Lcom/google/a/a/x;
    //   100: aload_1
    //   101: aload 12
    //   103: invokevirtual 352	com/google/a/a/x:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   106: ifeq +266 -> 372
    //   109: aload 11
    //   111: invokeinterface 115 1 0
    //   116: astore 13
    //   118: aload 13
    //   120: invokeinterface 148 1 0
    //   125: ifeq +113 -> 238
    //   128: iconst_0
    //   129: istore 14
    //   131: aload 13
    //   133: astore 15
    //   135: iload 14
    //   137: ifeq +299 -> 436
    //   140: new 354	com/google/a/b/ak
    //   143: dup
    //   144: invokespecial 386	com/google/a/b/ak:<init>	()V
    //   147: astore 16
    //   149: aload 11
    //   151: ifnonnull +233 -> 384
    //   154: aload_0
    //   155: aload_1
    //   156: iload_2
    //   157: aload 10
    //   159: invokespecial 381	com/google/a/b/aq:a	(Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;
    //   162: astore 17
    //   164: aload 17
    //   166: aload 16
    //   168: invokeinterface 136 2 0
    //   173: aload 8
    //   175: iload 9
    //   177: aload 17
    //   179: invokevirtual 337	java/util/concurrent/atomic/AtomicReferenceArray:set	(ILjava/lang/Object;)V
    //   182: aload 17
    //   184: astore 18
    //   186: aload 16
    //   188: astore 19
    //   190: aload_0
    //   191: invokevirtual 241	com/google/a/b/aq:unlock	()V
    //   194: aload_0
    //   195: invokespecial 360	com/google/a/b/aq:h	()V
    //   198: iload 14
    //   200: ifeq +226 -> 426
    //   203: aload 18
    //   205: monitorenter
    //   206: aload_0
    //   207: aload_1
    //   208: iload_2
    //   209: aload 19
    //   211: aload 19
    //   213: aload_1
    //   214: aload_3
    //   215: invokevirtual 389	com/google/a/b/ak:a	(Ljava/lang/Object;Lcom/google/a/b/k;)Lcom/google/a/i/a/p;
    //   218: invokevirtual 392	com/google/a/b/aq:a	(Ljava/lang/Object;ILcom/google/a/b/ak;Lcom/google/a/i/a/p;)Ljava/lang/Object;
    //   221: astore 22
    //   223: aload 18
    //   225: monitorexit
    //   226: aload_0
    //   227: getfield 55	com/google/a/b/aq:n	Lcom/google/a/b/c;
    //   230: invokeinterface 219 1 0
    //   235: aload 22
    //   237: areturn
    //   238: aload 13
    //   240: invokeinterface 120 1 0
    //   245: astore 23
    //   247: aload 23
    //   249: ifnonnull +54 -> 303
    //   252: aload_0
    //   253: aload 12
    //   255: aload 13
    //   257: getstatic 247	com/google/a/b/bx:c	Lcom/google/a/b/bx;
    //   260: invokespecial 140	com/google/a/b/aq:a	(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V
    //   263: aload_0
    //   264: getfield 98	com/google/a/b/aq:l	Ljava/util/Queue;
    //   267: aload 11
    //   269: invokeinterface 146 2 0
    //   274: pop
    //   275: aload_0
    //   276: getfield 103	com/google/a/b/aq:m	Ljava/util/Queue;
    //   279: aload 11
    //   281: invokeinterface 146 2 0
    //   286: pop
    //   287: aload_0
    //   288: iload 7
    //   290: putfield 326	com/google/a/b/aq:b	I
    //   293: iconst_1
    //   294: istore 14
    //   296: aload 13
    //   298: astore 15
    //   300: goto -165 -> 135
    //   303: aload_0
    //   304: getfield 44	com/google/a/b/aq:a	Lcom/google/a/b/o;
    //   307: aload 11
    //   309: lload 5
    //   311: invokevirtual 160	com/google/a/b/o:b	(Lcom/google/a/b/ap;J)Z
    //   314: ifeq +30 -> 344
    //   317: aload_0
    //   318: aload 12
    //   320: aload 13
    //   322: getstatic 394	com/google/a/b/bx:d	Lcom/google/a/b/bx;
    //   325: invokespecial 140	com/google/a/b/aq:a	(Ljava/lang/Object;Lcom/google/a/b/bd;Lcom/google/a/b/bx;)V
    //   328: goto -65 -> 263
    //   331: astore 4
    //   333: aload_0
    //   334: invokevirtual 241	com/google/a/b/aq:unlock	()V
    //   337: aload_0
    //   338: invokespecial 360	com/google/a/b/aq:h	()V
    //   341: aload 4
    //   343: athrow
    //   344: aload_0
    //   345: aload 11
    //   347: lload 5
    //   349: invokespecial 396	com/google/a/b/aq:c	(Lcom/google/a/b/ap;J)V
    //   352: aload_0
    //   353: getfield 55	com/google/a/b/aq:n	Lcom/google/a/b/c;
    //   356: invokeinterface 398 1 0
    //   361: aload_0
    //   362: invokevirtual 241	com/google/a/b/aq:unlock	()V
    //   365: aload_0
    //   366: invokespecial 360	com/google/a/b/aq:h	()V
    //   369: aload 23
    //   371: areturn
    //   372: aload 11
    //   374: invokeinterface 340 1 0
    //   379: astore 11
    //   381: goto -318 -> 63
    //   384: aload 11
    //   386: aload 16
    //   388: invokeinterface 136 2 0
    //   393: aload 16
    //   395: astore 19
    //   397: aload 11
    //   399: astore 18
    //   401: goto -211 -> 190
    //   404: astore 21
    //   406: aload 18
    //   408: monitorexit
    //   409: aload 21
    //   411: athrow
    //   412: astore 20
    //   414: aload_0
    //   415: getfield 55	com/google/a/b/aq:n	Lcom/google/a/b/c;
    //   418: invokeinterface 219 1 0
    //   423: aload 20
    //   425: athrow
    //   426: aload_0
    //   427: aload 18
    //   429: aload_1
    //   430: aload 15
    //   432: invokespecial 400	com/google/a/b/aq:a	(Lcom/google/a/b/ap;Ljava/lang/Object;Lcom/google/a/b/bd;)Ljava/lang/Object;
    //   435: areturn
    //   436: aload 11
    //   438: astore 18
    //   440: aconst_null
    //   441: astore 19
    //   443: goto -253 -> 190
    //   446: iconst_1
    //   447: istore 14
    //   449: aconst_null
    //   450: astore 15
    //   452: goto -317 -> 135
    //
    // Exception table:
    //   from	to	target	type
    //   4	59	331	finally
    //   68	88	331	finally
    //   93	128	331	finally
    //   140	149	331	finally
    //   154	182	331	finally
    //   238	247	331	finally
    //   252	263	331	finally
    //   263	293	331	finally
    //   303	328	331	finally
    //   344	361	331	finally
    //   372	381	331	finally
    //   384	393	331	finally
    //   206	226	404	finally
    //   203	206	412	finally
    //   406	412	412	finally
  }

  private void b(long paramLong)
  {
    e();
    ap localap1;
    do
    {
      localap1 = (ap)this.l.peek();
      if ((localap1 == null) || (!this.a.b(localap1, paramLong)))
        break;
    }
    while (a(localap1, localap1.c(), bx.d));
    throw new AssertionError();
    ap localap2;
    do
    {
      localap2 = (ap)this.m.peek();
      if ((localap2 == null) || (!this.a.b(localap2, paramLong)))
        break;
    }
    while (a(localap2, localap2.c(), bx.d));
    throw new AssertionError();
  }

  private void b(ap<K, V> paramap, long paramLong)
  {
    if (this.a.g())
      paramap.a(paramLong);
    this.j.add(paramap);
  }

  private V c(K paramK, int paramInt, k<? super K, V> paramk)
  {
    ak localak = d(paramK, paramInt);
    if (localak == null)
      return null;
    p localp = localak.a(paramK, paramk);
    localp.a(new ar(this, paramK, paramInt, localak, localp), o.b);
    if (localp.isDone())
      try
      {
        Object localObject = com.google.a.i.a.x.a(localp);
        return localObject;
      }
      catch (Throwable localThrowable)
      {
      }
    return null;
  }

  private void c()
  {
    if (tryLock());
    try
    {
      d();
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void c(long paramLong)
  {
    if (tryLock());
    try
    {
      d();
      b(paramLong);
      this.k.set(0);
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void c(ap<K, V> paramap, long paramLong)
  {
    if (this.a.g())
      paramap.a(paramLong);
    this.m.add(paramap);
  }

  private ak<K, V> d(K paramK, int paramInt)
  {
    lock();
    try
    {
      long l1 = this.a.r.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      for (ap localap2 = localap1; localap2 != null; localap2 = localap2.b())
      {
        Object localObject2 = localap2.d();
        if ((localap2.c() == paramInt) && (localObject2 != null) && (this.a.g.a(paramK, localObject2)))
        {
          bd localbd = localap2.a();
          if (!localbd.c())
          {
            long l2 = l1 - localap2.h();
            long l3 = this.a.o;
            if (l2 >= l3);
          }
          else
          {
            return null;
          }
          this.d = (1 + this.d);
          ak localak1 = new ak(localbd);
          localap2.a(localak1);
          return localak1;
        }
      }
      this.d = (1 + this.d);
      ak localak2 = new ak();
      ap localap3 = a(paramK, paramInt, localap1);
      localap3.a(localak2);
      localAtomicReferenceArray.set(i1, localap3);
      return localak2;
    }
    finally
    {
      unlock();
      h();
    }
  }

  private void d()
  {
    if (this.a.h());
    int i3;
    for (int i2 = 0; ; i2 = i3)
    {
      Reference localReference2 = this.h.poll();
      if (localReference2 != null)
      {
        ap localap = (ap)localReference2;
        this.a.a(localap);
        i3 = i2 + 1;
        if (i3 != 16);
      }
      else
      {
        boolean bool = this.a.i();
        int i1 = 0;
        if (bool)
          do
          {
            Reference localReference1 = this.i.poll();
            if (localReference1 == null)
              break;
            bd localbd = (bd)localReference1;
            this.a.a(localbd);
            i1++;
          }
          while (i1 != 16);
        return;
      }
    }
  }

  private ap<K, V> e(Object paramObject, int paramInt)
  {
    AtomicReferenceArray localAtomicReferenceArray = this.f;
    ap localap = (ap)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length());
    if (localap != null)
    {
      Object localObject;
      if (localap.c() == paramInt)
      {
        localObject = localap.d();
        if (localObject != null)
          break label68;
        c();
      }
      label68: 
      while (!this.a.g.a(paramObject, localObject))
      {
        localap = localap.b();
        break;
      }
      return localap;
    }
    return null;
  }

  private void e()
  {
    while (true)
    {
      ap localap = (ap)this.j.poll();
      if (localap == null)
        break;
      if (this.m.contains(localap))
        this.m.add(localap);
    }
  }

  private void f()
  {
    if (!this.a.a());
    ap localap;
    do
    {
      return;
      while (this.c <= this.g)
        e();
      Iterator localIterator = this.m.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localap = (ap)localIterator.next();
      }
      while (localap.a().a() <= 0);
    }
    while (a(localap, localap.c(), bx.e));
    throw new AssertionError();
    throw new AssertionError();
  }

  private void g()
  {
    AtomicReferenceArray localAtomicReferenceArray1 = this.f;
    int i1 = localAtomicReferenceArray1.length();
    if (i1 >= 1073741824)
      return;
    int i2 = this.b;
    AtomicReferenceArray localAtomicReferenceArray2 = a(i1 << 1);
    this.e = (3 * localAtomicReferenceArray2.length() / 4);
    int i3 = -1 + localAtomicReferenceArray2.length();
    int i4 = 0;
    ap localap1;
    ap localap2;
    int i6;
    int i5;
    if (i4 < i1)
    {
      localap1 = (ap)localAtomicReferenceArray1.get(i4);
      if (localap1 == null)
        break label302;
      localap2 = localap1.b();
      i6 = i3 & localap1.c();
      if (localap2 == null)
      {
        localAtomicReferenceArray2.set(i6, localap1);
        i5 = i2;
      }
    }
    while (true)
    {
      i4++;
      i2 = i5;
      break;
      Object localObject1 = localap1;
      label129: int i9;
      if (localap2 != null)
      {
        i9 = i3 & localap2.c();
        if (i9 == i6)
          break label291;
      }
      for (Object localObject2 = localap2; ; localObject2 = localObject1)
      {
        localap2 = localap2.b();
        localObject1 = localObject2;
        i6 = i9;
        break label129;
        localAtomicReferenceArray2.set(i6, localObject1);
        ap localap3 = localap1;
        i5 = i2;
        label193: if (localap3 != localObject1)
        {
          int i7 = i3 & localap3.c();
          ap localap4 = a(localap3, (ap)localAtomicReferenceArray2.get(i7));
          if (localap4 == null)
            break label264;
          localAtomicReferenceArray2.set(i7, localap4);
        }
        for (int i8 = i5; ; i8 = i5 - 1)
        {
          localap3 = localap3.b();
          i5 = i8;
          break label193;
          break;
          label264: a(localap3);
        }
        this.f = localAtomicReferenceArray2;
        this.b = i2;
        return;
        label291: i9 = i6;
      }
      label302: i5 = i2;
    }
  }

  private void h()
  {
    if (!isHeldByCurrentThread())
      this.a.m();
  }

  final V a(ap<K, V> paramap, long paramLong)
  {
    if (paramap.d() == null)
    {
      c();
      return null;
    }
    Object localObject = paramap.a().get();
    if (localObject == null)
    {
      c();
      return null;
    }
    if (this.a.b(paramap, paramLong))
    {
      a(paramLong);
      return null;
    }
    return localObject;
  }

  final V a(Object paramObject, int paramInt)
  {
    try
    {
      if (this.b != 0)
      {
        long l1 = this.a.r.a();
        ap localap = a(paramObject, paramInt, l1);
        if (localap == null)
          return null;
        Object localObject2 = localap.a().get();
        if (localObject2 != null)
        {
          b(localap, l1);
          Object localObject3 = a(localap, localap.d(), paramInt, localObject2, l1, this.a.u);
          return localObject3;
        }
        c();
      }
      return null;
    }
    finally
    {
      b();
    }
  }

  final V a(K paramK, int paramInt, ak<K, V> paramak, p<V> paramp)
  {
    Object localObject1 = null;
    try
    {
      localObject1 = com.google.a.i.a.x.a(paramp);
      if (localObject1 == null)
        throw new l("CacheLoader returned null for key " + paramK + ".");
    }
    finally
    {
      if (localObject1 == null)
      {
        this.n.b(paramak.f());
        a(paramK, paramInt, paramak);
      }
    }
    this.n.a(paramak.f());
    a(paramK, paramInt, paramak, localObject1);
    if (localObject1 == null)
    {
      this.n.b(paramak.f());
      a(paramK, paramInt, paramak);
    }
    return localObject1;
  }

  final V a(K paramK, int paramInt, k<? super K, V> paramk)
  {
    an.a(paramK);
    an.a(paramk);
    Throwable localThrowable;
    try
    {
      if (this.b != 0)
      {
        ap localap = e(paramK, paramInt);
        if (localap != null)
        {
          long l1 = this.a.r.a();
          Object localObject3 = a(localap, l1);
          if (localObject3 != null)
          {
            b(localap, l1);
            this.n.a();
            Object localObject4 = a(localap, paramK, paramInt, localObject3, l1, paramk);
            return localObject4;
          }
          bd localbd = localap.a();
          if (localbd.c())
          {
            Object localObject5 = a(localap, paramK, localbd);
            return localObject5;
          }
        }
      }
      Object localObject2 = b(paramK, paramInt, paramk);
      return localObject2;
    }
    catch (ExecutionException localExecutionException)
    {
      localThrowable = localExecutionException.getCause();
      if ((localThrowable instanceof Error))
        throw new e((Error)localThrowable);
    }
    finally
    {
      b();
    }
    if ((localThrowable instanceof RuntimeException))
      throw new com.google.a.i.a.w(localThrowable);
    throw localExecutionException;
  }

  final V a(K paramK, int paramInt, V paramV)
  {
    lock();
    try
    {
      long l1 = this.a.r.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      ap localap2;
      for (Object localObject2 = localap1; localObject2 != null; localObject2 = localap2)
      {
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.g.a(paramK, localObject3)))
        {
          bd localbd = ((ap)localObject2).a();
          Object localObject4 = localbd.get();
          if (localObject4 == null)
          {
            if (localbd.d())
            {
              this.d = (1 + this.d);
              ap localap3 = a(localap1, (ap)localObject2, localObject3, localbd, bx.c);
              int i2 = -1 + this.b;
              localAtomicReferenceArray.set(i1, localap3);
              this.b = i2;
            }
            return null;
          }
          this.d = (1 + this.d);
          a(paramK, localbd, bx.b);
          a((ap)localObject2, paramK, paramV, l1);
          f();
          return localObject4;
        }
        localap2 = ((ap)localObject2).b();
      }
      return null;
    }
    finally
    {
      unlock();
      h();
    }
  }

  final V a(K paramK, int paramInt, V paramV, boolean paramBoolean)
  {
    lock();
    try
    {
      long l1 = this.a.r.a();
      c(l1);
      if (1 + this.b > this.e)
        g();
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      for (ap localap2 = localap1; localap2 != null; localap2 = localap2.b())
      {
        Object localObject2 = localap2.d();
        if ((localap2.c() == paramInt) && (localObject2 != null) && (this.a.g.a(paramK, localObject2)))
        {
          bd localbd = localap2.a();
          Object localObject3 = localbd.get();
          if (localObject3 == null)
          {
            this.d = (1 + this.d);
            if (localbd.d())
            {
              a(paramK, localbd, bx.c);
              a(localap2, paramK, paramV, l1);
            }
            for (int i2 = this.b; ; i2 = 1 + this.b)
            {
              this.b = i2;
              f();
              return null;
              a(localap2, paramK, paramV, l1);
            }
          }
          if (paramBoolean)
          {
            c(localap2, l1);
            return localObject3;
          }
          this.d = (1 + this.d);
          a(paramK, localbd, bx.b);
          a(localap2, paramK, paramV, l1);
          f();
          return localObject3;
        }
      }
      this.d = (1 + this.d);
      ap localap3 = a(paramK, paramInt, localap1);
      a(localap3, paramK, paramV, l1);
      localAtomicReferenceArray.set(i1, localap3);
      this.b = (1 + this.b);
      f();
      return null;
    }
    finally
    {
      unlock();
      h();
    }
  }

  final void a()
  {
    if (this.b != 0)
      lock();
    while (true)
    {
      int i1;
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = this.f;
        i1 = 0;
        if (i1 >= localAtomicReferenceArray.length())
          break label206;
        ap localap = (ap)localAtomicReferenceArray.get(i1);
        if (localap != null)
        {
          if (localap.a().d())
            a(localap, bx.a);
          localap = localap.b();
          continue;
          if (i2 < localAtomicReferenceArray.length())
          {
            localAtomicReferenceArray.set(i2, null);
            i2++;
            continue;
          }
          if ((this.a.h()) && (this.h.poll() != null))
            continue;
          if ((this.a.i()) && (this.i.poll() != null))
            continue;
          this.l.clear();
          this.m.clear();
          this.k.set(0);
          this.d = (1 + this.d);
          this.b = 0;
          return;
        }
      }
      finally
      {
        unlock();
        h();
      }
      i1++;
      continue;
      label206: int i2 = 0;
    }
  }

  final boolean a(ap<K, V> paramap, int paramInt)
  {
    lock();
    try
    {
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      ap localap3;
      for (Object localObject2 = localap1; localObject2 != null; localObject2 = localap3)
      {
        if (localObject2 == paramap)
        {
          this.d = (1 + this.d);
          ap localap2 = a(localap1, (ap)localObject2, ((ap)localObject2).d(), ((ap)localObject2).a(), bx.c);
          int i2 = -1 + this.b;
          localAtomicReferenceArray.set(i1, localap2);
          this.b = i2;
          return true;
        }
        localap3 = ((ap)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      h();
    }
  }

  final boolean a(K paramK, int paramInt, bd<K, V> parambd)
  {
    lock();
    try
    {
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      Object localObject2 = localap1;
      boolean bool2;
      if (localObject2 != null)
      {
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.g.a(paramK, localObject3)))
          if (((ap)localObject2).a() == parambd)
          {
            this.d = (1 + this.d);
            ap localap3 = a(localap1, (ap)localObject2, localObject3, parambd, bx.c);
            int i2 = -1 + this.b;
            localAtomicReferenceArray.set(i1, localap3);
            this.b = i2;
            unlock();
            if (!isHeldByCurrentThread())
              h();
            bool2 = true;
          }
      }
      boolean bool3;
      do
      {
        boolean bool1;
        do
        {
          return bool2;
          unlock();
          bool1 = isHeldByCurrentThread();
          bool2 = false;
        }
        while (bool1);
        h();
        return false;
        ap localap2 = ((ap)localObject2).b();
        localObject2 = localap2;
        break;
        unlock();
        bool3 = isHeldByCurrentThread();
        bool2 = false;
      }
      while (bool3);
      h();
      return false;
    }
    finally
    {
      unlock();
      if (!isHeldByCurrentThread())
        h();
    }
  }

  final boolean a(K paramK, int paramInt, V paramV1, V paramV2)
  {
    lock();
    try
    {
      long l1 = this.a.r.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      ap localap2;
      for (Object localObject2 = localap1; localObject2 != null; localObject2 = localap2)
      {
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.g.a(paramK, localObject3)))
        {
          bd localbd = ((ap)localObject2).a();
          Object localObject4 = localbd.get();
          if (localObject4 == null)
          {
            if (localbd.d())
            {
              this.d = (1 + this.d);
              ap localap3 = a(localap1, (ap)localObject2, localObject3, localbd, bx.c);
              int i2 = -1 + this.b;
              localAtomicReferenceArray.set(i1, localap3);
              this.b = i2;
            }
            return false;
          }
          if (this.a.h.a(paramV1, localObject4))
          {
            this.d = (1 + this.d);
            a(paramK, localbd, bx.b);
            a((ap)localObject2, paramK, paramV2, l1);
            f();
            return true;
          }
          c((ap)localObject2, l1);
          return false;
        }
        localap2 = ((ap)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      h();
    }
  }

  final void b()
  {
    if ((0x3F & this.k.incrementAndGet()) == 0)
    {
      c(this.a.r.a());
      h();
    }
  }

  final boolean b(Object paramObject, int paramInt)
  {
    try
    {
      if (this.b != 0)
      {
        ap localap = a(paramObject, paramInt, this.a.r.a());
        if (localap == null)
          return false;
        Object localObject2 = localap.a().get();
        boolean bool = false;
        if (localObject2 != null)
          bool = true;
        return bool;
      }
      return false;
    }
    finally
    {
      b();
    }
  }

  final boolean b(Object paramObject1, int paramInt, Object paramObject2)
  {
    lock();
    try
    {
      c(this.a.r.a());
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      label249: ap localap2;
      for (Object localObject2 = localap1; localObject2 != null; localObject2 = localap2)
      {
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.g.a(paramObject1, localObject3)))
        {
          bd localbd = ((ap)localObject2).a();
          Object localObject4 = localbd.get();
          bx localbx1;
          if (this.a.h.a(paramObject2, localObject4))
          {
            localbx1 = bx.a;
            this.d = (1 + this.d);
            ap localap3 = a(localap1, (ap)localObject2, localObject3, localbd, localbx1);
            int i2 = -1 + this.b;
            localAtomicReferenceArray.set(i1, localap3);
            this.b = i2;
            bx localbx2 = bx.a;
            if (localbx1 != localbx2)
              break label249;
          }
          for (boolean bool = true; ; bool = false)
          {
            return bool;
            if ((localObject4 == null) && (localbd.d()))
            {
              localbx1 = bx.c;
              break;
            }
            return false;
          }
        }
        localap2 = ((ap)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      h();
    }
  }

  final V c(Object paramObject, int paramInt)
  {
    lock();
    try
    {
      c(this.a.r.a());
      AtomicReferenceArray localAtomicReferenceArray = this.f;
      int i1 = paramInt & -1 + localAtomicReferenceArray.length();
      ap localap1 = (ap)localAtomicReferenceArray.get(i1);
      ap localap2;
      for (Object localObject2 = localap1; localObject2 != null; localObject2 = localap2)
      {
        Object localObject3 = ((ap)localObject2).d();
        if ((((ap)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.g.a(paramObject, localObject3)))
        {
          bd localbd = ((ap)localObject2).a();
          Object localObject4 = localbd.get();
          if (localObject4 != null);
          for (bx localbx = bx.a; ; localbx = bx.c)
          {
            this.d = (1 + this.d);
            ap localap3 = a(localap1, (ap)localObject2, localObject3, localbd, localbx);
            int i2 = -1 + this.b;
            localAtomicReferenceArray.set(i1, localap3);
            this.b = i2;
            return localObject4;
            if (!localbd.d())
              break;
          }
          return null;
        }
        localap2 = ((ap)localObject2).b();
      }
      return null;
    }
    finally
    {
      unlock();
      h();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.aq
 * JD-Core Version:    0.6.2
 */
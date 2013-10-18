package com.nianticproject.ingress.common.scanner.a;

import a.a.a.a.b.bi;
import a.a.a.a.b.bl;
import a.a.a.a.c.j;
import a.a.a.a.c.l;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.hn;
import com.google.a.c.ho;
import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.e;
import com.nianticproject.ingress.common.q.f;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;

class u
  implements Disposable
{
  private static final Comparator<aa> a = new v();
  private static final com.nianticproject.ingress.common.w.aa b = new com.nianticproject.ingress.common.w.aa(u.class);
  private final e c;
  private final z d;
  private final f e;
  private final bi<ac> f = new bl((byte)0);
  private final ReferenceQueue<ac> g = new ReferenceQueue();
  private final bi<ab> h = new bl((byte)0);
  private hn<aa> i;
  private hn<aa> j;
  private final Map<c, ac> k = hc.b();
  private long l = 1L;
  private int m = 6;
  private int n = 16;

  u(e parame)
  {
    this(parame, (byte)0);
  }

  private u(e parame, byte paramByte)
  {
    this.c = parame;
    this.e = new w(this);
    parame.a(this.e);
    this.d = new x(this);
    this.i = hn.a(a).a().b();
    this.j = hn.a(a).a().b();
  }

  private n a(ac paramac, float paramFloat)
  {
    try
    {
      int i1;
      n localn2;
      if (ac.d(paramac) == this.l)
      {
        i1 = 1;
        ac.a(paramac, this.l);
        if (ac.b(paramac) == null)
          break label54;
        localn2 = ac.b(paramac);
      }
      for (n localn1 = localn2; ; localn1 = null)
      {
        return localn1;
        i1 = 0;
        break;
        label54: if (!this.f.b(ac.e(paramac)))
        {
          b.b("Evicted reference was dereferenced.");
          this.f.a(ac.e(paramac), paramac);
        }
        long l1 = System.currentTimeMillis();
        if ((!ac.f(paramac)) && (i1 == 0) && (ac.g(paramac) + ac.h(paramac) < l1))
          this.i.add(new aa(paramac, paramFloat));
      }
    }
    finally
    {
    }
  }

  // ERROR //
  private void a(c paramc, Future<com.nianticproject.ingress.common.q.d> paramFuture)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 79	com/nianticproject/ingress/common/scanner/a/u:k	Ljava/util/Map;
    //   8: aload_1
    //   9: invokeinterface 205 2 0
    //   14: checkcast 124	com/nianticproject/ingress/common/scanner/a/ac
    //   17: astore 5
    //   19: aload 5
    //   21: ifnull +27 -> 48
    //   24: aload_0
    //   25: getfield 65	com/nianticproject/ingress/common/scanner/a/u:f	La/a/a/a/b/bi;
    //   28: aload_1
    //   29: invokevirtual 209	com/nianticproject/ingress/common/q/c:d	()J
    //   32: invokeinterface 140 3 0
    //   37: ifeq +11 -> 48
    //   40: aload 5
    //   42: invokestatic 133	com/nianticproject/ingress/common/scanner/a/ac:b	(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;
    //   45: ifnull +6 -> 51
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: monitorexit
    //   53: aconst_null
    //   54: astore 6
    //   56: aload 6
    //   58: ifnonnull +78 -> 136
    //   61: aload_2
    //   62: invokeinterface 215 1 0
    //   67: checkcast 217	com/nianticproject/ingress/common/q/d
    //   70: astore 37
    //   72: aload 37
    //   74: astore 6
    //   76: goto -20 -> 56
    //   79: astore 4
    //   81: aload_0
    //   82: monitorexit
    //   83: aload 4
    //   85: athrow
    //   86: astore 32
    //   88: getstatic 53	com/nianticproject/ingress/common/scanner/a/u:b	Lcom/nianticproject/ingress/common/w/aa;
    //   91: astore 33
    //   93: iload_3
    //   94: anewarray 4	java/lang/Object
    //   97: astore 34
    //   99: aload 34
    //   101: iconst_0
    //   102: aload 32
    //   104: invokevirtual 221	java/util/concurrent/ExecutionException:toString	()Ljava/lang/String;
    //   107: aastore
    //   108: aload 33
    //   110: ldc 223
    //   112: aload 34
    //   114: invokevirtual 226	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   117: aload_0
    //   118: monitorenter
    //   119: aload 5
    //   121: iconst_0
    //   122: invokestatic 229	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   125: pop
    //   126: aload_0
    //   127: monitorexit
    //   128: return
    //   129: astore 35
    //   131: aload_0
    //   132: monitorexit
    //   133: aload 35
    //   135: athrow
    //   136: invokestatic 232	java/lang/System:nanoTime	()J
    //   139: pop2
    //   140: aload_0
    //   141: monitorenter
    //   142: aload 5
    //   144: invokestatic 234	com/nianticproject/ingress/common/scanner/a/ac:i	(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z
    //   147: istore 23
    //   149: iload 23
    //   151: ifne +236 -> 387
    //   154: aload 5
    //   156: iconst_1
    //   157: invokestatic 236	com/nianticproject/ingress/common/scanner/a/ac:b	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   160: pop
    //   161: aload_0
    //   162: monitorexit
    //   163: iload_3
    //   164: ifeq +217 -> 381
    //   167: aload_0
    //   168: getfield 104	com/nianticproject/ingress/common/scanner/a/u:d	Lcom/nianticproject/ingress/common/scanner/a/z;
    //   171: aload_1
    //   172: aload 6
    //   174: invokevirtual 239	com/nianticproject/ingress/common/q/d:b	()[B
    //   177: invokeinterface 244 3 0
    //   182: astore 29
    //   184: aload 29
    //   186: astore 24
    //   188: aload_0
    //   189: monitorenter
    //   190: iload_3
    //   191: ifeq +10 -> 201
    //   194: aload 5
    //   196: iconst_0
    //   197: invokestatic 236	com/nianticproject/ingress/common/scanner/a/ac:b	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   200: pop
    //   201: aload 5
    //   203: aload 24
    //   205: invokestatic 247	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;
    //   208: pop
    //   209: aload 5
    //   211: iconst_0
    //   212: invokestatic 229	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   215: pop
    //   216: aload_0
    //   217: monitorexit
    //   218: return
    //   219: astore 25
    //   221: aload_0
    //   222: monitorexit
    //   223: aload 25
    //   225: athrow
    //   226: astore 21
    //   228: iconst_0
    //   229: istore 22
    //   231: aload_0
    //   232: monitorexit
    //   233: aload 21
    //   235: athrow
    //   236: astore 7
    //   238: iload 22
    //   240: istore_3
    //   241: getstatic 53	com/nianticproject/ingress/common/scanner/a/u:b	Lcom/nianticproject/ingress/common/w/aa;
    //   244: pop
    //   245: new 249	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 251
    //   251: invokespecial 253	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload 7
    //   256: invokevirtual 257	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 258	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: pop
    //   263: aload_0
    //   264: monitorenter
    //   265: iload_3
    //   266: ifeq +10 -> 276
    //   269: aload 5
    //   271: iconst_0
    //   272: invokestatic 236	com/nianticproject/ingress/common/scanner/a/ac:b	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   275: pop
    //   276: aload 5
    //   278: aconst_null
    //   279: invokestatic 247	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;
    //   282: pop
    //   283: aload 5
    //   285: iconst_0
    //   286: invokestatic 229	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   289: pop
    //   290: aload_0
    //   291: monitorexit
    //   292: return
    //   293: astore 15
    //   295: aload_0
    //   296: monitorexit
    //   297: aload 15
    //   299: athrow
    //   300: astore 8
    //   302: iconst_0
    //   303: istore_3
    //   304: aload_0
    //   305: monitorenter
    //   306: iload_3
    //   307: ifeq +10 -> 317
    //   310: aload 5
    //   312: iconst_0
    //   313: invokestatic 236	com/nianticproject/ingress/common/scanner/a/ac:b	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   316: pop
    //   317: aload 5
    //   319: aconst_null
    //   320: invokestatic 247	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;
    //   323: pop
    //   324: aload 5
    //   326: iconst_0
    //   327: invokestatic 229	com/nianticproject/ingress/common/scanner/a/ac:a	(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    //   330: pop
    //   331: aload_0
    //   332: monitorexit
    //   333: aload 8
    //   335: athrow
    //   336: astore 9
    //   338: aload_0
    //   339: monitorexit
    //   340: aload 9
    //   342: athrow
    //   343: astore 8
    //   345: iload 22
    //   347: istore_3
    //   348: goto -44 -> 304
    //   351: astore 8
    //   353: goto -49 -> 304
    //   356: astore 7
    //   358: iconst_0
    //   359: istore_3
    //   360: goto -119 -> 241
    //   363: astore 7
    //   365: goto -124 -> 241
    //   368: astore 21
    //   370: iload_3
    //   371: istore 22
    //   373: goto -142 -> 231
    //   376: astore 31
    //   378: goto -322 -> 56
    //   381: aconst_null
    //   382: astore 24
    //   384: goto -196 -> 188
    //   387: iconst_0
    //   388: istore_3
    //   389: goto -228 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   4	19	79	finally
    //   24	48	79	finally
    //   48	50	79	finally
    //   61	72	86	java/util/concurrent/ExecutionException
    //   119	128	129	finally
    //   194	201	219	finally
    //   201	218	219	finally
    //   142	149	226	finally
    //   231	236	236	java/io/IOException
    //   269	276	293	finally
    //   276	292	293	finally
    //   136	142	300	finally
    //   310	317	336	finally
    //   317	333	336	finally
    //   231	236	343	finally
    //   167	184	351	finally
    //   241	263	351	finally
    //   136	142	356	java/io/IOException
    //   167	184	363	java/io/IOException
    //   154	161	368	finally
    //   161	163	368	finally
    //   61	72	376	java/lang/InterruptedException
  }

  final long a()
  {
    return this.l;
  }

  final ac a(long paramLong)
  {
    try
    {
      while (true)
      {
        ab localab1 = (ab)this.g.poll();
        if (localab1 == null)
          break;
        this.h.a(localab1.a.d());
      }
    }
    finally
    {
    }
    ac localac = (ac)this.f.e(paramLong);
    if (localac == null)
    {
      ab localab2 = (ab)this.h.e(paramLong);
      if (localab2 != null)
        localac = (ac)localab2.get();
    }
    if (localac == null)
    {
      localac = new ac(this, paramLong, (byte)0);
      this.f.a(paramLong, localac);
      this.h.a(paramLong, new ab(this, localac, this.g));
    }
    return localac;
  }

  final void b()
  {
    ArrayList localArrayList = eq.a();
    try
    {
      long l1 = this.l - this.m;
      l locall = this.f.b().a();
      while (locall.hasNext())
      {
        ac localac2 = (ac)locall.next();
        if ((localac2 == null) || (ac.d(localac2) <= l1))
        {
          if ((localac2 != null) && (ac.b(localac2) != null))
          {
            localArrayList.add(ac.b(localac2));
            ac.c(localac2);
          }
          locall.remove();
        }
      }
    }
    finally
    {
    }
    hn localhn = this.j;
    this.j = this.i;
    this.i = localhn;
    this.i.clear();
    this.l = (1L + this.l);
    for (int i1 = 0; i1 < localArrayList.size(); i1++)
      ((n)localArrayList.get(i1)).dispose();
    while (true)
    {
      ac localac1;
      try
      {
        aa localaa;
        localac1 = localaa.a;
        if ((ac.f(localac1)) || (ac.b(localac1) != null))
        {
          if (this.k.size() >= this.n)
            return;
          localaa = (aa)this.j.poll();
          if (localaa != null)
            continue;
          return;
        }
      }
      finally
      {
      }
      ac.a(localac1, true);
      ac.b(localac1, Math.min(8000L, ac.h(localac1) << 1));
      ac.c(localac1, System.currentTimeMillis());
      this.k.put(localac1.a(), localac1);
      Future localFuture = this.c.a(localac1.a());
      if (localFuture.isDone())
        a(localac1.a(), localFuture);
    }
  }

  public void dispose()
  {
    ArrayList localArrayList = eq.a();
    try
    {
      l locall = this.f.b().a();
      while (locall.hasNext())
      {
        ac localac = (ac)locall.next();
        if ((localac != null) && (ac.b(localac) != null))
        {
          localArrayList.add(ac.b(localac));
          ac.c(localac);
        }
        locall.remove();
      }
    }
    finally
    {
    }
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
      ((n)localIterator.next()).dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.u
 * JD-Core Version:    0.6.2
 */
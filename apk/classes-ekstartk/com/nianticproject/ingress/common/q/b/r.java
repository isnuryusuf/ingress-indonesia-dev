package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.w.aa;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class r extends a
{
  private static final aa b;
  private final f c;
  private final y d;
  private final m<w> e;
  private Thread f;
  private final ArrayList<w> g;
  private ArrayList<w> h;
  private final LinkedList<c> i;
  private ExecutorService j;

  static
  {
    if (!r.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      b = new aa(r.class);
      return;
    }
  }

  public r(f paramf, d paramd, x paramx)
  {
    this(paramf, paramd, paramx, (byte)0);
  }

  private r(f paramf, d paramd, x paramx, byte paramByte)
  {
    if ((!a) && (paramf == null))
      throw new AssertionError();
    if ((!a) && (paramd == null))
      throw new AssertionError();
    if ((!a) && (paramx == null))
      throw new AssertionError();
    this.c = paramf;
    this.d = null;
    this.e = new m(new s(this));
    this.g = new ArrayList();
    this.h = new ArrayList();
    this.i = new LinkedList();
    for (int k = 0; k <= 0; k++)
      this.i.addLast(paramd.a(paramx.a()));
  }

  private void a(c paramc, v paramv)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramv);
    u localu = new u(this, paramc, localArrayList);
    this.j.submit(localu);
  }

  private void a(v paramv, Throwable paramThrowable)
  {
    int k = 0;
    while (true)
      if (k < paramv.a())
      {
        com.nianticproject.ingress.common.q.c localc = paramv.a(k);
        com.nianticproject.ingress.common.q.d locald = paramv.b(k);
        w localw = (w)v.a(paramv).get(k);
        if (locald != null);
        try
        {
          this.c.a(localc, locald);
          if ((this.d == null) || (paramThrowable != null))
          {
            localw.a(paramThrowable);
            k++;
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            paramThrowable = localException;
            continue;
            if (locald == null)
              localw.a(new IOException());
            else
              localw.a(locald);
          }
        }
      }
  }

  private w b(com.nianticproject.ingress.common.q.c paramc)
  {
    synchronized ((w)this.e.a(paramc))
    {
      boolean bool = ???.b();
      int k = 0;
      if (bool)
      {
        k = 1;
        ???.c();
      }
      if (k == 0);
    }
    try
    {
      this.g.add(???);
      notifyAll();
      return ???;
      localObject1 = finally;
      throw localObject1;
    }
    finally
    {
    }
  }

  // ERROR //
  private void b()
  {
    // Byte code:
    //   0: ldc 244
    //   2: invokestatic 130	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: iconst_0
    //   6: istore 4
    //   8: iconst_0
    //   9: istore 5
    //   11: aconst_null
    //   12: astore_3
    //   13: aconst_null
    //   14: astore 6
    //   16: aload_0
    //   17: monitorenter
    //   18: iload 4
    //   20: aload_0
    //   21: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   24: invokevirtual 151	java/util/ArrayList:size	()I
    //   27: if_icmplt +34 -> 61
    //   30: aload_0
    //   31: monitorexit
    //   32: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   35: aload 6
    //   37: ifnull +11 -> 48
    //   40: aload_0
    //   41: aload_3
    //   42: aload 6
    //   44: invokespecial 246	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V
    //   47: return
    //   48: aload_3
    //   49: ifnull -2 -> 47
    //   52: aload_0
    //   53: getfield 81	com/nianticproject/ingress/common/q/b/r:i	Ljava/util/LinkedList;
    //   56: aload_3
    //   57: invokevirtual 95	java/util/LinkedList:addLast	(Ljava/lang/Object;)V
    //   60: return
    //   61: aload_0
    //   62: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   65: iload 4
    //   67: invokevirtual 227	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   70: checkcast 194	com/nianticproject/ingress/common/q/b/w
    //   73: astore 8
    //   75: aload_0
    //   76: monitorexit
    //   77: aload 8
    //   79: invokevirtual 249	com/nianticproject/ingress/common/q/b/w:isCancelled	()Z
    //   82: ifeq +64 -> 146
    //   85: aload_0
    //   86: monitorenter
    //   87: aload_0
    //   88: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   91: iload 4
    //   93: invokevirtual 252	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   96: pop
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_0
    //   100: aload 8
    //   102: invokevirtual 210	com/nianticproject/ingress/common/q/b/w:a	()Lcom/nianticproject/ingress/common/q/c;
    //   105: aload 8
    //   107: invokevirtual 255	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    //   110: goto -94 -> 16
    //   113: astore_1
    //   114: aload 6
    //   116: astore_2
    //   117: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   120: aload_2
    //   121: ifnull +351 -> 472
    //   124: aload_0
    //   125: aload_3
    //   126: aload_2
    //   127: invokespecial 246	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V
    //   130: aload_1
    //   131: athrow
    //   132: astore 7
    //   134: aload_0
    //   135: monitorexit
    //   136: aload 7
    //   138: athrow
    //   139: astore 27
    //   141: aload_0
    //   142: monitorexit
    //   143: aload 27
    //   145: athrow
    //   146: aload_0
    //   147: getfield 55	com/nianticproject/ingress/common/q/b/r:c	Lcom/nianticproject/ingress/common/q/b/f;
    //   150: aload 8
    //   152: invokevirtual 210	com/nianticproject/ingress/common/q/b/w:a	()Lcom/nianticproject/ingress/common/q/c;
    //   155: invokeinterface 258 2 0
    //   160: astore 9
    //   162: aload 9
    //   164: ifnull +97 -> 261
    //   167: aload_0
    //   168: getfield 57	com/nianticproject/ingress/common/q/b/r:d	Lcom/nianticproject/ingress/common/q/b/y;
    //   171: ifnull +8 -> 179
    //   174: aload_0
    //   175: getfield 57	com/nianticproject/ingress/common/q/b/r:d	Lcom/nianticproject/ingress/common/q/b/y;
    //   178: pop
    //   179: aconst_null
    //   180: astore 22
    //   182: aload 8
    //   184: monitorenter
    //   185: aload 8
    //   187: invokevirtual 249	com/nianticproject/ingress/common/q/b/w:isCancelled	()Z
    //   190: ifne +15 -> 205
    //   193: aload 22
    //   195: ifnull +41 -> 236
    //   198: aload 8
    //   200: aload 22
    //   202: invokevirtual 203	com/nianticproject/ingress/common/q/b/w:a	(Ljava/lang/Throwable;)V
    //   205: aload 8
    //   207: monitorexit
    //   208: aload_0
    //   209: monitorenter
    //   210: aload_0
    //   211: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   214: iload 4
    //   216: invokevirtual 252	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   219: pop
    //   220: aload_0
    //   221: monitorexit
    //   222: aload_0
    //   223: aload 8
    //   225: invokevirtual 210	com/nianticproject/ingress/common/q/b/w:a	()Lcom/nianticproject/ingress/common/q/c;
    //   228: aload 8
    //   230: invokevirtual 255	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    //   233: goto -217 -> 16
    //   236: aload 8
    //   238: aload 9
    //   240: invokevirtual 235	com/nianticproject/ingress/common/q/b/w:a	(Lcom/nianticproject/ingress/common/q/d;)V
    //   243: goto -38 -> 205
    //   246: astore 23
    //   248: aload 8
    //   250: monitorexit
    //   251: aload 23
    //   253: athrow
    //   254: astore 24
    //   256: aload_0
    //   257: monitorexit
    //   258: aload 24
    //   260: athrow
    //   261: aload_3
    //   262: ifnonnull +250 -> 512
    //   265: aload_0
    //   266: monitorenter
    //   267: aload_0
    //   268: getfield 81	com/nianticproject/ingress/common/q/b/r:i	Ljava/util/LinkedList;
    //   271: invokevirtual 152	java/util/LinkedList:size	()I
    //   274: ifeq +8 -> 282
    //   277: iload 5
    //   279: ifeq +21 -> 300
    //   282: iload 4
    //   284: iconst_1
    //   285: iadd
    //   286: istore 21
    //   288: aload_0
    //   289: monitorexit
    //   290: iload 21
    //   292: istore 4
    //   294: iconst_1
    //   295: istore 5
    //   297: goto -281 -> 16
    //   300: aload_0
    //   301: getfield 81	com/nianticproject/ingress/common/q/b/r:i	Ljava/util/LinkedList;
    //   304: invokevirtual 261	java/util/LinkedList:removeFirst	()Ljava/lang/Object;
    //   307: checkcast 263	com/nianticproject/ingress/common/q/b/c
    //   310: astore 11
    //   312: aload_0
    //   313: monitorexit
    //   314: aload 8
    //   316: monitorenter
    //   317: aload 8
    //   319: invokevirtual 249	com/nianticproject/ingress/common/q/b/w:isCancelled	()Z
    //   322: istore 13
    //   324: iload 13
    //   326: ifne +8 -> 334
    //   329: aload 8
    //   331: invokevirtual 265	com/nianticproject/ingress/common/q/b/w:d	()V
    //   334: aload 8
    //   336: monitorexit
    //   337: iload 13
    //   339: ifeq +54 -> 393
    //   342: aload_0
    //   343: monitorenter
    //   344: aload_0
    //   345: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   348: iload 4
    //   350: invokevirtual 252	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   353: pop
    //   354: aload_0
    //   355: monitorexit
    //   356: aload_0
    //   357: aload 8
    //   359: invokevirtual 210	com/nianticproject/ingress/common/q/b/w:a	()Lcom/nianticproject/ingress/common/q/c;
    //   362: aload 8
    //   364: invokevirtual 255	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    //   367: aload 11
    //   369: astore_3
    //   370: goto -354 -> 16
    //   373: aload_0
    //   374: monitorexit
    //   375: aload 10
    //   377: athrow
    //   378: astore 12
    //   380: aload 8
    //   382: monitorexit
    //   383: aload 12
    //   385: athrow
    //   386: astore 19
    //   388: aload_0
    //   389: monitorexit
    //   390: aload 19
    //   392: athrow
    //   393: aload 6
    //   395: ifnonnull +110 -> 505
    //   398: new 186	com/nianticproject/ingress/common/q/b/v
    //   401: dup
    //   402: invokespecial 266	com/nianticproject/ingress/common/q/b/v:<init>	()V
    //   405: astore 14
    //   407: aload 14
    //   409: aload 8
    //   411: invokevirtual 269	com/nianticproject/ingress/common/q/b/v:a	(Lcom/nianticproject/ingress/common/q/b/w;)V
    //   414: aload_0
    //   415: monitorenter
    //   416: aload_0
    //   417: getfield 74	com/nianticproject/ingress/common/q/b/r:g	Ljava/util/ArrayList;
    //   420: iload 4
    //   422: invokevirtual 252	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   425: pop
    //   426: aload_0
    //   427: monitorexit
    //   428: aload 14
    //   430: invokevirtual 217	com/nianticproject/ingress/common/q/b/v:a	()I
    //   433: bipush 8
    //   435: if_icmplt +83 -> 518
    //   438: aload_0
    //   439: aload 11
    //   441: aload 14
    //   443: invokespecial 246	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/b/c;Lcom/nianticproject/ingress/common/q/b/v;)V
    //   446: aconst_null
    //   447: astore 17
    //   449: aconst_null
    //   450: astore 18
    //   452: goto +95 -> 547
    //   455: astore 15
    //   457: aload_0
    //   458: monitorexit
    //   459: aload 15
    //   461: athrow
    //   462: astore_1
    //   463: aload 14
    //   465: astore_2
    //   466: aload 11
    //   468: astore_3
    //   469: goto -352 -> 117
    //   472: aload_3
    //   473: ifnull -343 -> 130
    //   476: aload_0
    //   477: getfield 81	com/nianticproject/ingress/common/q/b/r:i	Ljava/util/LinkedList;
    //   480: aload_3
    //   481: invokevirtual 95	java/util/LinkedList:addLast	(Ljava/lang/Object;)V
    //   484: goto -354 -> 130
    //   487: astore_1
    //   488: aconst_null
    //   489: astore_2
    //   490: aconst_null
    //   491: astore_3
    //   492: goto -375 -> 117
    //   495: astore 10
    //   497: goto -124 -> 373
    //   500: astore 22
    //   502: goto -320 -> 182
    //   505: aload 6
    //   507: astore 14
    //   509: goto -102 -> 407
    //   512: aload_3
    //   513: astore 11
    //   515: goto -201 -> 314
    //   518: aload 11
    //   520: astore 17
    //   522: aload 14
    //   524: astore 18
    //   526: goto +21 -> 547
    //   529: astore 10
    //   531: aload_3
    //   532: astore 11
    //   534: goto -161 -> 373
    //   537: astore_1
    //   538: aload 11
    //   540: astore_3
    //   541: aload 6
    //   543: astore_2
    //   544: goto -427 -> 117
    //   547: aload 17
    //   549: astore_3
    //   550: aload 18
    //   552: astore 6
    //   554: goto -538 -> 16
    //
    // Exception table:
    //   from	to	target	type
    //   16	18	113	finally
    //   77	87	113	finally
    //   99	110	113	finally
    //   134	139	113	finally
    //   141	146	113	finally
    //   146	162	113	finally
    //   167	179	113	finally
    //   182	185	113	finally
    //   208	210	113	finally
    //   222	233	113	finally
    //   248	254	113	finally
    //   256	261	113	finally
    //   265	267	113	finally
    //   18	32	132	finally
    //   61	77	132	finally
    //   87	99	139	finally
    //   185	193	246	finally
    //   198	205	246	finally
    //   205	208	246	finally
    //   236	243	246	finally
    //   210	222	254	finally
    //   317	324	378	finally
    //   329	334	378	finally
    //   334	337	378	finally
    //   344	356	386	finally
    //   416	428	455	finally
    //   407	416	462	finally
    //   428	446	462	finally
    //   457	462	462	finally
    //   0	5	487	finally
    //   312	314	495	finally
    //   167	179	500	java/lang/Exception
    //   267	277	529	finally
    //   288	290	529	finally
    //   300	312	529	finally
    //   314	317	537	finally
    //   342	344	537	finally
    //   356	367	537	finally
    //   373	378	537	finally
    //   380	386	537	finally
    //   388	393	537	finally
    //   398	407	537	finally
  }

  // ERROR //
  private void c()
  {
    // Byte code:
    //   0: ldc_w 271
    //   3: invokestatic 130	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 76	com/nianticproject/ingress/common/q/b/r:h	Ljava/util/ArrayList;
    //   12: astore_3
    //   13: aload_0
    //   14: new 71	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 72	java/util/ArrayList:<init>	()V
    //   21: putfield 76	com/nianticproject/ingress/common/q/b/r:h	Ljava/util/ArrayList;
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_3
    //   27: invokevirtual 173	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   30: astore 4
    //   32: aload 4
    //   34: invokeinterface 178 1 0
    //   39: ifeq +40 -> 79
    //   42: aload 4
    //   44: invokeinterface 182 1 0
    //   49: checkcast 194	com/nianticproject/ingress/common/q/b/w
    //   52: astore 5
    //   54: aload_0
    //   55: aload 5
    //   57: invokevirtual 210	com/nianticproject/ingress/common/q/b/w:a	()Lcom/nianticproject/ingress/common/q/c;
    //   60: aload 5
    //   62: invokevirtual 255	com/nianticproject/ingress/common/q/b/r:a	(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    //   65: goto -33 -> 32
    //   68: astore_1
    //   69: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   72: aload_1
    //   73: athrow
    //   74: astore_2
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_2
    //   78: athrow
    //   79: invokestatic 135	com/nianticproject/ingress/shared/aj:b	()V
    //   82: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	68	finally
    //   26	32	68	finally
    //   32	65	68	finally
    //   75	79	68	finally
    //   8	26	74	finally
  }

  public final void a()
  {
    try
    {
      Thread localThread = this.f;
      if (localThread != null);
      while (true)
      {
        return;
        this.j = Executors.newFixedThreadPool(1);
        this.f = new Thread(new t(this), "GMMTileStoreServiceThread");
        this.f.setDaemon(true);
        this.f.start();
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.r
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common;

import com.google.a.d.u;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.g.h;
import com.nianticproject.ingress.common.g.z;
import com.nianticproject.ingress.common.u.s;
import com.nianticproject.ingress.common.w.aa;

public class l
{
  private static final aa a = new aa(l.class);
  private s b;
  private final e c;
  private final a d;
  private h e;
  private u f;
  private boolean g = false;
  private boolean h = false;
  private long i = 0L;
  private boolean j = false;

  public l(e parame, a parama)
  {
    this.c = parame;
    this.d = parama;
  }

  private void c()
  {
    new m(this).e();
  }

  // ERROR //
  private final com.nianticproject.ingress.common.x.f d()
  {
    // Byte code:
    //   0: ldc 84
    //   2: invokestatic 88	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: invokestatic 54	java/lang/System:currentTimeMillis	()J
    //   8: lstore_2
    //   9: aload_0
    //   10: getfield 47	com/nianticproject/ingress/common/l:d	Lcom/nianticproject/ingress/common/a;
    //   13: ldc 90
    //   15: invokeinterface 67 2 0
    //   20: ldc 92
    //   22: invokestatic 88	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: monitorenter
    //   27: aload_0
    //   28: getfield 94	com/nianticproject/ingress/common/l:e	Lcom/nianticproject/ingress/common/g/h;
    //   31: astore 6
    //   33: invokestatic 99	com/google/a/c/jc:a	()Ljava/util/HashSet;
    //   36: astore 7
    //   38: aload 6
    //   40: invokeinterface 104 1 0
    //   45: invokeinterface 110 1 0
    //   50: astore 8
    //   52: aload 8
    //   54: invokeinterface 116 1 0
    //   59: ifeq +126 -> 185
    //   62: aload 8
    //   64: invokeinterface 120 1 0
    //   69: checkcast 122	com/google/a/d/j
    //   72: astore 27
    //   74: aload 27
    //   76: invokevirtual 125	com/google/a/d/j:f	()I
    //   79: istore 28
    //   81: iload 28
    //   83: bipush 16
    //   85: if_icmpge +45 -> 130
    //   88: aload 27
    //   90: bipush 16
    //   92: invokevirtual 128	com/google/a/d/j:c	(I)Lcom/google/a/d/j;
    //   95: astore 29
    //   97: aload 29
    //   99: aload 27
    //   101: bipush 16
    //   103: invokevirtual 130	com/google/a/d/j:d	(I)Lcom/google/a/d/j;
    //   106: invokevirtual 134	com/google/a/d/j:equals	(Ljava/lang/Object;)Z
    //   109: ifne -57 -> 52
    //   112: aload 7
    //   114: aload 29
    //   116: invokevirtual 139	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   119: pop
    //   120: aload 29
    //   122: invokevirtual 143	com/google/a/d/j:m	()Lcom/google/a/d/j;
    //   125: astore 29
    //   127: goto -30 -> 97
    //   130: iload 28
    //   132: bipush 16
    //   134: if_icmple +40 -> 174
    //   137: aload 7
    //   139: aload 27
    //   141: bipush 16
    //   143: invokevirtual 145	com/google/a/d/j:b	(I)Lcom/google/a/d/j;
    //   146: invokevirtual 139	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   149: pop
    //   150: goto -98 -> 52
    //   153: astore 5
    //   155: aload_0
    //   156: monitorexit
    //   157: aload 5
    //   159: athrow
    //   160: astore 4
    //   162: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   165: aload 4
    //   167: athrow
    //   168: astore_1
    //   169: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   172: aload_1
    //   173: athrow
    //   174: aload 7
    //   176: aload 27
    //   178: invokevirtual 139	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   181: pop
    //   182: goto -130 -> 52
    //   185: aload 7
    //   187: invokevirtual 150	java/util/HashSet:size	()I
    //   190: newarray long
    //   192: astore 9
    //   194: aload 7
    //   196: invokevirtual 151	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   199: astore 10
    //   201: iconst_0
    //   202: istore 11
    //   204: aload 10
    //   206: invokeinterface 116 1 0
    //   211: ifeq +38 -> 249
    //   214: aload 10
    //   216: invokeinterface 120 1 0
    //   221: checkcast 122	com/google/a/d/j
    //   224: astore 25
    //   226: iload 11
    //   228: iconst_1
    //   229: iadd
    //   230: istore 26
    //   232: aload 9
    //   234: iload 11
    //   236: aload 25
    //   238: invokevirtual 153	com/google/a/d/j:d	()J
    //   241: lastore
    //   242: iload 26
    //   244: istore 11
    //   246: goto -42 -> 204
    //   249: new 155	com/google/a/d/u
    //   252: dup
    //   253: aload_0
    //   254: getfield 157	com/nianticproject/ingress/common/l:f	Lcom/google/a/d/u;
    //   257: invokevirtual 160	com/google/a/d/u:a	()Lcom/google/a/d/d;
    //   260: aload_0
    //   261: getfield 157	com/nianticproject/ingress/common/l:f	Lcom/google/a/d/u;
    //   264: invokevirtual 162	com/google/a/d/u:d	()Lcom/google/a/d/d;
    //   267: invokespecial 165	com/google/a/d/u:<init>	(Lcom/google/a/d/d;Lcom/google/a/d/d;)V
    //   270: astore 12
    //   272: aload_0
    //   273: monitorexit
    //   274: aload_0
    //   275: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   278: aload 9
    //   280: invokeinterface 168 2 0
    //   285: astore 13
    //   287: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   290: aload_0
    //   291: getfield 170	com/nianticproject/ingress/common/l:b	Lcom/nianticproject/ingress/common/u/s;
    //   294: aload 12
    //   296: aload 9
    //   298: aload 13
    //   300: invokevirtual 175	com/nianticproject/ingress/common/u/s:a	(Lcom/google/a/d/u;[J[J)Lcom/google/a/a/ak;
    //   303: astore 14
    //   305: invokestatic 54	java/lang/System:currentTimeMillis	()J
    //   308: pop2
    //   309: aload_0
    //   310: getfield 47	com/nianticproject/ingress/common/l:d	Lcom/nianticproject/ingress/common/a;
    //   313: ldc 177
    //   315: invokeinterface 67 2 0
    //   320: aload 14
    //   322: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   325: ifnull +72 -> 397
    //   328: aload 14
    //   330: getfield 184	com/google/a/a/ak:b	Ljava/lang/Object;
    //   333: astore 22
    //   335: aload 22
    //   337: ifnull +60 -> 397
    //   340: ldc 186
    //   342: invokestatic 88	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   345: aload_0
    //   346: lload_2
    //   347: putfield 41	com/nianticproject/ingress/common/l:i	J
    //   350: aload_0
    //   351: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   354: aload 9
    //   356: aload 14
    //   358: getfield 184	com/google/a/a/ak:b	Ljava/lang/Object;
    //   361: checkcast 188	[J
    //   364: invokeinterface 191 3 0
    //   369: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   372: ldc 193
    //   374: invokestatic 88	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   377: aload_0
    //   378: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   381: aload 14
    //   383: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   386: checkcast 195	com/nianticproject/ingress/shared/model/e
    //   389: invokeinterface 198 2 0
    //   394: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   397: aload_0
    //   398: getfield 47	com/nianticproject/ingress/common/l:d	Lcom/nianticproject/ingress/common/a;
    //   401: ldc 200
    //   403: invokeinterface 67 2 0
    //   408: aload_0
    //   409: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   412: invokeinterface 202 1 0
    //   417: lstore 17
    //   419: aload_0
    //   420: getfield 170	com/nianticproject/ingress/common/l:b	Lcom/nianticproject/ingress/common/u/s;
    //   423: lload 17
    //   425: invokevirtual 205	com/nianticproject/ingress/common/u/s:a	(J)Lcom/google/a/a/ak;
    //   428: astore 19
    //   430: aload 19
    //   432: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   435: ifnull +49 -> 484
    //   438: aload 19
    //   440: getfield 184	com/google/a/a/ak:b	Ljava/lang/Object;
    //   443: ifnull +41 -> 484
    //   446: aload 19
    //   448: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   451: checkcast 195	com/nianticproject/ingress/shared/model/e
    //   454: invokeinterface 208 1 0
    //   459: invokeinterface 213 1 0
    //   464: ifeq +81 -> 545
    //   467: lload 17
    //   469: lconst_0
    //   470: lcmp
    //   471: ifne +74 -> 545
    //   474: aload_0
    //   475: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   478: lconst_1
    //   479: invokeinterface 216 3 0
    //   484: aload 14
    //   486: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   489: ifnull +126 -> 615
    //   492: aload 19
    //   494: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   497: ifnull +118 -> 615
    //   500: iconst_1
    //   501: istore 20
    //   503: iload 20
    //   505: ifeq +96 -> 601
    //   508: aload_0
    //   509: getfield 47	com/nianticproject/ingress/common/l:d	Lcom/nianticproject/ingress/common/a;
    //   512: ldc 218
    //   514: invokeinterface 220 2 0
    //   519: aload_0
    //   520: iconst_1
    //   521: putfield 43	com/nianticproject/ingress/common/l:j	Z
    //   524: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   527: aconst_null
    //   528: areturn
    //   529: astore 23
    //   531: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   534: aload 23
    //   536: athrow
    //   537: astore 24
    //   539: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   542: aload 24
    //   544: athrow
    //   545: ldc 222
    //   547: invokestatic 88	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   550: aload_0
    //   551: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   554: aload 19
    //   556: getfield 184	com/google/a/a/ak:b	Ljava/lang/Object;
    //   559: checkcast 224	java/lang/Long
    //   562: invokevirtual 227	java/lang/Long:longValue	()J
    //   565: invokeinterface 216 3 0
    //   570: aload_0
    //   571: getfield 45	com/nianticproject/ingress/common/l:c	Lcom/nianticproject/ingress/common/g/e;
    //   574: aload 19
    //   576: getfield 182	com/google/a/a/ak:a	Ljava/lang/Object;
    //   579: checkcast 195	com/nianticproject/ingress/shared/model/e
    //   582: invokeinterface 198 2 0
    //   587: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   590: goto -106 -> 484
    //   593: astore 21
    //   595: invokestatic 147	com/nianticproject/ingress/shared/aj:b	()V
    //   598: aload 21
    //   600: athrow
    //   601: aload_0
    //   602: getfield 47	com/nianticproject/ingress/common/l:d	Lcom/nianticproject/ingress/common/a;
    //   605: ldc 229
    //   607: invokeinterface 220 2 0
    //   612: goto -93 -> 519
    //   615: iconst_0
    //   616: istore 20
    //   618: goto -115 -> 503
    //
    // Exception table:
    //   from	to	target	type
    //   27	52	153	finally
    //   52	81	153	finally
    //   88	97	153	finally
    //   97	127	153	finally
    //   137	150	153	finally
    //   174	182	153	finally
    //   185	201	153	finally
    //   204	226	153	finally
    //   232	242	153	finally
    //   249	274	153	finally
    //   20	27	160	finally
    //   155	160	160	finally
    //   274	287	160	finally
    //   0	20	168	finally
    //   162	168	168	finally
    //   287	335	168	finally
    //   369	372	168	finally
    //   394	397	168	finally
    //   397	467	168	finally
    //   474	484	168	finally
    //   484	500	168	finally
    //   508	519	168	finally
    //   519	524	168	finally
    //   531	537	168	finally
    //   539	545	168	finally
    //   587	590	168	finally
    //   595	601	168	finally
    //   601	612	168	finally
    //   340	369	529	finally
    //   372	394	537	finally
    //   545	587	593	finally
  }

  public final void a(u paramu, h paramh)
  {
    if (paramu == null)
      return;
    while (true)
      try
      {
        this.e = new z(paramh.a());
        this.f = paramu;
        if (!this.g)
          break;
        if (this.h)
        {
          this.h = true;
          return;
        }
      }
      finally
      {
      }
    this.g = true;
    c();
  }

  public final void a(s params)
  {
    this.b = params;
  }

  public final boolean a()
  {
    return this.j;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.l
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.c;

import com.nianticproject.ingress.common.f.h;

final class am extends h
{
  private long b;
  private long c;
  private boolean d = true;

  public am(ak paramak, long paramLong)
  {
    a(paramLong);
  }

  // ERROR //
  private java.lang.Void j()
  {
    // Byte code:
    //   0: ldc 29
    //   2: invokestatic 34	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   9: invokestatic 39	com/nianticproject/ingress/common/c/ak:a	(Lcom/nianticproject/ingress/common/c/ak;)Ljava/lang/Object;
    //   12: astore_2
    //   13: aload_2
    //   14: monitorenter
    //   15: aload_0
    //   16: getfield 41	com/nianticproject/ingress/common/c/am:b	J
    //   19: lstore 4
    //   21: aload_2
    //   22: monitorexit
    //   23: invokestatic 47	java/lang/System:currentTimeMillis	()J
    //   26: lstore 6
    //   28: lload 4
    //   30: lload 6
    //   32: lcmp
    //   33: ifge +223 -> 256
    //   36: aload_0
    //   37: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   40: invokestatic 39	com/nianticproject/ingress/common/c/ak:a	(Lcom/nianticproject/ingress/common/c/ak;)Ljava/lang/Object;
    //   43: astore 8
    //   45: aload 8
    //   47: monitorenter
    //   48: aload_0
    //   49: iconst_0
    //   50: putfield 20	com/nianticproject/ingress/common/c/am:d	Z
    //   53: aload 8
    //   55: monitorexit
    //   56: aload_0
    //   57: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   60: invokestatic 39	com/nianticproject/ingress/common/c/ak:a	(Lcom/nianticproject/ingress/common/c/ak;)Ljava/lang/Object;
    //   63: astore 10
    //   65: aload 10
    //   67: monitorenter
    //   68: aload_0
    //   69: getfield 49	com/nianticproject/ingress/common/c/am:c	J
    //   72: lstore 12
    //   74: aload 10
    //   76: monitorexit
    //   77: ldc2_w 50
    //   80: lload 12
    //   82: lmul
    //   83: lstore 14
    //   85: lconst_1
    //   86: lload 14
    //   88: aload_0
    //   89: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   92: invokestatic 54	com/nianticproject/ingress/common/c/ak:b	(Lcom/nianticproject/ingress/common/c/ak;)Lcom/nianticproject/ingress/common/model/k;
    //   95: invokeinterface 58 1 0
    //   100: ldiv
    //   101: invokestatic 64	java/lang/Math:max	(JJ)J
    //   104: lstore 16
    //   106: invokestatic 69	com/google/a/c/eq:a	()Ljava/util/ArrayList;
    //   109: astore 18
    //   111: invokestatic 47	java/lang/System:currentTimeMillis	()J
    //   114: pop2
    //   115: aload_0
    //   116: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   119: invokestatic 72	com/nianticproject/ingress/common/c/ak:c	(Lcom/nianticproject/ingress/common/c/ak;)Ljava/util/Random;
    //   122: iconst_2
    //   123: invokevirtual 78	java/util/Random:nextInt	(I)I
    //   126: ifne +163 -> 289
    //   129: aload 18
    //   131: getstatic 84	com/nianticproject/ingress/common/c/ba:er	Lcom/nianticproject/ingress/common/c/ba;
    //   134: invokeinterface 90 2 0
    //   139: pop
    //   140: aload 18
    //   142: lload 16
    //   144: l2i
    //   145: i2d
    //   146: invokestatic 95	com/nianticproject/ingress/common/w/ak:a	(D)Ljava/util/List;
    //   149: invokeinterface 99 2 0
    //   154: pop
    //   155: aload 18
    //   157: getstatic 102	com/nianticproject/ingress/common/c/ba:dy	Lcom/nianticproject/ingress/common/c/ba;
    //   160: invokeinterface 90 2 0
    //   165: pop
    //   166: aload 18
    //   168: getstatic 105	com/nianticproject/ingress/common/c/ba:bm	Lcom/nianticproject/ingress/common/c/ba;
    //   171: invokeinterface 90 2 0
    //   176: pop
    //   177: new 107	com/nianticproject/ingress/common/c/bo
    //   180: dup
    //   181: invokespecial 108	com/nianticproject/ingress/common/c/bo:<init>	()V
    //   184: astore 25
    //   186: aload 25
    //   188: aload 18
    //   190: invokevirtual 111	com/nianticproject/ingress/common/c/bo:a	(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;
    //   193: pop
    //   194: aload 25
    //   196: getstatic 116	com/nianticproject/ingress/common/c/bp:a	Lcom/nianticproject/ingress/common/c/bp;
    //   199: invokevirtual 119	com/nianticproject/ingress/common/c/bo:a	(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;
    //   202: pop
    //   203: aload_0
    //   204: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   207: aload 25
    //   209: invokestatic 122	com/nianticproject/ingress/common/c/ak:a	(Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/c/bo;)Z
    //   212: pop
    //   213: aload 25
    //   215: iconst_1
    //   216: invokevirtual 125	com/nianticproject/ingress/common/c/bo:a	(Z)Lcom/nianticproject/ingress/common/c/bo;
    //   219: pop
    //   220: aload_0
    //   221: getfield 15	com/nianticproject/ingress/common/c/am:a	Lcom/nianticproject/ingress/common/c/ak;
    //   224: aload 25
    //   226: invokevirtual 129	com/nianticproject/ingress/common/c/bo:f	()Lcom/nianticproject/ingress/common/c/bn;
    //   229: invokestatic 132	com/nianticproject/ingress/common/c/ak:a	(Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/c/bn;)V
    //   232: invokestatic 134	com/nianticproject/ingress/shared/aj:b	()V
    //   235: aconst_null
    //   236: areturn
    //   237: astore_3
    //   238: aload_2
    //   239: monitorexit
    //   240: aload_3
    //   241: athrow
    //   242: astore_1
    //   243: invokestatic 134	com/nianticproject/ingress/shared/aj:b	()V
    //   246: aload_1
    //   247: athrow
    //   248: astore 9
    //   250: aload 8
    //   252: monitorexit
    //   253: aload 9
    //   255: athrow
    //   256: lload 4
    //   258: lload 6
    //   260: lsub
    //   261: lstore 31
    //   263: lload 31
    //   265: invokestatic 140	java/lang/Thread:sleep	(J)V
    //   268: goto -263 -> 5
    //   271: astore 33
    //   273: aload 33
    //   275: invokevirtual 143	java/lang/InterruptedException:printStackTrace	()V
    //   278: goto -273 -> 5
    //   281: astore 11
    //   283: aload 10
    //   285: monitorexit
    //   286: aload 11
    //   288: athrow
    //   289: aload 18
    //   291: getstatic 146	com/nianticproject/ingress/common/c/ba:es	Lcom/nianticproject/ingress/common/c/ba;
    //   294: invokeinterface 90 2 0
    //   299: pop
    //   300: goto -160 -> 140
    //
    // Exception table:
    //   from	to	target	type
    //   15	23	237	finally
    //   0	5	242	finally
    //   5	15	242	finally
    //   23	28	242	finally
    //   36	48	242	finally
    //   56	68	242	finally
    //   85	140	242	finally
    //   140	232	242	finally
    //   238	242	242	finally
    //   250	256	242	finally
    //   263	268	242	finally
    //   273	278	242	finally
    //   283	289	242	finally
    //   289	300	242	finally
    //   48	56	248	finally
    //   263	268	271	java/lang/InterruptedException
    //   68	77	281	finally
  }

  public final boolean a(long paramLong)
  {
    long l = 4000L + System.currentTimeMillis();
    synchronized (ak.a(this.a))
    {
      if (this.d)
      {
        this.c = (paramLong + this.c);
        this.b = l;
        return true;
      }
      return false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.am
 * JD-Core Version:    0.6.2
 */
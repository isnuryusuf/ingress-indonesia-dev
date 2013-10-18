package com.google.a.i.a;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

public final class s
{
  private static <T> p<T> a(r paramr, Callable<T> paramCallable, BlockingQueue<Future<T>> paramBlockingQueue)
  {
    p localp = paramr.a(paramCallable);
    localp.a(new t(paramBlockingQueue, localp), a());
    return localp;
  }

  public static r a()
  {
    return new u((byte)0);
  }

  // ERROR //
  public static <T> T a(r paramr, java.util.Collection<? extends Callable<T>> paramCollection, boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 40	com/google/a/a/an:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_1
    //   6: invokeinterface 46 1 0
    //   11: istore 6
    //   13: iload 6
    //   15: ifle +217 -> 232
    //   18: iconst_1
    //   19: istore 7
    //   21: iload 7
    //   23: invokestatic 49	com/google/a/a/an:a	(Z)V
    //   26: iload 6
    //   28: invokestatic 54	com/google/a/c/eq:a	(I)Ljava/util/ArrayList;
    //   31: astore 8
    //   33: new 56	java/util/concurrent/LinkedBlockingQueue
    //   36: dup
    //   37: invokespecial 59	java/util/concurrent/LinkedBlockingQueue:<init>	()V
    //   40: astore 9
    //   42: aconst_null
    //   43: astore 10
    //   45: iload_2
    //   46: ifeq +192 -> 238
    //   49: invokestatic 65	java/lang/System:nanoTime	()J
    //   52: lstore 11
    //   54: aload_1
    //   55: invokeinterface 69 1 0
    //   60: astore 16
    //   62: aload 8
    //   64: aload_0
    //   65: aload 16
    //   67: invokeinterface 75 1 0
    //   72: checkcast 77	java/util/concurrent/Callable
    //   75: aload 9
    //   77: invokestatic 79	com/google/a/i/a/s:a	(Lcom/google/a/i/a/r;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/a/i/a/p;
    //   80: invokeinterface 85 2 0
    //   85: pop
    //   86: iload 6
    //   88: iconst_1
    //   89: isub
    //   90: istore 18
    //   92: lload_3
    //   93: lstore 19
    //   95: lload 11
    //   97: lstore 21
    //   99: iconst_1
    //   100: istore 23
    //   102: aload 9
    //   104: invokeinterface 90 1 0
    //   109: checkcast 92	java/util/concurrent/Future
    //   112: astore 24
    //   114: aload 24
    //   116: ifnonnull +332 -> 448
    //   119: iload 18
    //   121: ifle +123 -> 244
    //   124: iload 18
    //   126: iconst_1
    //   127: isub
    //   128: istore 45
    //   130: aload 8
    //   132: aload_0
    //   133: aload 16
    //   135: invokeinterface 75 1 0
    //   140: checkcast 77	java/util/concurrent/Callable
    //   143: aload 9
    //   145: invokestatic 79	com/google/a/i/a/s:a	(Lcom/google/a/i/a/r;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/a/i/a/p;
    //   148: invokeinterface 85 2 0
    //   153: pop
    //   154: iload 23
    //   156: iconst_1
    //   157: iadd
    //   158: istore 32
    //   160: aload 24
    //   162: astore 31
    //   164: lload 21
    //   166: lstore 28
    //   168: iload 45
    //   170: istore 30
    //   172: lload 19
    //   174: lstore 25
    //   176: aload 31
    //   178: ifnull +263 -> 441
    //   181: iinc 32 255
    //   184: aload 31
    //   186: invokeinterface 95 1 0
    //   191: astore 35
    //   193: aload 8
    //   195: invokeinterface 96 1 0
    //   200: astore 36
    //   202: aload 36
    //   204: invokeinterface 100 1 0
    //   209: ifeq +229 -> 438
    //   212: aload 36
    //   214: invokeinterface 75 1 0
    //   219: checkcast 92	java/util/concurrent/Future
    //   222: iconst_1
    //   223: invokeinterface 104 2 0
    //   228: pop
    //   229: goto -27 -> 202
    //   232: iconst_0
    //   233: istore 7
    //   235: goto -214 -> 21
    //   238: lconst_0
    //   239: lstore 11
    //   241: goto -187 -> 54
    //   244: iload 23
    //   246: ifeq +171 -> 417
    //   249: iload_2
    //   250: ifeq +112 -> 362
    //   253: aload 9
    //   255: lload 19
    //   257: getstatic 110	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   260: invokeinterface 113 4 0
    //   265: checkcast 92	java/util/concurrent/Future
    //   268: astore 40
    //   270: aload 40
    //   272: ifnonnull +52 -> 324
    //   275: new 115	java/util/concurrent/TimeoutException
    //   278: dup
    //   279: invokespecial 116	java/util/concurrent/TimeoutException:<init>	()V
    //   282: athrow
    //   283: astore 13
    //   285: aload 8
    //   287: invokeinterface 96 1 0
    //   292: astore 14
    //   294: aload 14
    //   296: invokeinterface 100 1 0
    //   301: ifeq +134 -> 435
    //   304: aload 14
    //   306: invokeinterface 75 1 0
    //   311: checkcast 92	java/util/concurrent/Future
    //   314: iconst_1
    //   315: invokeinterface 104 2 0
    //   320: pop
    //   321: goto -27 -> 294
    //   324: invokestatic 65	java/lang/System:nanoTime	()J
    //   327: lstore 41
    //   329: lload 19
    //   331: lload 41
    //   333: lload 21
    //   335: lsub
    //   336: lsub
    //   337: lstore 43
    //   339: iload 23
    //   341: istore 32
    //   343: lload 43
    //   345: lstore 25
    //   347: iload 18
    //   349: istore 30
    //   351: lload 41
    //   353: lstore 28
    //   355: aload 40
    //   357: astore 31
    //   359: goto -183 -> 176
    //   362: aload 9
    //   364: invokeinterface 119 1 0
    //   369: checkcast 92	java/util/concurrent/Future
    //   372: astore 38
    //   374: lload 19
    //   376: lstore 25
    //   378: iload 23
    //   380: istore 39
    //   382: lload 21
    //   384: lstore 28
    //   386: iload 18
    //   388: istore 30
    //   390: aload 38
    //   392: astore 31
    //   394: iload 39
    //   396: istore 32
    //   398: goto -222 -> 176
    //   401: astore 34
    //   403: new 33	java/util/concurrent/ExecutionException
    //   406: dup
    //   407: aload 34
    //   409: invokespecial 122	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   412: astore 33
    //   414: goto +82 -> 496
    //   417: aload 10
    //   419: ifnonnull +13 -> 432
    //   422: new 33	java/util/concurrent/ExecutionException
    //   425: dup
    //   426: aconst_null
    //   427: invokespecial 122	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   430: astore 10
    //   432: aload 10
    //   434: athrow
    //   435: aload 13
    //   437: athrow
    //   438: aload 35
    //   440: areturn
    //   441: aload 10
    //   443: astore 33
    //   445: goto +51 -> 496
    //   448: lload 19
    //   450: lstore 25
    //   452: iload 23
    //   454: istore 27
    //   456: lload 21
    //   458: lstore 28
    //   460: iload 18
    //   462: istore 30
    //   464: aload 24
    //   466: astore 31
    //   468: iload 27
    //   470: istore 32
    //   472: goto -296 -> 176
    //   475: astore 10
    //   477: iload 30
    //   479: istore 18
    //   481: lload 25
    //   483: lstore 19
    //   485: lload 28
    //   487: lstore 21
    //   489: iload 32
    //   491: istore 23
    //   493: goto -391 -> 102
    //   496: aload 33
    //   498: astore 10
    //   500: lload 25
    //   502: lstore 19
    //   504: iload 30
    //   506: istore 18
    //   508: lload 28
    //   510: lstore 21
    //   512: iload 32
    //   514: istore 23
    //   516: goto -414 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   49	54	283	finally
    //   54	86	283	finally
    //   102	114	283	finally
    //   130	154	283	finally
    //   184	193	283	finally
    //   253	270	283	finally
    //   275	283	283	finally
    //   324	329	283	finally
    //   362	374	283	finally
    //   403	414	283	finally
    //   422	432	283	finally
    //   432	435	283	finally
    //   184	193	401	java/lang/RuntimeException
    //   184	193	475	java/util/concurrent/ExecutionException
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.s
 * JD-Core Version:    0.6.2
 */
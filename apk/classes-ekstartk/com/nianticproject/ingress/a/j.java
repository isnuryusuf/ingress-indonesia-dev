package com.nianticproject.ingress.a;

import com.nianticproject.ingress.common.c.bl;
import com.nianticproject.ingress.common.f.a;

final class j extends a<Void, bl>
{
  private boolean b = true;
  private long c = 0L;
  private long d = 0L;

  public j(d paramd)
  {
    super(d.g());
  }

  // ERROR //
  private bl j()
  {
    // Byte code:
    //   0: ldc 38
    //   2: aload_0
    //   3: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   6: invokestatic 41	com/nianticproject/ingress/a/d:d	(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bi;
    //   9: invokevirtual 47	com/nianticproject/ingress/common/c/bi:toString	()Ljava/lang/String;
    //   12: ldc 49
    //   14: invokestatic 54	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   17: new 56	com/nianticproject/ingress/common/w/al
    //   20: dup
    //   21: invokespecial 59	com/nianticproject/ingress/common/w/al:<init>	()V
    //   24: invokevirtual 62	com/nianticproject/ingress/common/w/al:a	()Lcom/nianticproject/ingress/common/w/al;
    //   27: astore_2
    //   28: aload_0
    //   29: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   32: invokestatic 65	com/nianticproject/ingress/a/d:a	(Lcom/nianticproject/ingress/a/d;)Ljava/lang/Object;
    //   35: astore 8
    //   37: aload 8
    //   39: monitorenter
    //   40: aload_0
    //   41: invokevirtual 68	com/nianticproject/ingress/a/j:d	()Z
    //   44: ifeq +23 -> 67
    //   47: new 70	com/nianticproject/ingress/common/c/bl
    //   50: dup
    //   51: ldc 72
    //   53: invokespecial 75	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;)V
    //   56: astore 10
    //   58: aload 8
    //   60: monitorexit
    //   61: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   64: aload 10
    //   66: areturn
    //   67: aload_0
    //   68: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   71: invokestatic 80	com/nianticproject/ingress/a/d:e	(Lcom/nianticproject/ingress/a/d;)V
    //   74: aload_0
    //   75: aload_2
    //   76: invokevirtual 83	com/nianticproject/ingress/common/w/al:c	()J
    //   79: putfield 27	com/nianticproject/ingress/a/j:c	J
    //   82: aload 8
    //   84: monitorexit
    //   85: aload_0
    //   86: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   89: invokestatic 65	com/nianticproject/ingress/a/d:a	(Lcom/nianticproject/ingress/a/d;)Ljava/lang/Object;
    //   92: astore 11
    //   94: aload 11
    //   96: monitorenter
    //   97: aload_0
    //   98: invokevirtual 68	com/nianticproject/ingress/a/j:d	()Z
    //   101: ifeq +101 -> 202
    //   104: new 70	com/nianticproject/ingress/common/c/bl
    //   107: dup
    //   108: ldc 85
    //   110: invokespecial 75	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;)V
    //   113: astore 13
    //   115: aload 11
    //   117: monitorexit
    //   118: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   121: aload 13
    //   123: areturn
    //   124: astore 9
    //   126: aload 8
    //   128: monitorexit
    //   129: aload 9
    //   131: athrow
    //   132: astore_3
    //   133: aload_0
    //   134: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   137: invokevirtual 87	com/nianticproject/ingress/a/d:d	()V
    //   140: iconst_2
    //   141: anewarray 89	java/lang/Object
    //   144: astore 4
    //   146: aload 4
    //   148: iconst_0
    //   149: aload_0
    //   150: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   153: invokestatic 92	com/nianticproject/ingress/a/d:c	(Lcom/nianticproject/ingress/a/d;)I
    //   156: invokestatic 98	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   159: aastore
    //   160: aload 4
    //   162: iconst_1
    //   163: aload_0
    //   164: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   167: invokestatic 41	com/nianticproject/ingress/a/d:d	(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bi;
    //   170: aastore
    //   171: ldc 100
    //   173: aload 4
    //   175: invokestatic 106	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   178: astore 5
    //   180: invokestatic 110	com/nianticproject/ingress/a/d:f	()Lcom/nianticproject/ingress/common/w/aa;
    //   183: pop
    //   184: new 70	com/nianticproject/ingress/common/c/bl
    //   187: dup
    //   188: aload 5
    //   190: aload_3
    //   191: invokespecial 113	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   194: astore 7
    //   196: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   199: aload 7
    //   201: areturn
    //   202: aload_0
    //   203: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   206: invokestatic 116	com/nianticproject/ingress/a/d:f	(Lcom/nianticproject/ingress/a/d;)Landroid/media/MediaPlayer;
    //   209: invokevirtual 121	android/media/MediaPlayer:prepare	()V
    //   212: aload_0
    //   213: aload_2
    //   214: invokevirtual 83	com/nianticproject/ingress/common/w/al:c	()J
    //   217: putfield 29	com/nianticproject/ingress/a/j:d	J
    //   220: aload 11
    //   222: monitorexit
    //   223: aload_0
    //   224: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   227: invokestatic 65	com/nianticproject/ingress/a/d:a	(Lcom/nianticproject/ingress/a/d;)Ljava/lang/Object;
    //   230: astore 14
    //   232: aload 14
    //   234: monitorenter
    //   235: aload_0
    //   236: invokevirtual 68	com/nianticproject/ingress/a/j:d	()Z
    //   239: ifeq +37 -> 276
    //   242: new 70	com/nianticproject/ingress/common/c/bl
    //   245: dup
    //   246: ldc 123
    //   248: invokespecial 75	com/nianticproject/ingress/common/c/bl:<init>	(Ljava/lang/String;)V
    //   251: astore 16
    //   253: aload 14
    //   255: monitorexit
    //   256: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   259: aload 16
    //   261: areturn
    //   262: astore 12
    //   264: aload 11
    //   266: monitorexit
    //   267: aload 12
    //   269: athrow
    //   270: astore_1
    //   271: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   274: aload_1
    //   275: athrow
    //   276: aload_0
    //   277: getfield 16	com/nianticproject/ingress/a/j:a	Lcom/nianticproject/ingress/a/d;
    //   280: aload_0
    //   281: getfield 31	com/nianticproject/ingress/a/j:b	Z
    //   284: invokestatic 126	com/nianticproject/ingress/a/d:b	(Lcom/nianticproject/ingress/a/d;Z)V
    //   287: aload 14
    //   289: monitorexit
    //   290: invokestatic 77	com/nianticproject/ingress/shared/aj:b	()V
    //   293: aconst_null
    //   294: areturn
    //   295: astore 15
    //   297: aload 14
    //   299: monitorexit
    //   300: aload 15
    //   302: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   40	61	124	finally
    //   67	85	124	finally
    //   28	40	132	java/lang/Exception
    //   85	97	132	java/lang/Exception
    //   126	132	132	java/lang/Exception
    //   223	235	132	java/lang/Exception
    //   264	270	132	java/lang/Exception
    //   297	303	132	java/lang/Exception
    //   97	118	262	finally
    //   202	223	262	finally
    //   0	28	270	finally
    //   28	40	270	finally
    //   85	97	270	finally
    //   126	132	270	finally
    //   133	196	270	finally
    //   223	235	270	finally
    //   264	270	270	finally
    //   297	303	270	finally
    //   235	256	295	finally
    //   276	290	295	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a.j
 * JD-Core Version:    0.6.2
 */
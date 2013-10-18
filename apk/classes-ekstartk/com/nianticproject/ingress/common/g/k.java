package com.nianticproject.ingress.common.g;

import com.nianticproject.ingress.common.f.h;

final class k extends h
{
  k(j paramj)
  {
  }

  // ERROR //
  private java.lang.Void j()
  {
    // Byte code:
    //   0: ldc 17
    //   2: invokestatic 22	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   9: astore_2
    //   10: aload_2
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   16: invokestatic 27	com/nianticproject/ingress/common/g/j:a	(Lcom/nianticproject/ingress/common/g/j;)Lcom/nianticproject/ingress/common/g/n;
    //   19: getstatic 33	com/nianticproject/ingress/common/g/n:c	Lcom/nianticproject/ingress/common/g/n;
    //   22: if_acmpne +14 -> 36
    //   25: aload_0
    //   26: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   29: getstatic 36	com/nianticproject/ingress/common/g/n:b	Lcom/nianticproject/ingress/common/g/n;
    //   32: invokestatic 39	com/nianticproject/ingress/common/g/j:a	(Lcom/nianticproject/ingress/common/g/j;Lcom/nianticproject/ingress/common/g/n;)Lcom/nianticproject/ingress/common/g/n;
    //   35: pop
    //   36: aload_2
    //   37: monitorexit
    //   38: aload_0
    //   39: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   42: invokevirtual 43	com/nianticproject/ingress/common/g/j:d	()Ljava/lang/Object;
    //   45: astore 4
    //   47: aload 4
    //   49: ifnull +12 -> 61
    //   52: aload_0
    //   53: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   56: aload 4
    //   58: invokevirtual 46	com/nianticproject/ingress/common/g/j:a	(Ljava/lang/Object;)V
    //   61: aload_0
    //   62: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   65: astore 5
    //   67: aload 5
    //   69: monitorenter
    //   70: getstatic 51	com/nianticproject/ingress/common/g/m:a	[I
    //   73: aload_0
    //   74: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   77: invokestatic 27	com/nianticproject/ingress/common/g/j:a	(Lcom/nianticproject/ingress/common/g/j;)Lcom/nianticproject/ingress/common/g/n;
    //   80: invokevirtual 55	com/nianticproject/ingress/common/g/n:ordinal	()I
    //   83: iaload
    //   84: tableswitch	default:+24 -> 108, 1:+53->137, 2:+76->160
    //   109: nop
    //   110: dstore 89
    //   112: ldc 59
    //   114: invokespecial 61	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   117: athrow
    //   118: astore 6
    //   120: aload 5
    //   122: monitorexit
    //   123: aload 6
    //   125: athrow
    //   126: astore_1
    //   127: invokestatic 63	com/nianticproject/ingress/shared/aj:b	()V
    //   130: aload_1
    //   131: athrow
    //   132: astore_3
    //   133: aload_2
    //   134: monitorexit
    //   135: aload_3
    //   136: athrow
    //   137: invokestatic 67	com/nianticproject/ingress/common/g/j:f	()Lcom/nianticproject/ingress/common/w/aa;
    //   140: pop
    //   141: aload_0
    //   142: getfield 10	com/nianticproject/ingress/common/g/k:a	Lcom/nianticproject/ingress/common/g/j;
    //   145: getstatic 69	com/nianticproject/ingress/common/g/n:a	Lcom/nianticproject/ingress/common/g/n;
    //   148: invokestatic 39	com/nianticproject/ingress/common/g/j:a	(Lcom/nianticproject/ingress/common/g/j;Lcom/nianticproject/ingress/common/g/n;)Lcom/nianticproject/ingress/common/g/n;
    //   151: pop
    //   152: aload 5
    //   154: monitorexit
    //   155: invokestatic 63	com/nianticproject/ingress/shared/aj:b	()V
    //   158: aconst_null
    //   159: areturn
    //   160: invokestatic 67	com/nianticproject/ingress/common/g/j:f	()Lcom/nianticproject/ingress/common/w/aa;
    //   163: pop
    //   164: invokestatic 74	com/nianticproject/ingress/common/x/i:a	()Lcom/nianticproject/ingress/common/x/i;
    //   167: new 76	com/nianticproject/ingress/common/g/l
    //   170: dup
    //   171: aload_0
    //   172: ldc 78
    //   174: invokespecial 81	com/nianticproject/ingress/common/g/l:<init>	(Lcom/nianticproject/ingress/common/g/k;Ljava/lang/String;)V
    //   177: invokevirtual 84	com/nianticproject/ingress/common/x/i:a	(Lcom/nianticproject/ingress/common/x/f;)V
    //   180: goto -28 -> 152
    //
    // Exception table:
    //   from	to	target	type
    //   70	108	118	finally
    //   108	118	118	finally
    //   137	152	118	finally
    //   152	155	118	finally
    //   160	180	118	finally
    //   0	12	126	finally
    //   38	47	126	finally
    //   52	61	126	finally
    //   61	70	126	finally
    //   120	126	126	finally
    //   133	137	126	finally
    //   12	36	132	finally
    //   36	38	132	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.k
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.m;

import com.nianticproject.ingress.common.f.h;

final class c extends h
{
  c(a parama)
  {
  }

  // ERROR //
  private java.lang.Void j()
  {
    // Byte code:
    //   0: ldc 19
    //   2: invokestatic 24	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: getfield 10	com/nianticproject/ingress/common/m/c:a	Lcom/nianticproject/ingress/common/m/a;
    //   9: invokestatic 29	com/nianticproject/ingress/common/m/a:a	(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/u/ah;
    //   12: invokestatic 35	com/nianticproject/ingress/common/u/aj:b	()Lcom/nianticproject/ingress/shared/rpc/ab;
    //   15: invokevirtual 40	com/nianticproject/ingress/common/u/ah:a	(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    //   18: astore 5
    //   20: aload 5
    //   22: astore_3
    //   23: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   26: ldc 44
    //   28: invokestatic 24	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   31: aload_3
    //   32: ifnonnull +35 -> 67
    //   35: aload_0
    //   36: getfield 10	com/nianticproject/ingress/common/m/c:a	Lcom/nianticproject/ingress/common/m/a;
    //   39: invokestatic 47	com/nianticproject/ingress/common/m/a:b	(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/m/d;
    //   42: invokeinterface 52 1 0
    //   47: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   50: aconst_null
    //   51: areturn
    //   52: astore_2
    //   53: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   56: aconst_null
    //   57: astore_3
    //   58: goto -32 -> 26
    //   61: astore_1
    //   62: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   65: aload_1
    //   66: athrow
    //   67: aload_0
    //   68: getfield 10	com/nianticproject/ingress/common/m/c:a	Lcom/nianticproject/ingress/common/m/a;
    //   71: invokestatic 47	com/nianticproject/ingress/common/m/a:b	(Lcom/nianticproject/ingress/common/m/a;)Lcom/nianticproject/ingress/common/m/d;
    //   74: aload_3
    //   75: invokevirtual 57	com/nianticproject/ingress/shared/rpc/RpcResult:a	()Ljava/lang/Object;
    //   78: checkcast 59	com/nianticproject/ingress/shared/invites/InviteInfo
    //   81: invokeinterface 62 2 0
    //   86: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   89: aconst_null
    //   90: areturn
    //   91: astore 4
    //   93: invokestatic 42	com/nianticproject/ingress/shared/aj:b	()V
    //   96: aload 4
    //   98: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	20	52	com/nianticproject/ingress/shared/rpc/y
    //   0	20	61	finally
    //   26	31	91	finally
    //   35	47	91	finally
    //   67	86	91	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.m.c
 * JD-Core Version:    0.6.2
 */
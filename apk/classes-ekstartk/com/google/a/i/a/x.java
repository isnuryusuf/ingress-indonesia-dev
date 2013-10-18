package com.google.a.i.a;

public final class x
{
  // ERROR //
  public static <V> V a(java.util.concurrent.Future<V> paramFuture)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokeinterface 14 1 0
    //   8: astore 4
    //   10: iload_1
    //   11: ifeq +9 -> 20
    //   14: invokestatic 20	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   17: invokevirtual 24	java/lang/Thread:interrupt	()V
    //   20: aload 4
    //   22: areturn
    //   23: astore_3
    //   24: iconst_1
    //   25: istore_1
    //   26: goto -24 -> 2
    //   29: astore_2
    //   30: iload_1
    //   31: ifeq +9 -> 40
    //   34: invokestatic 20	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   37: invokevirtual 24	java/lang/Thread:interrupt	()V
    //   40: aload_2
    //   41: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	10	23	java/lang/InterruptedException
    //   2	10	29	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.x
 * JD-Core Version:    0.6.2
 */
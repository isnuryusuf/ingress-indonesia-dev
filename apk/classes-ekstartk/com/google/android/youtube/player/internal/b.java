package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;

public abstract class b
{
  private static final b a = b();

  public static b a()
  {
    return a;
  }

  // ERROR //
  private static b b()
  {
    // Byte code:
    //   0: ldc 25
    //   2: invokestatic 31	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: ldc 2
    //   7: invokevirtual 35	java/lang/Class:asSubclass	(Ljava/lang/Class;)Ljava/lang/Class;
    //   10: astore_1
    //   11: aload_1
    //   12: invokevirtual 39	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   15: checkcast 2	com/google/android/youtube/player/internal/b
    //   18: astore 4
    //   20: aload 4
    //   22: areturn
    //   23: astore_3
    //   24: new 41	java/lang/IllegalStateException
    //   27: dup
    //   28: aload_3
    //   29: invokespecial 44	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   32: athrow
    //   33: astore_0
    //   34: new 46	com/google/android/youtube/player/internal/d
    //   37: dup
    //   38: invokespecial 47	com/google/android/youtube/player/internal/d:<init>	()V
    //   41: areturn
    //   42: astore_2
    //   43: new 41	java/lang/IllegalStateException
    //   46: dup
    //   47: aload_2
    //   48: invokespecial 44	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   51: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   11	20	23	java/lang/InstantiationException
    //   0	11	33	java/lang/ClassNotFoundException
    //   11	20	33	java/lang/ClassNotFoundException
    //   24	33	33	java/lang/ClassNotFoundException
    //   43	52	33	java/lang/ClassNotFoundException
    //   11	20	42	java/lang/IllegalAccessException
  }

  public abstract e a(Context paramContext, String paramString, az paramaz, ba paramba);

  public abstract i a(Activity paramActivity, e parame);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.b
 * JD-Core Version:    0.6.2
 */
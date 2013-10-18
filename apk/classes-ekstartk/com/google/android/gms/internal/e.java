package com.google.android.gms.internal;

import java.util.LinkedHashMap;

public final class e<K, V>
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;

  // ERROR //
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 18	com/google/android/gms/internal/e:b	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 20	com/google/android/gms/internal/e:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 26	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 18	com/google/android/gms/internal/e:b	I
    //   23: ifeq +41 -> 64
    //   26: new 28	java/lang/IllegalStateException
    //   29: dup
    //   30: new 30	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 38	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 44	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 50
    //   49: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 56	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 18	com/google/android/gms/internal/e:b	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 20	com/google/android/gms/internal/e:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 26	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 20	com/google/android/gms/internal/e:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 60	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 66 1 0
    //   97: invokeinterface 72 1 0
    //   102: checkcast 74	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 77 1 0
    //   112: astore 4
    //   114: aload_3
    //   115: invokeinterface 80 1 0
    //   120: pop
    //   121: aload_0
    //   122: getfield 20	com/google/android/gms/internal/e:a	Ljava/util/LinkedHashMap;
    //   125: aload 4
    //   127: invokevirtual 84	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   130: pop
    //   131: aload_0
    //   132: iconst_m1
    //   133: aload_0
    //   134: getfield 18	com/google/android/gms/internal/e:b	I
    //   137: iadd
    //   138: putfield 18	com/google/android/gms/internal/e:b	I
    //   141: aload_0
    //   142: iconst_1
    //   143: aload_0
    //   144: getfield 86	com/google/android/gms/internal/e:e	I
    //   147: iadd
    //   148: putfield 86	com/google/android/gms/internal/e:e	I
    //   151: aload_0
    //   152: monitorexit
    //   153: goto -153 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	153	59	finally
  }

  public final V a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.d = (1 + this.d);
      this.b = (1 + this.b);
      Object localObject2 = this.a.put(paramK, paramV);
      if (localObject2 != null)
        this.b = (-1 + this.b);
      a(this.c);
      return localObject2;
    }
    finally
    {
    }
  }

  public final String toString()
  {
    try
    {
      int i = this.f + this.g;
      int j = 0;
      if (i != 0)
        j = 100 * this.f / i;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.c);
      arrayOfObject[1] = Integer.valueOf(this.f);
      arrayOfObject[2] = Integer.valueOf(this.g);
      arrayOfObject[3] = Integer.valueOf(j);
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      return str;
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.e
 * JD-Core Version:    0.6.2
 */
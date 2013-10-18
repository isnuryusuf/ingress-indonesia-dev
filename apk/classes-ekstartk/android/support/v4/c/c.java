package android.support.v4.c;

import java.util.LinkedHashMap;

public class c<K, V>
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;

  public c(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.c = paramInt;
    this.a = new LinkedHashMap(0, 0.75F, true);
  }

  // ERROR //
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 39	android/support/v4/c/c:b	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 37	android/support/v4/c/c:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 43	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 39	android/support/v4/c/c:b	I
    //   23: ifeq +41 -> 64
    //   26: new 45	java/lang/IllegalStateException
    //   29: dup
    //   30: new 47	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 48	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 52	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 58	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 64
    //   49: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 68	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 39	android/support/v4/c/c:b	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 37	android/support/v4/c/c:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 43	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 37	android/support/v4/c/c:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 72	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 78 1 0
    //   97: invokeinterface 84 1 0
    //   102: checkcast 86	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 89 1 0
    //   112: astore 4
    //   114: aload_3
    //   115: invokeinterface 92 1 0
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 37	android/support/v4/c/c:a	Ljava/util/LinkedHashMap;
    //   126: aload 4
    //   128: invokevirtual 96	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: aload_0
    //   133: aload_0
    //   134: getfield 39	android/support/v4/c/c:b	I
    //   137: aload_0
    //   138: aload 4
    //   140: aload 5
    //   142: invokespecial 99	android/support/v4/c/c:b	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   145: isub
    //   146: putfield 39	android/support/v4/c/c:b	I
    //   149: aload_0
    //   150: iconst_1
    //   151: aload_0
    //   152: getfield 101	android/support/v4/c/c:e	I
    //   155: iadd
    //   156: putfield 101	android/support/v4/c/c:e	I
    //   159: aload_0
    //   160: monitorexit
    //   161: goto -161 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	161	59	finally
  }

  private int b(K paramK, V paramV)
  {
    int i = b(paramV);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    return i;
  }

  public final V a(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      Object localObject2 = this.a.get(paramK);
      if (localObject2 != null)
      {
        this.f = (1 + this.f);
        return localObject2;
      }
      this.g = (1 + this.g);
      return null;
    }
    finally
    {
    }
  }

  public final V a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.d = (1 + this.d);
      this.b += b(paramK, paramV);
      Object localObject2 = this.a.put(paramK, paramV);
      if (localObject2 != null)
        this.b -= b(paramK, localObject2);
      a(this.c);
      return localObject2;
    }
    finally
    {
    }
  }

  public final void a()
  {
    a(-1);
  }

  protected int b(V paramV)
  {
    return 1;
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
 * Qualified Name:     android.support.v4.c.c
 * JD-Core Version:    0.6.2
 */
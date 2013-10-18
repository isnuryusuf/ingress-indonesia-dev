package a.a.a.a;

public final class e
{
  public static final Object a = new Object();

  public static int a(int paramInt, float paramFloat)
  {
    return (int)Math.ceil(paramFloat * paramInt);
  }

  public static final long a(long paramLong)
  {
    long l1 = -49064778989728563L * (paramLong ^ paramLong >>> 33);
    long l2 = -4265267296055464877L * (l1 ^ l1 >>> 33);
    return l2 ^ l2 >>> 33;
  }

  public static int b(int paramInt, float paramFloat)
  {
    long l1 = 1L;
    long l2 = ()Math.ceil(paramInt / paramFloat);
    if (l2 == 0L);
    while (l1 > 1073741824L)
    {
      throw new IllegalArgumentException("Too large (" + paramInt + " expected elements with load factor " + paramFloat + ")");
      long l3 = l2 - l1;
      long l4 = l3 | l3 >> 1;
      long l5 = l4 | l4 >> 2;
      long l6 = l5 | l5 >> 4;
      long l7 = l6 | l6 >> 8;
      long l8 = l7 | l7 >> 16;
      l1 += (l8 | l8 >> 32);
    }
    return (int)l1;
  }

  public static final int b(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.e
 * JD-Core Version:    0.6.2
 */
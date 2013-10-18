package a.a.a.a.b;

public final class cf
{
  public static final cg a = new cg();

  public static int a(ce paramce, long[] paramArrayOfLong)
  {
    int i = paramArrayOfLong.length;
    if (i < 0)
      throw new IllegalArgumentException("The maximum number of elements (" + i + ") is negative");
    if (i + 0 > paramArrayOfLong.length)
      throw new IllegalArgumentException();
    int j = 0;
    int m;
    for (int k = i; ; k = m)
    {
      m = k - 1;
      if ((k == 0) || (!paramce.hasNext()))
        break;
      int n = j + 1;
      paramArrayOfLong[j] = paramce.a();
      j = n;
    }
    return -1 + (i - m);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.cf
 * JD-Core Version:    0.6.2
 */
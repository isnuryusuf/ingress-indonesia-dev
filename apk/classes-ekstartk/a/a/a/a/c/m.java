package a.a.a.a.c;

import java.util.Iterator;

public final class m
{
  public static final n a = new n();

  public static <K> int a(Iterator<? extends K> paramIterator, K[] paramArrayOfK)
  {
    int i = paramArrayOfK.length;
    if (i < 0)
      throw new IllegalArgumentException("The maximum number of elements (" + i + ") is negative");
    if (i + 0 > paramArrayOfK.length)
      throw new IllegalArgumentException();
    int j = 0;
    int m;
    for (int k = i; ; k = m)
    {
      m = k - 1;
      if ((k == 0) || (!paramIterator.hasNext()))
        break;
      int n = j + 1;
      paramArrayOfK[j] = paramIterator.next();
      j = n;
    }
    return -1 + (i - m);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.c.m
 * JD-Core Version:    0.6.2
 */
package android.support.v4.c;

import java.io.PrintWriter;

public final class e
{
  private static final Object a = new Object();
  private static char[] b = new char[24];

  private static int a(char[] paramArrayOfChar, int paramInt1, char paramChar, int paramInt2, boolean paramBoolean)
  {
    int n;
    int i;
    if ((paramBoolean) || (paramInt1 > 0))
    {
      if (paramInt1 <= 99)
        break label115;
      n = paramInt1 / 100;
      paramArrayOfChar[paramInt2] = ((char)(n + 48));
      i = paramInt2 + 1;
    }
    for (int j = paramInt1 - n * 100; ; j = paramInt1)
    {
      if ((j > 9) || (paramInt2 != i))
      {
        int k = j / 10;
        paramArrayOfChar[i] = ((char)(k + 48));
        i++;
        j -= k * 10;
      }
      paramArrayOfChar[i] = ((char)(j + 48));
      int m = i + 1;
      paramArrayOfChar[m] = paramChar;
      paramInt2 = m + 1;
      return paramInt2;
      label115: i = paramInt2;
    }
  }

  public static void a(long paramLong1, long paramLong2, PrintWriter paramPrintWriter)
  {
    if (paramLong1 == 0L)
    {
      paramPrintWriter.print("--");
      return;
    }
    b(paramLong1 - paramLong2, paramPrintWriter);
  }

  public static void a(long paramLong, PrintWriter paramPrintWriter)
  {
    b(paramLong, paramPrintWriter);
  }

  private static void b(long paramLong, PrintWriter paramPrintWriter)
  {
    int i = 1;
    while (true)
    {
      int n;
      int k;
      synchronized (a)
      {
        if (b.length < 0)
          b = new char[0];
        char[] arrayOfChar = b;
        if (paramLong != 0L)
          break label336;
        arrayOfChar[0] = '0';
        paramPrintWriter.print(new String(b, 0, i));
        return;
        int m = (int)(paramLong % 1000L);
        n = (int)Math.floor(paramLong / 1000L);
        if (n <= 86400)
          break label330;
        int i1 = n / 86400;
        n -= 86400 * i1;
        i2 = i1;
        if (n <= 3600)
          break label324;
        int i3 = n / 3600;
        n -= i3 * 3600;
        i4 = i3;
        if (n > 60)
        {
          int i5 = n / 60;
          i6 = n - i5 * 60;
          i7 = i5;
          arrayOfChar[0] = k;
          int i8 = a(arrayOfChar, i2, 'd', 1, false);
          if (i8 != i)
          {
            int i9 = i;
            int i11 = a(arrayOfChar, i4, 'h', i8, i9);
            if (i11 == i)
              continue;
            int i12 = i;
            int i14 = a(arrayOfChar, i7, 'm', i11, i12);
            if (i14 == i)
              continue;
            int i15 = a(arrayOfChar, m, 'm', a(arrayOfChar, i6, 's', i14, i), true);
            arrayOfChar[i15] = 's';
            j = i15 + 1;
            continue;
            paramLong = -paramLong;
            k = 45;
            continue;
          }
          int i10 = 0;
          continue;
          int i13 = 0;
          continue;
          int j = 0;
        }
      }
      int i6 = n;
      int i7 = 0;
      continue;
      label324: int i4 = 0;
      continue;
      label330: int i2 = 0;
      continue;
      label336: if (paramLong > 0L)
        k = 43;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.c.e
 * JD-Core Version:    0.6.2
 */
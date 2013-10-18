package org.codehaus.jackson.io;

public final class NumberInput
{
  static final String MAX_LONG_STR = String.valueOf(9223372036854775807L);
  static final String MIN_LONG_STR_NO_SIGN = String.valueOf(-9223372036854775808L).substring(1);

  public static final boolean inLongRange(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    int i;
    int j;
    for (String str = MIN_LONG_STR_NO_SIGN; ; str = MAX_LONG_STR)
    {
      i = str.length();
      j = paramString.length();
      if (j >= i)
        break;
      return true;
    }
    if (j > i)
      return false;
    for (int k = 0; k < i; k++)
    {
      int m = paramString.charAt(k) - str.charAt(k);
      if (m != 0)
        return m < 0;
    }
    return true;
  }

  public static final boolean inLongRange(char[] paramArrayOfChar, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    int i;
    for (String str = MIN_LONG_STR_NO_SIGN; ; str = MAX_LONG_STR)
    {
      i = str.length();
      if (paramInt2 >= i)
        break;
      return true;
    }
    if (paramInt2 > i)
      return false;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfChar[(paramInt1 + j)] - str.charAt(j);
      if (k != 0)
        return k < 0;
    }
    return true;
  }

  public static final double parseDouble(String paramString)
  {
    if ("2.2250738585072012e-308".equals(paramString))
      return 2.225073858507201E-308D;
    return Double.parseDouble(paramString);
  }

  public static final int parseInt(String paramString)
  {
    int i = 1;
    int j = paramString.charAt(0);
    int k = paramString.length();
    int m;
    if (j == 45)
      m = i;
    while (m != 0)
      if ((k == i) || (k > 10))
      {
        n = Integer.parseInt(paramString);
        return n;
        m = 0;
      }
      else
      {
        j = paramString.charAt(i);
        i = 2;
      }
    while ((j > 57) || (j < 48))
    {
      return Integer.parseInt(paramString);
      if (k > 9)
        return Integer.parseInt(paramString);
    }
    int n = j - 48;
    int i3;
    if (i < k)
    {
      int i1 = i + 1;
      int i2 = paramString.charAt(i);
      if ((i2 > 57) || (i2 < 48))
        return Integer.parseInt(paramString);
      n = n * 10 + (i2 - 48);
      if (i1 < k)
      {
        i3 = i1 + 1;
        int i4 = paramString.charAt(i1);
        if ((i4 > 57) || (i4 < 48))
          return Integer.parseInt(paramString);
        n = n * 10 + (i4 - 48);
        if (i3 >= k);
      }
    }
    while (true)
    {
      int i5 = i3 + 1;
      int i6 = paramString.charAt(i3);
      if ((i6 > 57) || (i6 < 48))
        return Integer.parseInt(paramString);
      n = n * 10 + (i6 - 48);
      if (i5 >= k)
      {
        if (m == 0)
          break;
        return -n;
      }
      i3 = i5;
    }
  }

  public static final int parseInt(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = '\0*0' + paramArrayOfChar[paramInt1];
    int j = paramInt2 + paramInt1;
    int k = paramInt1 + 1;
    if (k < j)
    {
      i = i * 10 + ('\0*0' + paramArrayOfChar[k]);
      int m = k + 1;
      if (m < j)
      {
        i = i * 10 + ('\0*0' + paramArrayOfChar[m]);
        int n = m + 1;
        if (n < j)
        {
          i = i * 10 + ('\0*0' + paramArrayOfChar[n]);
          int i1 = n + 1;
          if (i1 < j)
          {
            i = i * 10 + ('\0*0' + paramArrayOfChar[i1]);
            int i2 = i1 + 1;
            if (i2 < j)
            {
              i = i * 10 + ('\0*0' + paramArrayOfChar[i2]);
              int i3 = i2 + 1;
              if (i3 < j)
              {
                i = i * 10 + ('\0*0' + paramArrayOfChar[i3]);
                int i4 = i3 + 1;
                if (i4 < j)
                {
                  i = i * 10 + ('\0*0' + paramArrayOfChar[i4]);
                  int i5 = i4 + 1;
                  if (i5 < j)
                    i = i * 10 + ('\0*0' + paramArrayOfChar[i5]);
                }
              }
            }
          }
        }
      }
    }
    return i;
  }

  public static final long parseLong(String paramString)
  {
    if (paramString.length() <= 9)
      return parseInt(paramString);
    return Long.parseLong(paramString);
  }

  public static final long parseLong(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramInt2 - 9;
    return 1000000000L * parseInt(paramArrayOfChar, paramInt1, i) + parseInt(paramArrayOfChar, i + paramInt1, 9);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.NumberInput
 * JD-Core Version:    0.6.2
 */
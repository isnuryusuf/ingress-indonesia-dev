package com.google.a.h;

public final class a
{
  public static int a(long paramLong)
  {
    if (paramLong > 2147483647L)
      return 2147483647;
    if (paramLong < -2147483648L)
      return -2147483648;
    return (int)paramLong;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.h.a
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.shared;

import com.google.a.a.br;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.Iterator;

public final class l
{
  public static int a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 - paramInt1 > 8)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramInt1);
      arrayOfObject[2] = Integer.valueOf(paramInt2);
      throw new NumberFormatException(String.format("Can't convert '%s', from '%s' to '%s', to an int, as it exceeds 8 digits", arrayOfObject));
    }
    return (int)b(paramString, paramInt1, paramInt2);
  }

  public static dc<String> a(Iterable<Long> paramIterable)
  {
    de localde = dc.h();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      localde.c(br.c(Long.toHexString(((Long)localIterator.next()).longValue())));
    return localde.a();
  }

  public static dc<String> a(long[] paramArrayOfLong)
  {
    de localde = dc.h();
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
      localde.c(br.c(Long.toHexString(paramArrayOfLong[j])));
    return localde.a();
  }

  public static long b(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 - paramInt1 > 16)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramInt1);
      arrayOfObject[2] = Integer.valueOf(paramInt2);
      throw new NumberFormatException(String.format("Can't convert '%s', from '%s' to '%s', to a long, as it exceeds 16 digits", arrayOfObject));
    }
    long l = 0L;
    while (paramInt1 < paramInt2)
    {
      int i = Character.digit(paramString.charAt(paramInt1), 16);
      if (i == -1)
        throw new NumberFormatException(paramString + " : '" + paramString.charAt(paramInt1) + "' is not a valid hex digit");
      l = l << 4 | i;
      paramInt1++;
    }
    return l;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.l
 * JD-Core Version:    0.6.2
 */
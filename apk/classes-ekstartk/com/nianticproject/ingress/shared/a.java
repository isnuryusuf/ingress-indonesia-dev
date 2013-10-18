package com.nianticproject.ingress.shared;

import java.io.UnsupportedEncodingException;

public class a
{
  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(a(paramArrayOfByte, paramArrayOfByte.length), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    c localc = new c(new byte[i * 3 / 4]);
    if (!localc.a(arrayOfByte1, i))
      throw new IllegalArgumentException("bad base-64");
    if (localc.b == localc.a.length)
      return localc.a;
    byte[] arrayOfByte2 = new byte[localc.b];
    System.arraycopy(localc.a, 0, arrayOfByte2, 0, localc.b);
    return arrayOfByte2;
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    int j;
    int k;
    label70: int m;
    while (true)
    {
      d locald;
      try
      {
        aj.a("Base64.encode");
        locald = new d();
        i = 4 * (paramInt / 3);
        if (locald.d)
        {
          if (paramInt % 3 > 0)
            i += 4;
          if ((!locald.e) || (paramInt <= 0))
            break label156;
          j = 1 + (paramInt - 1) / 57;
          if (!locald.f)
            break label191;
          k = 2;
          break;
          locald.a = new byte[m];
          locald.a(paramArrayOfByte, paramInt);
          if ((a) || (locald.b == m))
            break label144;
          throw new AssertionError();
        }
      }
      finally
      {
        aj.b();
      }
      switch (paramInt % 3)
      {
      case 0:
        label144: byte[] arrayOfByte = locald.a;
        aj.b();
        return arrayOfByte;
        label156: m = i;
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      m = i + k * j;
      break label70;
      break;
      i += 2;
      break;
      i += 3;
      break;
      label191: k = 1;
    }
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, paramArrayOfByte.length);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.a
 * JD-Core Version:    0.6.2
 */
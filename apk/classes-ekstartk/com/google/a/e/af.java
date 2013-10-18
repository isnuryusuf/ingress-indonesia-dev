package com.google.a.e;

import java.nio.ByteOrder;

final class af
{
  private static final ai b;
  private static final String c;

  static
  {
    boolean bool;
    if (!af.class.desiredAssertionStatus())
      bool = true;
    while (true)
    {
      a = bool;
      c = af.class.getName() + "$UnsafeByteArray";
      try
      {
        if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN));
        for (localObject = aj.a; ; localObject = aj.b)
        {
          b = (ai)localObject;
          return;
          bool = false;
          break;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
          Object localObject = ag.a;
      }
    }
  }

  static long a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((!a) && (paramArrayOfByte.length < paramInt + 8))
      throw new AssertionError();
    return b.a(paramArrayOfByte, paramInt);
  }

  static void a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    if ((!a) && ((paramInt < 0) || (paramInt + 8 > paramArrayOfByte.length)))
      throw new AssertionError();
    b.a(paramArrayOfByte, paramInt, paramLong);
  }

  static boolean a()
  {
    return b instanceof aj;
  }

  static int b(byte[] paramArrayOfByte, int paramInt)
  {
    return 0xFF & paramArrayOfByte[paramInt] | (0xFF & paramArrayOfByte[(paramInt + 1)]) << 8 | (0xFF & paramArrayOfByte[(paramInt + 2)]) << 16 | (0xFF & paramArrayOfByte[(paramInt + 3)]) << 24;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.af
 * JD-Core Version:    0.6.2
 */
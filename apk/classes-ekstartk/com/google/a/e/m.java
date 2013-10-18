package com.google.a.e;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

 enum m
{
  m()
  {
    super(str, 1, (byte)0);
  }

  private static void a(ByteBuffer paramByteBuffer, long paramLong1, long paramLong2, long[] paramArrayOfLong)
  {
    long l1 = paramByteBuffer.getLong();
    long l2 = paramByteBuffer.getLong();
    long l3 = paramByteBuffer.getLong();
    long l4 = paramByteBuffer.getLong();
    long l5 = l1 + paramLong1;
    long l6 = Long.rotateRight(l4 + (paramLong2 + l5), 51);
    long l7 = l3 + (l2 + l5);
    long l8 = l6 + Long.rotateRight(l7, 23);
    paramArrayOfLong[0] = (l7 + l4);
    paramArrayOfLong[1] = (l5 + l8);
  }

  protected final u a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    if (paramInt2 < 128)
      return j.a(paramArrayOfByte, paramInt1, paramInt2, paramLong1, paramLong2);
    long[] arrayOfLong1 = new long[2];
    long[] arrayOfLong2 = new long[2];
    long l1 = -8261664234251669945L * paramInt2;
    arrayOfLong1[0] = (-8261664234251669945L * Long.rotateRight(0xAFE12E47 ^ paramLong2, 49) + af.a(paramArrayOfByte, paramInt1));
    arrayOfLong1[1] = (-8261664234251669945L * Long.rotateRight(arrayOfLong1[0], 42) + af.a(paramArrayOfByte, paramInt1 + 8));
    arrayOfLong2[0] = (paramLong1 + -8261664234251669945L * Long.rotateRight(paramLong2 + l1, 35));
    arrayOfLong2[1] = (-8261664234251669945L * Long.rotateRight(paramLong1 + af.a(paramArrayOfByte, paramInt1 + 88), 53));
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(128);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    while (true)
    {
      localByteBuffer.position(0);
      localByteBuffer.put(paramArrayOfByte, paramInt1, 128);
      long l2 = -8261664234251669945L * Long.rotateRight(paramLong1 + paramLong2 + arrayOfLong1[0] + localByteBuffer.getLong(16), 37);
      long l3 = -8261664234251669945L * Long.rotateRight(paramLong2 + arrayOfLong1[1] + localByteBuffer.getLong(48), 42);
      long l4 = l2 ^ arrayOfLong2[1];
      long l5 = l3 ^ arrayOfLong1[0];
      long l6 = Long.rotateRight(l1 ^ arrayOfLong2[0], 33);
      localByteBuffer.position(0);
      a(localByteBuffer, -8261664234251669945L * arrayOfLong1[1], l4 + arrayOfLong2[0], arrayOfLong1);
      a(localByteBuffer, l6 + arrayOfLong2[1], l5, arrayOfLong2);
      long l7 = -8261664234251669945L * Long.rotateRight(l6 + l5 + arrayOfLong1[0] + af.a(paramArrayOfByte, paramInt1 + 80), 37);
      long l8 = -8261664234251669945L * Long.rotateRight(l5 + arrayOfLong1[1] + af.a(paramArrayOfByte, paramInt1 + 112), 42);
      long l9 = l7 ^ arrayOfLong2[1];
      long l10 = l8 ^ arrayOfLong1[0];
      paramLong1 = Long.rotateRight(l4 ^ arrayOfLong2[0], 33);
      a(localByteBuffer, -8261664234251669945L * arrayOfLong1[1], l9 + arrayOfLong2[0], arrayOfLong1);
      a(localByteBuffer, paramLong1 + arrayOfLong2[1], l10, arrayOfLong2);
      paramInt1 += 128;
      paramInt2 -= 128;
      if (paramInt2 < 128)
      {
        long l11 = l10 + (l9 + -6505348102511208375L * Long.rotateRight(arrayOfLong2[0], 37));
        long l12 = paramLong1 + -6505348102511208375L * Long.rotateRight(l9 + arrayOfLong1[0], 49);
        localByteBuffer.position(0);
        int i = paramInt2 & 0x1F;
        int j = paramInt2 ^ i;
        int k = 32 - i;
        localByteBuffer.put(paramArrayOfByte, paramInt1 - k, paramInt2 + k);
        long l13 = l11;
        long l14 = l12;
        int m = j;
        while (paramInt2 > 0)
        {
          long l17 = -6505348102511208375L * Long.rotateRight(l13 - l14, 42) + arrayOfLong1[1];
          arrayOfLong2[0] += localByteBuffer.getLong(-16 + (paramInt2 + k));
          long l18 = -6505348102511208375L * Long.rotateRight(l14, 49) + arrayOfLong2[0];
          arrayOfLong2[0] += arrayOfLong1[0];
          localByteBuffer.position(m);
          a(localByteBuffer, arrayOfLong1[0], arrayOfLong1[1], arrayOfLong1);
          int n = m - 32;
          paramInt2 -= 32;
          m = n;
          l14 = l18;
          l13 = l17;
        }
        long l15 = j.a(l14, arrayOfLong1[0]);
        long l16 = j.a(l13, arrayOfLong2[0]);
        localByteBuffer.position(0);
        localByteBuffer.putLong(j.a(l15 + arrayOfLong2[1], l16 + arrayOfLong1[1])).putLong(l16 + j.a(l15 + arrayOfLong1[1], arrayOfLong2[1]));
        byte[] arrayOfByte = new byte[16];
        localByteBuffer.position(0);
        localByteBuffer.get(arrayOfByte, 0, 16);
        return v.a(arrayOfByte);
      }
      l1 = l9;
      paramLong2 = l10;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.m
 * JD-Core Version:    0.6.2
 */
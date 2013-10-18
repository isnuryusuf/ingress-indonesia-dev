package com.google.a.e;

 enum l
{
  l()
  {
    super(str, 0, (byte)0);
  }

  private static void a(byte[] paramArrayOfByte, int paramInt, long paramLong1, long paramLong2, long[] paramArrayOfLong)
  {
    long l1 = af.a(paramArrayOfByte, paramInt);
    long l2 = af.a(paramArrayOfByte, paramInt + 8);
    long l3 = af.a(paramArrayOfByte, paramInt + 16);
    long l4 = af.a(paramArrayOfByte, paramInt + 24);
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
    byte[] arrayOfByte = new byte[16];
    long[] arrayOfLong1 = new long[2];
    long[] arrayOfLong2 = new long[2];
    long l1 = -8261664234251669945L * paramInt2;
    arrayOfLong1[0] = (-8261664234251669945L * Long.rotateRight(0xAFE12E47 ^ paramLong2, 49) + af.a(paramArrayOfByte, paramInt1));
    arrayOfLong1[1] = (-8261664234251669945L * Long.rotateRight(arrayOfLong1[0], 42) + af.a(paramArrayOfByte, paramInt1 + 8));
    arrayOfLong2[0] = (paramLong1 + -8261664234251669945L * Long.rotateRight(paramLong2 + l1, 35));
    arrayOfLong2[1] = (-8261664234251669945L * Long.rotateRight(paramLong1 + af.a(paramArrayOfByte, paramInt1 + 88), 53));
    long l2 = l1;
    int i = paramInt1;
    while (true)
    {
      long l3 = -8261664234251669945L * Long.rotateRight(paramLong1 + paramLong2 + arrayOfLong1[0] + af.a(paramArrayOfByte, i + 16), 37);
      long l4 = -8261664234251669945L * Long.rotateRight(paramLong2 + arrayOfLong1[1] + af.a(paramArrayOfByte, i + 48), 42);
      long l5 = l3 ^ arrayOfLong2[1];
      long l6 = l4 ^ arrayOfLong1[0];
      long l7 = Long.rotateRight(l2 ^ arrayOfLong2[0], 33);
      a(paramArrayOfByte, i, -8261664234251669945L * arrayOfLong1[1], l5 + arrayOfLong2[0], arrayOfLong1);
      a(paramArrayOfByte, i + 32, l7 + arrayOfLong2[1], l6, arrayOfLong2);
      long l8 = -8261664234251669945L * Long.rotateRight(l7 + l6 + arrayOfLong1[0] + af.a(paramArrayOfByte, i + 80), 37);
      long l9 = -8261664234251669945L * Long.rotateRight(l6 + arrayOfLong1[1] + af.a(paramArrayOfByte, i + 112), 42);
      l2 = l8 ^ arrayOfLong2[1];
      long l10 = l9 ^ arrayOfLong1[0];
      paramLong1 = Long.rotateRight(l5 ^ arrayOfLong2[0], 33);
      a(paramArrayOfByte, i + 64, -8261664234251669945L * arrayOfLong1[1], l2 + arrayOfLong2[0], arrayOfLong1);
      a(paramArrayOfByte, i + 96, paramLong1 + arrayOfLong2[1], l10, arrayOfLong2);
      i += 128;
      paramInt2 -= 128;
      if (paramInt2 < 128)
      {
        long l11 = l10 + (l2 + -6505348102511208375L * Long.rotateRight(arrayOfLong2[0], 37));
        long l12 = paramLong1 + -6505348102511208375L * Long.rotateRight(l2 + arrayOfLong1[0], 49);
        int j = i + (paramInt2 - 32);
        long l13 = l12;
        long l14 = l11;
        while (paramInt2 > 0)
        {
          long l17 = -6505348102511208375L * Long.rotateRight(l14 - l13, 42) + arrayOfLong1[1];
          arrayOfLong2[0] += af.a(paramArrayOfByte, j + 16);
          long l18 = -6505348102511208375L * Long.rotateRight(l13, 49) + arrayOfLong2[0];
          arrayOfLong2[0] += arrayOfLong1[0];
          a(paramArrayOfByte, j, arrayOfLong1[0], arrayOfLong1[1], arrayOfLong1);
          j -= 32;
          paramInt2 -= 32;
          l14 = l17;
          l13 = l18;
        }
        long l15 = j.a(l13, arrayOfLong1[0]);
        long l16 = j.a(l14, arrayOfLong2[0]);
        af.a(arrayOfByte, 0, j.a(l15 + arrayOfLong2[1], l16 + arrayOfLong1[1]));
        af.a(arrayOfByte, 8, l16 + j.a(l15 + arrayOfLong1[1], arrayOfLong2[1]));
        return v.a(arrayOfByte);
      }
      paramLong2 = l10;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.l
 * JD-Core Version:    0.6.2
 */
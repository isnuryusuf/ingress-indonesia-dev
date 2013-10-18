package com.google.a.e;

 enum k
  implements n
{
  static
  {
    k[] arrayOfk = new k[2];
    arrayOfk[0] = a;
    arrayOfk[1] = b;
  }

  protected abstract u a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong1, long paramLong2);

  public final u a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long[] paramArrayOfLong)
  {
    long l1 = -6505348102511208375L;
    long l2 = -8261664234251669945L;
    int i;
    int j;
    if (paramArrayOfLong == null)
      if (paramInt2 >= 16)
      {
        l1 = 0xE782AA0B ^ af.a(paramArrayOfByte, 0);
        l2 = af.a(paramArrayOfByte, 8);
        int k = paramInt1 + 16;
        i = paramInt2 - 16;
        j = k;
      }
    while (true)
    {
      return a(paramArrayOfByte, j, i, l2, l1);
      if (paramInt2 >= 8)
      {
        l1 = af.a(paramArrayOfByte, 0) ^ l1 * paramInt2;
        l2 ^= af.a(paramArrayOfByte, paramInt2 - 8);
        j = paramInt1;
        i = 0;
      }
      else
      {
        i = paramInt2;
        j = paramInt1;
        continue;
        l1 = paramArrayOfLong[0];
        l2 = paramArrayOfLong[1];
        i = paramInt2;
        j = paramInt1;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.k
 * JD-Core Version:    0.6.2
 */
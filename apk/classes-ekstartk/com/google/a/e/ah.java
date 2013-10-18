package com.google.a.e;

 enum ah
{
  ah()
  {
  }

  public final long a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[(paramInt + 7)];
    int j = paramArrayOfByte[(paramInt + 6)];
    int k = paramArrayOfByte[(paramInt + 5)];
    int m = paramArrayOfByte[(paramInt + 4)];
    int n = paramArrayOfByte[(paramInt + 3)];
    int i1 = paramArrayOfByte[(paramInt + 2)];
    int i2 = paramArrayOfByte[(paramInt + 1)];
    int i3 = paramArrayOfByte[paramInt];
    return (0xFF & i) << 56 | (0xFF & j) << 48 | (0xFF & k) << 40 | (0xFF & m) << 32 | (0xFF & n) << 24 | (0xFF & i1) << 16 | (0xFF & i2) << 8 | 0xFF & i3;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    long l = 255L;
    for (int i = 0; i < 8; i++)
    {
      paramArrayOfByte[(paramInt + i)] = ((byte)(int)((paramLong & l) >> i * 8));
      l <<= 8;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.ah
 * JD-Core Version:    0.6.2
 */
package com.google.a.e;

import sun.misc.Unsafe;

 enum al
{
  al()
  {
    super(str, 1, (byte)0);
  }

  public final long a(byte[] paramArrayOfByte, int paramInt)
  {
    return Long.reverseBytes(aj.b().getLong(paramArrayOfByte, paramInt + aj.a()));
  }

  public final void a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    long l = Long.reverseBytes(paramLong);
    aj.b().putLong(paramArrayOfByte, paramInt + aj.a(), l);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.al
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.q.a;

import java.io.InputStream;

public final class z
{
  private static final byte[] a;
  private static final byte[] b = { 90, -18, 3, -99, 14, -41, 106, -78, 116, 63, 54, 80, 40, -121, -32, -17 };
  private static final byte[] c = new byte[16];
  private final byte[] d = new byte[256];
  private int e;
  private int f;

  static
  {
    a = new byte[256];
    for (int i = 0; i < 256; i++)
      a[i] = ((byte)i);
  }

  public static void a(InputStream paramInputStream)
  {
    paramInputStream.read(c);
    paramInputStream.close();
  }

  public static byte[] a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, long paramLong)
  {
    byte[] arrayOfByte = new byte[40];
    for (int i = 0; i < b.length; i++)
      arrayOfByte[i] = ((byte)(47 * b[i] ^ c[i]));
    arrayOfByte[16] = ((byte)(paramInt1 >> 24));
    arrayOfByte[17] = ((byte)(paramInt1 >> 16));
    arrayOfByte[18] = ((byte)(paramInt1 >> 8));
    arrayOfByte[19] = ((byte)paramInt1);
    arrayOfByte[20] = ((byte)(paramInt2 >> 24));
    arrayOfByte[21] = ((byte)(paramInt2 >> 16));
    arrayOfByte[22] = ((byte)(paramInt2 >> 8));
    arrayOfByte[23] = ((byte)paramInt2);
    arrayOfByte[24] = ((byte)(paramInt3 >> 24));
    arrayOfByte[25] = ((byte)(paramInt3 >> 16));
    arrayOfByte[26] = ((byte)(paramInt3 >> 8));
    arrayOfByte[27] = ((byte)paramInt3);
    int j = paramInt4 & 0xFFFF;
    arrayOfByte[28] = ((byte)(j >> 8));
    arrayOfByte[29] = ((byte)j);
    int k = paramInt5 & 0xFFFF;
    arrayOfByte[30] = ((byte)(k >> 8));
    arrayOfByte[31] = ((byte)k);
    arrayOfByte[32] = ((byte)(int)(paramLong >> 56));
    arrayOfByte[33] = ((byte)(int)(paramLong >> 48));
    arrayOfByte[34] = ((byte)(int)(paramLong >> 40));
    arrayOfByte[35] = ((byte)(int)(paramLong >> 32));
    arrayOfByte[36] = ((byte)(int)(paramLong >> 24));
    arrayOfByte[37] = ((byte)(int)(paramLong >> 16));
    arrayOfByte[38] = ((byte)(int)(paramLong >> 8));
    arrayOfByte[39] = ((byte)(int)paramLong);
    return arrayOfByte;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    int i = 0;
    System.arraycopy(a, 0, this.d, 0, 256);
    int j = 0;
    for (int k = 0; k < 256; k++)
    {
      j = 0xFF & j + this.d[k] + paramArrayOfByte[(k % paramArrayOfByte.length)];
      int i2 = this.d[k];
      this.d[k] = this.d[j];
      this.d[j] = i2;
    }
    this.e = 0;
    this.f = 0;
    int m = this.e;
    int n = this.f;
    while (i < 256)
    {
      m = 0xFF & m + 1;
      n = 0xFF & n + this.d[m];
      int i1 = this.d[m];
      this.d[m] = this.d[n];
      this.d[n] = i1;
      i++;
    }
    this.e = m;
    this.f = n;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.e;
    int j = this.f;
    int k = 0;
    while (k < paramInt2)
    {
      i = 0xFF & i + 1;
      j = 0xFF & j + this.d[i];
      int m = this.d[i];
      int n = this.d[j];
      this.d[i] = n;
      this.d[j] = m;
      int i1 = paramInt1 + 1;
      paramArrayOfByte[paramInt1] = ((byte)(paramArrayOfByte[paramInt1] ^ this.d[(0xFF & m + n)]));
      k++;
      paramInt1 = i1;
    }
    this.e = i;
    this.f = j;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.z
 * JD-Core Version:    0.6.2
 */
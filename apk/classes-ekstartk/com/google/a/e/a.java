package com.google.a.e;

import com.google.a.a.an;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

abstract class a extends b
{
  private final ByteBuffer a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

  protected abstract void a(byte paramByte);

  protected void a(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  protected void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt1 + paramInt2; i++)
      a(paramArrayOfByte[i]);
  }

  public final aa b(byte[] paramArrayOfByte)
  {
    an.a(paramArrayOfByte);
    a(paramArrayOfByte);
    return this;
  }

  public final aa b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    an.a(paramInt1, paramInt1 + paramInt2, paramArrayOfByte.length);
    a(paramArrayOfByte, paramInt1, paramInt2);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.a
 * JD-Core Version:    0.6.2
 */
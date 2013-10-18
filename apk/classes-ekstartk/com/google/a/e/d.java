package com.google.a.e;

import java.io.IOException;

final class d extends b
{
  final e a = new e();

  d(c paramc)
  {
  }

  public final u a()
  {
    return this.b.a(this.a.a(), this.a.b());
  }

  public final aa b(byte[] paramArrayOfByte)
  {
    try
    {
      this.a.write(paramArrayOfByte);
      return this;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public final aa b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.d
 * JD-Core Version:    0.6.2
 */
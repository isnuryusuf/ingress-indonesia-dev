package com.google.a.e;

import com.google.a.a.an;
import java.io.OutputStream;

final class t extends OutputStream
{
  final at a;

  t(at paramat)
  {
    this.a = ((at)an.a(paramat));
  }

  public final String toString()
  {
    return "Funnels.asOutputStream(" + this.a + ")";
  }

  public final void write(int paramInt)
  {
    this.a.b((byte)paramInt);
  }

  public final void write(byte[] paramArrayOfByte)
  {
    this.a.c(paramArrayOfByte);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.c(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.t
 * JD-Core Version:    0.6.2
 */
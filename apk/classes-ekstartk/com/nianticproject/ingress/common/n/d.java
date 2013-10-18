package com.nianticproject.ingress.common.n;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class d extends FilterOutputStream
{
  private d(c paramc, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }

  public final void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      c.a(this.a);
    }
  }

  public final void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      c.a(this.a);
    }
  }

  public final void write(int paramInt)
  {
    try
    {
      this.out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      c.a(this.a);
    }
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
      c.a(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.n.d
 * JD-Core Version:    0.6.2
 */
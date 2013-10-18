package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.w;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

public final class ag extends FilterInputStream
{
  private ByteBuffer a = ByteBuffer.allocate(3000);
  private boolean b = false;

  protected ag(InputStream paramInputStream)
  {
    super(paramInputStream);
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    this.a.flip();
    localStringBuilder.append(w.c.decode(this.a).toString());
    if (this.b)
      localStringBuilder.append("...[truncated]");
    return localStringBuilder.toString();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if ((i > 0) && (!this.b))
    {
      int j = this.a.capacity() - this.a.position();
      if (j <= i)
        this.b = true;
      this.a.put(paramArrayOfByte, paramInt1, Math.min(i, j));
    }
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ag
 * JD-Core Version:    0.6.2
 */
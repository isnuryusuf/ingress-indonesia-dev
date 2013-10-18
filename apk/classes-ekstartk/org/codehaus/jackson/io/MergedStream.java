package org.codehaus.jackson.io;

import java.io.InputStream;

public final class MergedStream extends InputStream
{
  byte[] _buffer;
  protected final IOContext _context;
  final int _end;
  final InputStream _in;
  int _ptr;

  public MergedStream(IOContext paramIOContext, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this._context = paramIOContext;
    this._in = paramInputStream;
    this._buffer = paramArrayOfByte;
    this._ptr = paramInt1;
    this._end = paramInt2;
  }

  private void freeMergedBuffer()
  {
    byte[] arrayOfByte = this._buffer;
    if (arrayOfByte != null)
    {
      this._buffer = null;
      if (this._context != null)
        this._context.releaseReadIOBuffer(arrayOfByte);
    }
  }

  public final int available()
  {
    if (this._buffer != null)
      return this._end - this._ptr;
    return this._in.available();
  }

  public final void close()
  {
    freeMergedBuffer();
    this._in.close();
  }

  public final void mark(int paramInt)
  {
    if (this._buffer == null)
      this._in.mark(paramInt);
  }

  public final boolean markSupported()
  {
    return (this._buffer == null) && (this._in.markSupported());
  }

  public final int read()
  {
    if (this._buffer != null)
    {
      byte[] arrayOfByte = this._buffer;
      int i = this._ptr;
      this._ptr = (i + 1);
      int j = 0xFF & arrayOfByte[i];
      if (this._ptr >= this._end)
        freeMergedBuffer();
      return j;
    }
    return this._in.read();
  }

  public final int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this._buffer != null)
    {
      int i = this._end - this._ptr;
      if (paramInt2 > i)
        paramInt2 = i;
      System.arraycopy(this._buffer, this._ptr, paramArrayOfByte, paramInt1, paramInt2);
      this._ptr = (paramInt2 + this._ptr);
      if (this._ptr >= this._end)
        freeMergedBuffer();
      return paramInt2;
    }
    return this._in.read(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final void reset()
  {
    if (this._buffer == null)
      this._in.reset();
  }

  public final long skip(long paramLong)
  {
    long l;
    if (this._buffer != null)
    {
      int i = this._end - this._ptr;
      if (i > paramLong)
      {
        this._ptr += (int)paramLong;
        return paramLong;
      }
      freeMergedBuffer();
      l = 0L + i;
      paramLong -= i;
    }
    while (true)
    {
      if (paramLong > 0L)
        l += this._in.skip(paramLong);
      return l;
      l = 0L;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.MergedStream
 * JD-Core Version:    0.6.2
 */
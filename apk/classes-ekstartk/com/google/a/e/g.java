package com.google.a.e;

import com.google.a.a.an;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class g extends b
{
  private final ByteBuffer a;
  private final int b;
  private final int c;

  protected g(int paramInt)
  {
    this(paramInt, paramInt);
  }

  private g(int paramInt1, int paramInt2)
  {
    if (paramInt2 % paramInt1 == 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = ByteBuffer.allocate(paramInt2 + 7).order(ByteOrder.LITTLE_ENDIAN);
      this.b = paramInt2;
      this.c = paramInt1;
      return;
    }
  }

  private void c()
  {
    if (this.a.remaining() < 8)
      d();
  }

  private void d()
  {
    this.a.flip();
    while (this.a.remaining() >= this.c)
      a(this.a);
    this.a.compact();
  }

  public final u a()
  {
    d();
    this.a.flip();
    if (this.a.remaining() > 0)
      b(this.a);
    return b();
  }

  protected abstract void a(ByteBuffer paramByteBuffer);

  public final aa b(byte[] paramArrayOfByte)
  {
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public final aa b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2).order(ByteOrder.LITTLE_ENDIAN);
    if (localByteBuffer.remaining() <= this.a.remaining())
    {
      this.a.put(localByteBuffer);
      c();
      return this;
    }
    int i = this.b - this.a.position();
    for (int j = 0; j < i; j++)
      this.a.put(localByteBuffer.get());
    d();
    while (localByteBuffer.remaining() >= this.c)
      a(localByteBuffer);
    this.a.put(localByteBuffer);
    return this;
  }

  abstract u b();

  protected void b(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.position(paramByteBuffer.limit());
    paramByteBuffer.limit(7 + this.c);
    while (paramByteBuffer.position() < this.c)
      paramByteBuffer.putLong(0L);
    paramByteBuffer.limit(this.c);
    paramByteBuffer.flip();
    a(paramByteBuffer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.g
 * JD-Core Version:    0.6.2
 */
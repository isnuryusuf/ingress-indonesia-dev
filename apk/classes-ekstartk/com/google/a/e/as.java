package com.google.a.e;

import java.nio.ByteBuffer;

final class as extends g
{
  private int a;
  private int b;

  as(int paramInt)
  {
    super(4);
    this.a = paramInt;
    this.b = 0;
  }

  protected final void a(ByteBuffer paramByteBuffer)
  {
    int i = ar.a(paramByteBuffer.getInt());
    this.a = ar.a(this.a, i);
    this.b = (4 + this.b);
  }

  public final u b()
  {
    return ar.b(this.a, this.b);
  }

  protected final void b(ByteBuffer paramByteBuffer)
  {
    int i = 0;
    this.b += paramByteBuffer.remaining();
    int j = 0;
    while (paramByteBuffer.hasRemaining())
    {
      j ^= (0xFF & paramByteBuffer.get()) << i;
      i += 8;
    }
    this.a ^= ar.a(j);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.as
 * JD-Core Version:    0.6.2
 */
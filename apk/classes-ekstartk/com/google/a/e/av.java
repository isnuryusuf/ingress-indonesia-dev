package com.google.a.e;

import java.nio.ByteBuffer;

final class av extends g
{
  private final int a;
  private final int b;
  private long c = 8317987319222330741L;
  private long d = 7237128888997146477L;
  private long e = 7816392313619706465L;
  private long f = 8387220255154660723L;
  private long g = 0L;
  private long h = 0L;

  av(int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    super(8);
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = (paramLong1 ^ this.c);
    this.d = (paramLong2 ^ this.d);
    this.e = (paramLong1 ^ this.e);
    this.f = (paramLong2 ^ this.f);
  }

  private void a(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
    {
      this.c += this.d;
      this.e += this.f;
      this.d = Long.rotateLeft(this.d, 13);
      this.f = Long.rotateLeft(this.f, 16);
      this.d ^= this.c;
      this.f ^= this.e;
      this.c = Long.rotateLeft(this.c, 32);
      this.e += this.d;
      this.c += this.f;
      this.d = Long.rotateLeft(this.d, 17);
      this.f = Long.rotateLeft(this.f, 21);
      this.d ^= this.e;
      this.f ^= this.c;
      this.e = Long.rotateLeft(this.e, 32);
    }
  }

  private void a(long paramLong)
  {
    this.f = (paramLong ^ this.f);
    a(this.a);
    this.c = (paramLong ^ this.c);
  }

  protected final void a(ByteBuffer paramByteBuffer)
  {
    this.g = (8L + this.g);
    a(paramByteBuffer.getLong());
  }

  public final u b()
  {
    this.h ^= this.g << 56;
    a(this.h);
    this.e = (0xFF ^ this.e);
    a(this.b);
    return v.a(this.c ^ this.d ^ this.e ^ this.f);
  }

  protected final void b(ByteBuffer paramByteBuffer)
  {
    this.g += paramByteBuffer.remaining();
    for (int i = 0; paramByteBuffer.hasRemaining(); i += 8)
      this.h ^= (0xFF & paramByteBuffer.get()) << i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.av
 * JD-Core Version:    0.6.2
 */
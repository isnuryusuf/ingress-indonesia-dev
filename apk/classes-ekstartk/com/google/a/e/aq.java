package com.google.a.e;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class aq extends g
{
  private long a;
  private long b;
  private int c;

  aq(int paramInt)
  {
    super(16);
    this.a = paramInt;
    this.b = paramInt;
    this.c = 0;
  }

  private static long a(long paramLong)
  {
    long l1 = -49064778989728563L * (paramLong ^ paramLong >>> 33);
    long l2 = -4265267296055464877L * (l1 ^ l1 >>> 33);
    return l2 ^ l2 >>> 33;
  }

  private static long b(long paramLong)
  {
    return 5545529020109919103L * Long.rotateLeft(-8663945395140668459L * paramLong, 31);
  }

  private static long c(long paramLong)
  {
    return -8663945395140668459L * Long.rotateLeft(5545529020109919103L * paramLong, 33);
  }

  protected final void a(ByteBuffer paramByteBuffer)
  {
    long l1 = paramByteBuffer.getLong();
    long l2 = paramByteBuffer.getLong();
    this.a ^= b(l1);
    this.a = Long.rotateLeft(this.a, 27);
    this.a += this.b;
    this.a = (1390208809L + 5L * this.a);
    this.b ^= c(l2);
    this.b = Long.rotateLeft(this.b, 31);
    this.b += this.a;
    this.b = (944331445L + 5L * this.b);
    this.c = (16 + this.c);
  }

  public final u b()
  {
    this.a ^= this.c;
    this.b ^= this.c;
    this.a += this.b;
    this.b += this.a;
    this.a = a(this.a);
    this.b = a(this.b);
    this.a += this.b;
    this.b += this.a;
    return v.b(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.a).putLong(this.b).array());
  }

  protected final void b(ByteBuffer paramByteBuffer)
  {
    this.c += paramByteBuffer.remaining();
    long l14;
    long l13;
    label139: long l12;
    label158: long l11;
    label177: long l10;
    label196: long l9;
    label215: long l3;
    label231: long l2;
    label239: long l8;
    label286: long l7;
    label304: long l6;
    label322: long l5;
    label340: long l4;
    switch (paramByteBuffer.remaining())
    {
    default:
      throw new AssertionError("Should never get here.");
    case 15:
      l14 = 0L ^ (0xFF & paramByteBuffer.get(14)) << 48;
      l13 = l14 ^ (0xFF & paramByteBuffer.get(13)) << 40;
      l12 = l13 ^ (0xFF & paramByteBuffer.get(12)) << 32;
      l11 = l12 ^ (0xFF & paramByteBuffer.get(11)) << 24;
      l10 = l11 ^ (0xFF & paramByteBuffer.get(10)) << 16;
      l9 = l10 ^ (0xFF & paramByteBuffer.get(9)) << 8;
      l3 = l9 ^ 0xFF & paramByteBuffer.get(8);
      l2 = 0L ^ paramByteBuffer.getLong();
      this.a ^= b(l2);
      this.b ^= c(l3);
      return;
    case 7:
      l8 = 0L ^ (0xFF & paramByteBuffer.get(6)) << 48;
      l7 = l8 ^ (0xFF & paramByteBuffer.get(5)) << 40;
      l6 = l7 ^ (0xFF & paramByteBuffer.get(4)) << 32;
      l5 = l6 ^ (0xFF & paramByteBuffer.get(3)) << 24;
      l4 = l5 ^ (0xFF & paramByteBuffer.get(2)) << 16;
    case 14:
    case 13:
    case 12:
    case 11:
    case 10:
    case 9:
    case 8:
    case 6:
    case 5:
    case 4:
    case 3:
    case 2:
    case 1:
    }
    label358: for (long l1 = l4 ^ (0xFF & paramByteBuffer.get(1)) << 8; ; l1 = 0L)
    {
      l2 = l1 ^ 0xFF & paramByteBuffer.get(0);
      l3 = 0L;
      break label239;
      l14 = 0L;
      break;
      l13 = 0L;
      break label139;
      l12 = 0L;
      break label158;
      l11 = 0L;
      break label177;
      l10 = 0L;
      break label196;
      l9 = 0L;
      break label215;
      l3 = 0L;
      break label231;
      l8 = 0L;
      break label286;
      l7 = 0L;
      break label304;
      l6 = 0L;
      break label322;
      l5 = 0L;
      break label340;
      l4 = 0L;
      break label358;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.aq
 * JD-Core Version:    0.6.2
 */
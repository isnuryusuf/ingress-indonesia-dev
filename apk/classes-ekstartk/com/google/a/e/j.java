package com.google.a.e;

import com.google.a.a.an;

final class j extends c
{
  private static final n b;
  private final long[] a = null;

  static
  {
    if (af.a());
    for (k localk = k.a; ; localk = k.b)
    {
      b = localk;
      return;
    }
  }

  private static long b(long paramLong1, long paramLong2)
  {
    long l1 = -4132994306676758123L * (paramLong2 ^ paramLong1);
    long l2 = -4132994306676758123L * (paramLong1 ^ (l1 ^ l1 >>> 47));
    return -4132994306676758123L * (l2 ^ l2 >>> 47);
  }

  public final u a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, paramArrayOfByte.length);
  }

  public final u a(byte[] paramArrayOfByte, int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(0);
    an.a(true, "offset (%s) cannot be negative", arrayOfObject1);
    boolean bool1;
    if (paramInt >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      an.a(bool1, "length (%s) cannot be negative", arrayOfObject2);
      if (paramInt + 0 > paramArrayOfByte.length)
        break label122;
    }
    label122: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(0);
      arrayOfObject3[1] = Integer.valueOf(paramInt);
      arrayOfObject3[2] = Integer.valueOf(paramArrayOfByte.length);
      an.a(bool2, "offset (%s) + length (%s) cannot be greater than the byte array length (%s)", arrayOfObject3);
      return b.a(paramArrayOfByte, 0, paramInt, this.a);
      bool1 = false;
      break;
    }
  }

  public final String toString()
  {
    return "Hashing.cityHash128()";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.j
 * JD-Core Version:    0.6.2
 */
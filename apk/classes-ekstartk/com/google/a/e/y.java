package com.google.a.e;

import java.io.Serializable;

final class y extends u
  implements Serializable
{
  final long a;

  y(long paramLong)
  {
    this.a = paramLong;
  }

  public final int a()
  {
    return (int)this.a;
  }

  public final byte[] b()
  {
    byte[] arrayOfByte = new byte[8];
    arrayOfByte[0] = ((byte)(int)this.a);
    arrayOfByte[1] = ((byte)(int)(this.a >> 8));
    arrayOfByte[2] = ((byte)(int)(this.a >> 16));
    arrayOfByte[3] = ((byte)(int)(this.a >> 24));
    arrayOfByte[4] = ((byte)(int)(this.a >> 32));
    arrayOfByte[5] = ((byte)(int)(this.a >> 40));
    arrayOfByte[6] = ((byte)(int)(this.a >> 48));
    arrayOfByte[7] = ((byte)(int)(this.a >> 56));
    return arrayOfByte;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.y
 * JD-Core Version:    0.6.2
 */
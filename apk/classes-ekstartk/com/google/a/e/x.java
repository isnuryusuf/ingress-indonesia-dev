package com.google.a.e;

import java.io.Serializable;

final class x extends u
  implements Serializable
{
  final int a;

  x(int paramInt)
  {
    this.a = paramInt;
  }

  public final int a()
  {
    return this.a;
  }

  public final byte[] b()
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)this.a);
    arrayOfByte[1] = ((byte)(this.a >> 8));
    arrayOfByte[2] = ((byte)(this.a >> 16));
    arrayOfByte[3] = ((byte)(this.a >> 24));
    return arrayOfByte;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.x
 * JD-Core Version:    0.6.2
 */
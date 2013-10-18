package com.nianticproject.ingress.shared.a;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.aj;
import java.util.Arrays;

public final class c
  implements a
{
  private final e a;
  private final d b;
  private final byte[] c = new byte[256];
  private final byte[] d = new byte[256];

  public c(e parame, d paramd)
  {
    this.a = parame;
    this.b = paramd;
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    int i = 0;
    byte[] arrayOfByte;
    try
    {
      aj.a("ClientDesBlockCipher.encrypt");
      an.a(this.a);
      int j = 256 - (0xFF & paramArrayOfByte.length);
      arrayOfByte = new byte[j + paramArrayOfByte.length];
      int k = -256 + arrayOfByte.length;
      if (i < arrayOfByte.length)
      {
        if (i != k)
          System.arraycopy(paramArrayOfByte, i, this.c, 0, 256);
        while (true)
        {
          this.a.a(this.c, this.d);
          System.arraycopy(this.d, 0, arrayOfByte, i, 256);
          i += 256;
          break;
          System.arraycopy(paramArrayOfByte, i, this.c, 0, paramArrayOfByte.length - k);
          Arrays.fill(this.c, paramArrayOfByte.length - k, 256, (byte)0);
          this.c['ÿ'] = ((byte)(j & 0xFF));
        }
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
    return arrayOfByte;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.a.c
 * JD-Core Version:    0.6.2
 */